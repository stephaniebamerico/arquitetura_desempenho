#include <stdio.h>
#include <time.h>

#define num 10000

int matriz[num][num];

int main(int argc, char const *argv[])
{

    int start, end;
    
    int t = time(NULL) % 5;
    int k = 1;
    for (int mod = 1; mod < 2000; mod*=2)
    {
        start = clock();
    
        for (int i = 0; i < 10000; ++i)
        {
            if (i % mod == 0)
                k++;
        }
        end = clock();
        printf("%d %d\n",end-start,mod );
    }
    return 0;
}