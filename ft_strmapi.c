#include "libft.h"

char *ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
    unsigned int i;
    char *str;

    i = 0;
    if(!(str = ft_strdup(s)))
        return (0);
    while (str[i])
    {
        str[i] = f(i, str[i]);
        i++;
    }
    return (str);
}