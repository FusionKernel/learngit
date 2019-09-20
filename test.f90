program ex0717
implicit none
    integer :: sizee,error=0
    integer,parameter :: one_mb=1024*1024
    character,allocatable :: a(:)

    allocate(a(1),stat=error)
    do while(error==0)
        deallocate(a)
        sizee=sizee+one_mb
        allocate(a(sizee),stat=error)
        !write(*,*) error
    end do
    write(*,"('Allocate ',I10,' bytes')")sizee
    write(*,"(F10.3,' GB used')")real(sizee/one_mb)/1024.0
    stop
end