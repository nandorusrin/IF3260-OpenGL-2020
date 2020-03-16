#!/bin/sh
bindir=$(pwd)
cd /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial05_textured_cube/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial05_textured_cube 
	else
		"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial05_textured_cube"  
	fi
else
	"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial05_textured_cube"  
fi
