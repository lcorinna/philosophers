# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lcorinna <lcorinna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/04 15:53:16 by lcorinna          #+#    #+#              #
#    Updated: 2022/03/04 19:03:43 by lcorinna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_PHILO = philosophers

PHILO = philosophers.c libft_ph.c

OBJ_PHILO = $(PHILO:.c=.o)

CFLAGS = -Wall -Wextra -Werror -ptfread -fsanitize=address -g 
#Leaks --atExit -- ./philosophers 3 200 400 400 5

all: $(NAME_PHILO)
		
$(NAME_PHILO): $(OBJ_PHILO)
	cc $(CFLAGS) $(OBJ_PHILO) -o $@

%.o: %.c philosophers.h Makefile
	cc $(CFLAGS) -c $< -o $@	

clean:
	rm -f $(OBJ_PHILO)

fclean: clean
	rm -f $(NAME_PHILO)

re: fclean all

.PHONY: all clean fclean re