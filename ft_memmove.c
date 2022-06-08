#include "libft.h"

void *ft_memmove(void *dest, const void *src, size_t len)
{
    size_t i;

    if (!dest ||!src)
        return (NULL);
    i = 0;
    if((size_t)dest - (size_t)src < len)
    {
        i = len - 1;
        while(i < len)
        {
            ((unsigned char*) dest)[i] = ((unsigned char*)src)[i];
            i--;
        }
    }
    else
    {
        while (i < len)
        {
            ((unsigned char*)dest)[i] = ((unsigned char*)src)[i];
            i++;
        }
    }
    return (dest);
}