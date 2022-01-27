#include <stdio.h>
#include <time.h>

#define N 100000

int main(int argc, char const *argv[])
{
    int start, end;
    float f = 20;
    int i = 20, j = 0;
    start = clock();

    while (j < N)
    {
        f = f/2;
        f*=3;
        j++;

    }


    end = clock();
    printf("%d  ",end - start);

    start = clock();
    j = 0;
    while (j < N)
    {
        i/=2;
        i*=3;
        j++;
    }

    end = clock();
    printf("%d \n",end - start );


    return 0;
}