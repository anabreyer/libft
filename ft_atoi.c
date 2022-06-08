#include "libft.h"

int ft_atoi(const char *inp)
{
    int i;
    int r;
    int s;
    char *str;

    str = (char*)inp;
    i = 0;
    s = 1;
    r = 0;
    while((str[i] >= 9 && str[i] <= 13) || str[i] == 32)
        i++;
    if (str[i] == '-' || str[i] == '+')
    {
        if(str[i] == '-')
           s *= -1;
        i++;
    }
    while(str[i] <= '9' && str[i] >= '0')
    {
        r = ((str[i] - '0') + (r * 10));
        i++;
    }
    return (r * s);
}
