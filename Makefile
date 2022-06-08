# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jischoi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/27 16:53:41 by jischoi           #+#    #+#              #
#    Updated: 2022/05/27 18:03:45 by jischoi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

OBJ		= ${SRC:.c=.o}

CC		= cc

CC_FLAGS	= -Wall -Wextra -Werror

SRC		= ft_bzero.c ft_calloc.c ft_memset.c ft_memchr.c ft_memcpy.c\
		ft_isascii.c ft_memmove.c ft_memcmp.c ft_strdup.c ft_strchr.c ft_strrchr.c\
		ft_strnstr.c ft_toupper.c ft_tolower.c ft_isalnum.c ft_isalpha.c\
		ft_isdigit.c ft_isprint.c ft_strlen.c ft_atoi.c\
		ft_strncmp.c ft_strlcpy.c ft_strlcat.c ft_substr.c ft_strjoin.c\
		ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
		ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

.c.o:	${CC} ${CC_FLAGS}-c$<-o${<:.c=.o}

${NAME}:	${OBJ}
	ar rcs ${NAME} ${OBJ}

all:	${NAME}

clean:
	rm -f ${OBJ}

fclean:	clean
	rm -f ${NAME}

re:	fclean all

