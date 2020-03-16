#!/bin/sh
bindir=$(pwd)
cd /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/misc05_picking/
export 

if test "x$1" = "x--debugger"; then
	shift
	if test "xYES" = "xYES"; then
		echo "r  " > $bindir/gdbscript
		echo "bt" >> $bindir/gdbscript
		/usr/bin/gdb -batch -command=$bindir/gdbscript --return-child-result /home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/misc05_picking_BulletPhysics 
	else
		"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/misc05_picking_BulletPhysics"  
	fi
else
	"/home/nandorusrin/Documents/if3260-opengl-tubes/IF3260-OpenGL-2020/build/misc05_picking_BulletPhysics"  
fi
