#include <stdio.h>
int main()
{
        int A[20], n, temp, i, j;
        printf("ENTER THE NUMBER OF TERMS\n");
        scanf("%d",&n);
        printf("ENTER THE ELEMENTS OF THE ARRAY\n");
        for(i=1; i<=n; i++)
        {
                scanf("%d", &A[i]);
        }
        for(i=1; i<=n-1; i++)
                for(j=i+1; j<=n;j++)
                        if(A[i]>A[j])
                        {
                                temp = A[i];
                                A[i] = A[j];
                                A[j] = temp;
                        }
        printf("THE ASCENDING ORDER LIST IS\n");
        for(i=1; i<=n; i++)
                printf("%d\t",A[i]);
		printf("\n");
}
