# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaduan-b <aaduan-b@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/09 09:55:30 by aaduan-b          #+#    #+#              #
#    Updated: 2023/03/25 19:24:22 by aaduan-b         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

OBJ		= ${SRC:.c=.o}

OBJB	= ${SRCB:.c=.o}

CC		= cc

CC_FLAGS	= -Wall -Wextra -Werror

SRC		= src/ft_bzero.c src/ft_calloc.c src/ft_memset.c src/ft_memchr.c src/ft_memcpy.c\
		src/ft_isascii.c src/ft_memmove.c src/ft_memcmp.c src/ft_strdup.c src/ft_strchr.c src/ft_strrchr.c\
		src/ft_strnstr.c src/ft_toupper.c src/ft_tolower.c src/ft_isalnum.c src/ft_isalpha.c\
		src/ft_isdigit.c src/ft_isprint.c src/ft_strlen.c src/ft_atoi.c\
		src/ft_strncmp.c src/ft_strlcpy.c src/ft_strlcat.c src/ft_substr.c src/ft_strjoin.c\
		src/ft_strtrim.c src/ft_split.c src/ft_itoa.c src/ft_strmapi.c src/ft_striteri.c\
		src/ft_striteri.c src/ft_putchar_fd.c src/ft_putstr_fd.c src/ft_putendl_fd.c src/ft_putnbr_fd.c src/ft_isspace.c\
		src/ft_strtolong.c src/get_next_line.c src/ft_printf_utils.c src/ft_printf.c src/ft_printhex.c \
		src/ft_printptr.c src/ft_printunsigned.c

SRCB	= src/ft_lstnew.c src/ft_lstadd_front.c src/ft_lstsize.c src/ft_lstlast.c src/ft_lstadd_back.c\
		src/ft_lstdelone.c src/ft_lstclear.c src/ft_lstiter.c src/ft_lstmap.c

.c.o:	${CC} ${CC_FLAGS}-c$<-o${<:.c=.o}

${NAME}:	${OBJ}
	ar rcs ${NAME} ${OBJ}

all:	${NAME}

bonus:	${OBJB}
	ar rcs ${NAME} ${OBJB}

clean:
	rm -f ${OBJ} ${OBJB}

fclean:	clean
	rm -f ${NAME}

re:	fclean all

.PHONY:	all bonus clean fclean re

