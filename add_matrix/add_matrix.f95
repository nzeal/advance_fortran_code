program add_matrix
	!implicit none

	integer :: i, j
	INTEGER, PARAMETER :: n=3, m=3
	real, dimension(n,m) :: a, b,c

!----Computing time in second------!
	 real time1
     real time2
     real ttime
     call cpu_time(time1)

	write(*,*) 'type the number 9 times for matrix A'
	do i = 1, n
	read(*,*)(a(i,j),j= 1,m)
	end do 
	write(*,*) 'Print matrix A'
	do i = 1, n
	print *, (a(i,j),j= 1,m)
	end do 


	write(*,*) 'type the number 9 times for matrix B'
	do i = 1, n
	read(*,*)(b(i,j),j= 1,m)
	end do 
	write(*,*) 'Print matrix B'
	do i = 1, n
	print *, (b(i,j),j= 1,m)
	end do 

	write(*,*) 'Sum C = matrix A + B'
	do i = 1, n
		do j = 1, m
		c(i,j) = a(i, j) + b(i, j)
		end do 
	end do 

	do i = 1, n
		write(*,*)(c(i,j),j= 1, m)
	end do 

!----Computing time in second------!
	call cpu_time( time2 )
    ttime = time2 - time1
    PRINT *, 'Elapsed time ', ttime ,' s' 

end program add_matrix

! I believe in open source do not bother to credit me 
! Because I also leant from others 
! If you find useful then just enjoy.