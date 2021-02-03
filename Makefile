
NAME=libasm.a
TESTE=teste
OBJS=ft_read.o ft_strcpy.o ft_strlen.o ft_strcmp.o ft_strdup.o ft_write.o
all: $(NAME)

$(NAME):
	nasm ft_read.s -f elf64
	nasm ft_strcpy.s -f elf64
	nasm ft_strlen.s -f elf64
	nasm ft_strcmp.s -f elf64
	nasm ft_strdup.s -f elf64
	nasm ft_write.s -f elf64
	ar rcs $(NAME) $(OBJS)
	clang -Wall -Wextra -Werror main.c -L. -lasm $(NAME) -o $(TESTE)
	
clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME) $(TESTE)

re: fclean all
