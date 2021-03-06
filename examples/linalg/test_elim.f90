program test_elim
  integer, parameter :: n = 5
  integer :: ipiv(n)
  double precision :: A(n, n), b(n)
  integer :: i, info
  b = 1_8
  A = 0_8
  do i = 1, n
      A(i, i) = 2.0_8
      if (i > 1) A(i, i-1) = -1.0_8
      if (i < n) A(i, i+1) = -1.0_8
  end do
  print *, 'A before solve:'
  print '(5f8.4)', A
  print *, 'b before solve:'
  print '(5f8.4)', b
  call dgesv(n, 1, A, n, ipiv, b, n, info)
  print *, 'A before solve:'
  print '(5f8.4)', A
  print *, 'b after solve:'
  print '(5f8.4)', b
end program test_elim
