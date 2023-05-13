! Main

subroutine ccsd_par_t_space_v3(nO,nV,t1,t2,f_o,f_v,v_vvvo,v_vvoo,v_vooo,energy)

  implicit none

  integer, intent(in)           :: nO,nV
  double precision, intent(in)  :: t1(nO,nV), f_o(nO), f_v(nV)
  double precision, intent(in)  :: t2(nO,nO,nV,nV)
  double precision, intent(in)  :: v_vvvo(nV,nV,nV,nO), v_vvoo(nV,nV,nO,nO), v_vooo(nV,nO,nO,nO)
  double precision, intent(out) :: energy

  double precision, allocatable :: W(:,:,:,:,:,:)
  double precision, allocatable :: V(:,:,:,:,:,:)
  double precision, allocatable :: W_abc(:,:,:), V_abc(:,:,:)
  double precision, allocatable :: W_cab(:,:,:), W_cba(:,:,:)
  double precision, allocatable :: W_bca(:,:,:), V_cba(:,:,:)
  double precision, allocatable :: X_vovv(:,:,:,:), X_ooov(:,:,:,:), X_oovv(:,:,:,:)
  double precision, allocatable :: T_voov(:,:,:,:), T_oovv(:,:,:,:)
  integer                       :: i,j,k,l,a,b,c,d
  double precision              :: e,ta,tb, delta, delta_abc

  !allocate(W(nV,nV,nV,nO,nO,nO))
  !allocate(V(nV,nV,nV,nO,nO,nO))
  allocate(W_abc(nO,nO,nO), V_abc(nO,nO,nO), W_cab(nO,nO,nO))
  allocate(W_bca(nO,nO,nO), V_cba(nO,nO,nO), W_cba(nO,nO,nO))
  allocate(X_vovv(nV,nO,nV,nV), X_ooov(nO,nO,nO,nV), X_oovv(nO,nO,nV,nV))
  allocate(T_voov(nV,nO,nO,nV),T_oovv(nO,nO,nV,nV))

  ! Temporary arrays
  !$OMP PARALLEL &
  !$OMP SHARED(nO,nV,T_voov,T_oovv,X_vovv,X_ooov,X_oovv, &
  !$OMP t1,t2,v_vvvo,v_vooo,v_vvoo) &
  !$OMP PRIVATE(a,b,c,d,i,j,k,l) &
  !$OMP DEFAULT(NONE)

  !v_vvvo(b,a,d,i) * t2(k,j,c,d) &
  !X_vovv(d,i,b,a,i) * T_voov(d,j,c,k)

  !$OMP DO collapse(3)
  do i = 1, nO
    do a = 1, nV
      do b = 1, nV
        do d = 1, nV
          X_vovv(d,i,b,a) = v_vvvo(b,a,d,i)
        enddo
      enddo
    enddo
  enddo
  !$OMP END DO nowait

  !$OMP DO collapse(3)
  do j = 1, nO
    do k = 1, nO
      do c = 1, nV
        do d = 1, nV
          T_voov(d,k,j,c) = t2(k,j,c,d)
        enddo
      enddo
    enddo
  enddo
  !$OMP END DO nowait

  !v_vooo(c,j,k,l) * t2(i,l,a,b) &
  !X_ooov(l,j,k,c) * T_oovv(l,i,a,b) &

  !$OMP DO collapse(3)
  do c = 1, nV
    do k = 1, nO
      do j = 1, nO
        do l = 1, nO
           X_ooov(l,j,k,c) = v_vooo(c,j,k,l)
        enddo
      enddo
    enddo
  enddo
  !$OMP END DO nowait

  !$OMP DO collapse(3)
  do i = 1, nO
    do b = 1, nV
      do a = 1, nV
        do l = 1, nO
          T_oovv(l,i,a,b) = t2(i,l,a,b)
        enddo
      enddo
    enddo
  enddo
  !$OMP END DO nowait

  !X_oovv(j,k,b,c) * T1_vo(a,i) &

  !$OMP DO collapse(3)
  do c = 1, nV
    do b = 1, nV
      do j = 1, nO
        do k = 1, nO
          X_oovv(j,k,b,c) = v_vvoo(b,c,j,k)
        enddo
      enddo
    enddo
  enddo
  !$OMP END DO nowait

  !$OMP END PARALLEL

  call wall_time(ta)
  energy = 0d0
  do c = 1, nV
    do b = 1, nV
      do a = 1, nV
        delta_abc = f_v(a) + f_v(b) + f_v(c)
        call form_w_abc(nO,nV,a,b,c,T_voov,T_oovv,X_vovv,X_ooov,W_abc)
        call form_w_abc(nO,nV,b,c,a,T_voov,T_oovv,X_vovv,X_ooov,W_bca)
        call form_w_abc(nO,nV,c,a,b,T_voov,T_oovv,X_vovv,X_ooov,W_cab)
        call form_w_abc(nO,nV,c,b,a,T_voov,T_oovv,X_vovv,X_ooov,W_cba)

        call form_v_abc(nO,nV,a,b,c,t1,X_oovv,W_abc,V_abc)
        call form_v_abc(nO,nV,c,b,a,t1,X_oovv,W_cba,V_cba)
        !$OMP PARALLEL                                               &
            !$OMP SHARED(energy,nO,a,b,c,W_abc,W_cab,W_bca,V_abc,V_cba,f_o,f_v,delta_abc)&
            !$OMP PRIVATE(i,j,k,e,delta)                             &
            !$OMP DEFAULT(NONE)
        e = 0d0
        !$OMP DO
        do i = 1, nO
          do j = 1, nO
            do k = 1, nO
              delta = 1d0 / (f_o(i) + f_o(j) + f_o(k) - delta_abc)
              !energy = energy + (4d0 * W(i,j,k,a,b,c) + W(i,j,k,b,c,a) + W(i,j,k,c,a,b)) * (V(i,j,k,a,b,c) - V(i,j,k,c,b,a)) / (cc_space_f_o(i) + cc_space_f_o(j) + cc_space_f_o(k) - cc_space_f_v(a) - cc_space_f_v(b) - cc_space_f_v(c))  !delta_ooovvv(i,j,k,a,b,c)
              e = e + (4d0 * W_abc(i,j,k) + W_bca(i,j,k) + W_cab(i,j,k))&
                  * (V_abc(i,j,k) - V_cba(i,j,k)) * delta
            enddo
          enddo
        enddo
        !$OMP END DO NOWAIT
        !$OMP CRITICAL
        energy = energy + e
        !$OMP END CRITICAL
        !$OMP END PARALLEL
      enddo
    enddo
    call wall_time(tb)
    write(*,'(F12.2,A5,F12.2,A2)') dble(i)/dble(nO)*100d0, '% in ', tb - ta, ' s'
  enddo

  energy = energy / 3d0

  deallocate(W_abc,V_abc,W_cab,V_cba,W_bca,X_vovv,X_ooov,T_voov,T_oovv)
  !deallocate(V,W)
