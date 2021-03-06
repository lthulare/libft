# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lthulare <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/31 09:36:31 by lthulare          #+#    #+#              #
#    Updated: 2019/06/10 14:22:59 by lthulare         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
SOURCES = ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memalloc.c ft_memccpy.c \
		  ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c ft_memset.c ft_strcat.c ft_strchr.c ft_strclr.c \
		  ft_strcpy.c ft_strdel.c ft_strdup.c ft_striter.c ft_striteri.c ft_strlcat.c ft_strlen.c ft_strmap.c ft_strncat.c \
		  ft_strncpy.c ft_strnew.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strclr.c ft_strcmp.c ft_strncmp.c ft_putnbr.c \
		  ft_putnbr_fd.c ft_putchar.c ft_putnbr.c ft_putchar_fd.c ft_strmapi.c ft_strequ.c ft_strjoin.c ft_strtrim.c ft_putstr_fd.c \
		  ft_itoa.c ft_strsplit.c  ft_putendl.c ft_putendl_fd.c ft_putnbr.c ft_tolower.c ft_toupper.c ft_strsub.c ft_strequ.c \
		  ft_strnequ.c ft_putstr.c ft_strndup.c
OBJECTS = ft_atoi.o ft_bzero.o ft_isalnum.o ft_isalpha.o ft_isascii.o ft_isdigit.o ft_isprint.o ft_memalloc.o ft_memccpy.o \
		  ft_memchr.o ft_memcmp.o ft_memcpy.o ft_memdel.o ft_memmove.o ft_memset.o ft_strcat.o ft_strchr.o ft_strclr.o \
		  ft_strcpy.o ft_strdel.o ft_strdup.o ft_striter.o ft_striteri.o ft_strlcat.o ft_strlen.o ft_strmap.o ft_strncat.o \
		  ft_strncpy.o ft_strnew.o ft_strrchr.o ft_strstr.o ft_strnstr.o ft_strclr.o ft_strcmp.o ft_strncmp.o ft_putnbr.o \
		  ft_putnbr_fd.o ft_putchar_fd.o ft_strmapi.o ft_strequ.o ft_strjoin.o ft_strtrim.o ft_putendl.o ft_putendl_fd.o \
		  ft_putnbr.o ft_tolower.o ft_toupper.o ft_strsub.o ft_strequ.o ft_strnequ.o ft_putstr.o ft_putchar.o ft_putstr_fd.o \
		  ft_itoa.o ft_strsplit.o ft_strndup.o
flags = -Wall -Wextra -Werror
all: $(NAME)
$(NAME):
	@$(CC) -c $(SOURCES) $(flags)
	@ar rc $(NAME) $(OBJECTS)
	@ranlib $(NAME)
clean:
	@rm -f $(OBJECTS)
fclean : clean
	 @rm -f libft.a
re : fclean all
c:
	@gcc $(flags) main.c libft.a
N:
	@norminette $(SOURCES)

