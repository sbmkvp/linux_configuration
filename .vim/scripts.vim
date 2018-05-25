if did_filetype()
    finish
endif
if getline(1) =~# '^#!.*/usr/bin/Rscript\>'
    setfiletype r
	" set syntax=r
endif