end


subroutine form_w_abc(nO,nV,a,b,c,T_voov,T_oovv,X_vovv,X_ooov,W_abc)

  implicit none

  integer, intent(in)           :: nO,nV,a,b,c
  !double precision, intent(in) :: t2(nO,nO,nV,nV)
  double precision, intent(in)  :: T_voov(nV,nO,nO,nV), T_oovv(nO,nO,nV,nV)
  double precision, intent(in)  :: X_vovv(nV,nO,nV,nV), X_ooov(nO,nO,nO,nV)
  double precision, intent(out) :: W_abc(nO,nO,nO)

  integer :: l,i,j,k,d


  !$OMP PARALLEL &
  !$OMP SHARED(nO,nV,a,b,c,T_voov,T_oovv,X_vovv,X_ooov,W_abc) &
  !$OMP PRIVATE(i,j,k,d,l) &
  !$OMP DEFAULT(NONE)

  !$OMP DO collapse(3)
  do k = 1, nO
    do j = 1, nO
      do i = 1, nO
        W_abc(i,j,k) = 0.d0

        do d = 1, nV
          W_abc(i,j,k) = W_abc(i,j,k) &
                 + X_vovv(d,i,b,a) * T_voov(d,k,j,c) &
                 + X_vovv(d,i,c,a) * T_voov(d,j,k,b) &
                 + X_vovv(d,k,a,c) * T_voov(d,j,i,b) &
                 + X_vovv(d,k,b,c) * T_voov(d,i,j,a) &
                 + X_vovv(d,j,c,b) * T_voov(d,i,k,a) &
                 + X_vovv(d,j,a,b) * T_voov(d,k,i,c)

        enddo

        do l = 1, nO
          W_abc(i,j,k) = W_abc(i,j,k) &
              - T_oovv(l,i,a,b) * X_ooov(l,j,k,c) &
              - T_oovv(l,i,a,c) * X_ooov(l,k,j,b) & ! bc kj
              - T_oovv(l,k,c,a) * X_ooov(l,i,j,b) & ! prev ac ik
              - T_oovv(l,k,c,b) * X_ooov(l,j,i,a) & ! prev ab ij
              - T_oovv(l,j,b,c) * X_ooov(l,k,i,a) & ! prev bc kj
              - T_oovv(l,j,b,a) * X_ooov(l,i,k,c) ! prev ac ik
        enddo

      enddo
    enddo
  enddo
  !$OMP END DO
  !$OMP END PARALLEL


end


! V_abc

subroutine form_v_abc(nO,nV,a,b,c,T_ov,X_oovv,W,V)

implicit none

  integer, intent(in)           :: nO,nV,a,b,c
  !double precision, intent(in)  :: t1(nO,nV)
  double precision, intent(in)  :: T_ov(nO,nV)
  double precision, intent(in)  :: X_oovv(nO,nO,nV,nV)
  double precision, intent(in)  :: W(nO,nO,nO)
  double precision, intent(out) :: V(nO,nO,nO)

  integer :: i,j,k

  !$OMP PARALLEL &
  !$OMP SHARED(nO,nV,a,b,c,T_ov,X_oovv,W,V) &
  !$OMP PRIVATE(i,j,k) &
  !$OMP DEFAULT(NONE)
  !$OMP DO collapse(2)
  do k = 1, nO
    do j = 1, nO
      do i = 1, nO
        !V(i,j,k,a,b,c) = V(i,j,k,a,b,c) + W(i,j,k,a,b,c) &
        V(i,j,k) = W(i,j,k) &
           + X_oovv(j,k,b,c) * T_ov(i,a) &
           + X_oovv(i,k,a,c) * T_ov(j,b) &
           + X_oovv(i,j,a,b) * T_ov(k,c)
      enddo
    enddo
  enddo
  !$OMP END DO
  !$OMP END PARALLEL

end
