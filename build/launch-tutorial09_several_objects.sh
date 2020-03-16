#!/bin/sh
bindir=$(pwd)
cd /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/tutorial09_vbo_indexing/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial09_several_objects 
	else
		"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial09_several_objects"  
	fi
else
	"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/tutorial09_several_objects"  
fi
