
subroutine write_tc_energy()

  implicit none
  integer          :: i, j, k
  double precision :: hmono, htwoe, hthree, htot
  double precision :: E_TC, O_TC

  do k = 1, n_states

    E_TC = 0.d0
    do i = 1, N_det
      do j = 1, N_det
        !htot = htilde_matrix_elmt_bi_ortho(i,j)
        call htilde_mu_mat_bi_ortho(psi_det(1,1,i), psi_det(1,1,j), N_int, hmono, htwoe, hthree, htot)
        E_TC = E_TC + psi_l_coef_bi_ortho(i,k) * psi_r_coef_bi_ortho(j,k) * htot
      enddo
    enddo

    O_TC = 0.d0
    do i = 1, N_det
      O_TC = O_TC + psi_l_coef_bi_ortho(i,k) * psi_r_coef_bi_ortho(i,k)
    enddo

    print *, ' state :', k
    print *, " E_TC = ", E_TC / O_TC
    print *, " O_TC = ", O_TC

  enddo

end

