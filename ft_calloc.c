#include "libft.h"

void *ft_calloc(size_t count, size_t size)
{
    size_t  tot_size;
    void    *dest;

    tot_size = size * count;
    if(!(dest = malloc(tot_size))) 
        return (0);
    ft_memset(dest, 0, tot_size);
    return(dest);
}