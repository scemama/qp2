program test_tc_fock
 implicit none
  BEGIN_DOC
! TODO : Put the documentation of the program here
  END_DOC
  print *, 'Hello world'
  my_grid_becke = .True.
  my_n_pt_r_grid = 30
  my_n_pt_a_grid = 50
  read_wf = .True.
  touch read_wf
  touch  my_grid_becke my_n_pt_r_grid my_n_pt_a_grid

  !call routine_1
  !call routine_2
  call routine_3()

end

! ---

subroutine routine_0
 implicit none
  use bitmasks ! you need to include the bitmasks_module.f90 features
 integer :: i,a,j,m,i_ok
 integer :: exc(0:2,2,2),h1,p1,s1,h2,p2,s2,degree

 integer(bit_kind), allocatable :: det_i(:,:)
 double precision :: hmono,htwoe,hthree,htilde_ij,phase
 double precision :: same, op, tot, accu
 allocate(det_i(N_int,2))
 s1 = 1
 accu = 0.d0
 do i = 1, elec_alpha_num ! occupied
  do a = elec_alpha_num+1, mo_num ! virtual 
    det_i = ref_bitmask
    call do_single_excitation(det_i,i,a,s1,i_ok)
    if(i_ok == -1)then
     print*,'PB !!'
     print*,i,a
     stop
    endif
!    call debug_det(det_i,N_int)
    call get_excitation(ref_bitmask,det_i,exc,degree,phase,N_int)
    call htilde_mu_mat_bi_ortho(det_i,ref_bitmask,N_int,hmono,htwoe,hthree,htilde_ij)
    op   = fock_3_mat_a_op_sh_bi_orth(a,i)
    same = fock_3_mat_a_sa_sh_bi_orth(a,i)
!    same = 0.d0
    tot = same + op
    if(dabs(tot - phase*hthree).gt.1.d-10)then
     print*,'------'
     print*,i,a,phase
     print*,'hthree = ',phase*hthree
     print*,'fock   = ',tot
     print*,'same,op= ',same,op
     print*,dabs(tot - phase*hthree)
     stop
    endif
    accu += dabs(tot - phase*hthree)
  enddo
 enddo
 print*,'accu = ',accu

end subroutine routine_0

! ---

subroutine routine_1

  implicit none
  integer          :: i, a
  double precision :: accu

  accu = 0.d0
  do i = 1, mo_num
    do a = 1, mo_num
      accu += dabs( fock_3_mat_a_op_sh_bi_orth_old(a,i) - fock_3_mat_a_op_sh_bi_orth(a,i) )
      !if(dabs( fock_3_mat_a_op_sh_bi_orth_old(a,i) - fock_3_mat_a_op_sh_bi_orth(a,i) ) .gt. 1.d-10)then
        print*, i, a
        print*, dabs( fock_3_mat_a_op_sh_bi_orth_old(a,i) - fock_3_mat_a_op_sh_bi_orth(a,i) ) &
              , fock_3_mat_a_op_sh_bi_orth_old(a,i), fock_3_mat_a_op_sh_bi_orth(a,i)
      !endif
    enddo
  enddo

  print *, 'accu = ', accu

end subroutine routine_1

! ---

subroutine routine_2

  implicit none
  integer          :: i, a
  double precision :: accu

  accu = 0.d0
  do i = 1, mo_num
    do a = 1, mo_num
      accu += dabs( fock_3_mat_a_sa_sh_bi_orth_old(a,i) - fock_3_mat_a_sa_sh_bi_orth(a,i) )
      !if(dabs( fock_3_mat_a_sa_sh_bi_orth_old(a,i) - fock_3_mat_a_sa_sh_bi_orth(a,i) ) .gt. 1.d-10)then
        print*, i, a
        print*, dabs( fock_3_mat_a_sa_sh_bi_orth_old(a,i) - fock_3_mat_a_sa_sh_bi_orth(a,i) ) &
              , fock_3_mat_a_sa_sh_bi_orth_old(a,i), fock_3_mat_a_sa_sh_bi_orth(a,i)
      !endif
    enddo
  enddo

  print *, 'accu = ', accu

end subroutine routine_2

! ---

subroutine routine_3()

  use bitmasks ! you need to include the bitmasks_module.f90 features

  implicit none
  integer                        :: i, a, i_ok, s1
  double precision               :: hmono, htwoe, hthree, htilde_ij
  double precision               :: err_ai, err_tot, ref, new
  integer(bit_kind), allocatable :: det_i(:,:)

  allocate(det_i(N_int,2))

  err_tot = 0.d0
 
  do s1 = 1, 2

   det_i = ref_bitmask
   call debug_det(det_i, N_int)
   print*, ' HF det'
   call debug_det(det_i, N_int)
 
   do i = 1, elec_num_tab(s1)
     do a = elec_num_tab(s1)+1, mo_num ! virtual 
 
 
       det_i = ref_bitmask
       call do_single_excitation(det_i, i, a, s1, i_ok)
       if(i_ok == -1) then
        print*, 'PB !!'
        print*, i, a
        stop
       endif
       !print*, ' excited det'
       !call debug_det(det_i, N_int)
 
       call htilde_mu_mat_bi_ortho(det_i, ref_bitmask, N_int, hmono, htwoe, hthree, htilde_ij)
       if(dabs(hthree).lt.1.d-10)cycle
       ref = hthree 
       if(s1 == 1)then
        new = fock_a_tot_3e_bi_orth(a,i)
       else if(s1 == 2)then
        new = fock_b_tot_3e_bi_orth(a,i)
       endif
       err_ai = dabs(dabs(ref) - dabs(new))
       if(err_ai .gt. 1d-7) then
         print*,'s1 = ',s1
         print*, ' warning on', i, a
         print*, ref,new,err_ai
       endif
       print*, ref,new,err_ai
       err_tot += err_ai
 
       write(22, *) htilde_ij
     enddo
   enddo
  enddo

  print *, ' err_tot = ', err_tot

  deallocate(det_i)

end subroutine routine_3

! ---