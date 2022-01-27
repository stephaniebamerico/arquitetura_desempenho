#include <stdio.h>
#include <time.h>

#define num 10000

int matriz[num][num];

int main(int argc, char const *argv[])
{

    int start, end;
    
    int t = time(NULL) % 5;
    int k = 1;
    int x = 1;
    int div = 2;
    scanf ("%d", &div);
    start = clock();  
    for (int i = 0; i < 100000; ++i)
    {
        if (i % div == 0)
            k ++;
    }
    end = clock();
    printf("%d %d \n",div, end-start );
    return 0;
}