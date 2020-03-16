G++ = g++
MAIN = test
INC = load.cpp -lGL -lGLU -lglut 

run : compile ${MAIN}
		# run
		./${MAIN}

compile : ${MAIN}.cpp
		# compile
		${G++} -o ${MAIN} ${MAIN}.cpp ${INC}
		
		# -------