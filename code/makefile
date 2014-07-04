# module source files
runFrame_src_files := \
			runFrame.c
# module object files
runFrame_src_obj := $(runFrame_src_files:.c=.o)

daoxu_src_files := \
			daoxu.c

daoxu_src_obj := $(daoxu_src_file:.c=.o)

change_src_files := \
			change.c

change_src_obj := $(change_src_file:.c=.o)

# target : name \
	command
all : run

%.o : %.c
	gcc -c $<

run : daoxu.o change.o runFrame.o
	gcc daoxu.o change.o runFrame.o -o run

daoxu.o : c/daoxu.c
		gcc -c c/daoxu.c
		
change.o : c/change.c
		gcc -c c/change.c

runFrame.o : runFrame.c
		gcc -c runFrame.c

clean :
		rm -vf run runFrame.o daoxu.o change.o
