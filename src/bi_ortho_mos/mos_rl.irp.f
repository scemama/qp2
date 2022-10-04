subroutine ao_to_mo_bi_ortho(A_ao, LDA_ao, A_mo, LDA_mo)

  BEGIN_DOC
  ! Transform A from the |AO| basis to the BI ORTHONORMAL MOS 
  !
  ! $C_L^\dagger.A_{ao}.C_R$ where C_L and C_R are the LEFT and RIGHT MO coefs
  END_DOC

  implicit none
  integer, intent(in)           :: LDA_ao,LDA_mo
  double precision, intent(in)  :: A_ao(LDA_ao,ao_num)
  double precision, intent(out) :: A_mo(LDA_mo,mo_num)
  double precision, allocatable :: T(:,:)

  allocate ( T(ao_num,mo_num) )
  !DIR$ ATTRIBUTES ALIGN : $IRP_ALIGN :: T
  integer :: i,j,p,q

  call dgemm('N', 'N', ao_num, mo_num, ao_num,  &
      1.d0, A_ao, LDA_ao,                       &
      mo_r_coef, size(mo_r_coef, 1),            &
      0.d0, T, size(T, 1))

  call dgemm('T', 'N', mo_num, mo_num, ao_num, &
      1.d0, mo_l_coef, size(mo_l_coef, 1),     &
      T, ao_num,                               &
      0.d0, A_mo, size(A_mo, 1))

!  call restore_symmetry(mo_num,mo_num,A_mo,size(A_mo,1),1.d-12)
 deallocate(T)

end subroutine ao_to_mo_bi_ortho

! ---

BEGIN_PROVIDER [ double precision, mo_r_coef, (ao_num, mo_num) ]

  BEGIN_DOC
  !
  ! Molecular right-orbital coefficients on |AO| basis set
  !
  END_DOC

  implicit none
  integer :: i, j
  logical :: exists

  PROVIDE ezfio_filename

  if (mpi_master) then
    call ezfio_has_bi_ortho_mos_mo_r_coef(exists)
  endif
  IRP_IF MPI_DEBUG
    print *,  irp_here, mpi_rank
    call MPI_BARRIER(MPI_COMM_WORLD, ierr)
  IRP_ENDIF
  IRP_IF MPI
    include 'mpif.h'
    integer :: ierr
    call MPI_BCAST(exists, 1, MPI_LOGICAL, 0, MPI_COMM_WORLD, ierr)
    if (ierr /= MPI_SUCCESS) then
      stop 'Unable to read mo_r_coef with MPI'
    endif
  IRP_ENDIF

  if (exists) then
    if (mpi_master) then
      call ezfio_get_bi_ortho_mos_mo_r_coef(mo_r_coef)
      write(*,*) 'Read mo_r_coef'
    endif
    IRP_IF MPI
      call MPI_BCAST(mo_r_coef, mo_num*ao_num, MPI_DOUBLE_PRECISION, 0, MPI_COMM_WORLD, ierr)
      if (ierr /= MPI_SUCCESS) then
        stop 'Unable to read mo_r_coef with MPI'
      endif
    IRP_ENDIF
  else

    print*, 'mo_r_coef are mo_coef'
    do i = 1, mo_num
      do j = 1, ao_num
        mo_r_coef(j,i) = mo_coef(j,i)
      enddo
    enddo
  endif

END_PROVIDER

! ---

BEGIN_PROVIDER [ double precision, mo_l_coef, (ao_num, mo_num) ]

  BEGIN_DOC
  !
  ! Molecular left-orbital coefficients on |AO| basis set
  !
  END_DOC

  implicit none
  integer :: i, j
  logical :: exists

  PROVIDE ezfio_filename

  if (mpi_master) then
    call ezfio_has_bi_ortho_mos_mo_l_coef(exists)
  endif
  IRP_IF MPI_DEBUG
    print *,  irp_here, mpi_rank
    call MPI_BARRIER(MPI_COMM_WORLD, ierr)
  IRP_ENDIF
  IRP_IF MPI
    include 'mpif.h'
    integer :: ierr
    call MPI_BCAST(exists, 1, MPI_LOGICAL, 0, MPI_COMM_WORLD, ierr)
    if (ierr /= MPI_SUCCESS) then
      stop 'Unable to read mo_l_coef with MPI'
    endif
  IRP_ENDIF

  if (exists) then
    if (mpi_master) then
      call ezfio_get_bi_ortho_mos_mo_l_coef(mo_l_coef)
      write(*,*) 'Read mo_l_coef'
    endif
    IRP_IF MPI
      call MPI_BCAST(mo_l_coef, mo_num*ao_num, MPI_DOUBLE_PRECISION, 0, MPI_COMM_WORLD, ierr)
      if (ierr /= MPI_SUCCESS) then
        stop 'Unable to read mo_l_coef with MPI'
      endif
    IRP_ENDIF
  else

    print*, 'mo_r_coef are mo_coef'
    do i = 1, mo_num
      do j = 1, ao_num
        mo_l_coef(j,i) = mo_coef(j,i)
      enddo
    enddo
  endif

END_PROVIDER

! ---

BEGIN_PROVIDER [ double precision, mo_r_coef_transp, (mo_num, ao_num)]

  implicit none
  integer :: j, m
  do j = 1, mo_num
    do m = 1, ao_num
      mo_r_coef_transp(j,m) = mo_r_coef(m,j)
    enddo
  enddo

END_PROVIDER 

! ---

BEGIN_PROVIDER [ double precision, mo_l_coef_transp, (mo_num, ao_num)]

  implicit none
  integer :: j, m
  do j = 1, mo_num
    do m = 1, ao_num
      mo_l_coef_transp(j,m) = mo_l_coef(m,j)
    enddo
  enddo

END_PROVIDER 

! ---
