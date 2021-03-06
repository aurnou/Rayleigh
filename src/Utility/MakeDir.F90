Module MakeDir

    Implicit None

Contains 

    !Wrapper to C routine that calls mkdir.
    !System calls are often inaccessible through Fortran, but not through C.
    Subroutine Make_Directory(dirname, ecode)
        character(*), Intent(In) :: dirname
        Integer, Intent(Out) :: ecode
        Integer :: cmkdir
        ecode = cmkdir(Trim(dirname)//char(0))
    End Subroutine Make_Directory

End Module MakeDir
