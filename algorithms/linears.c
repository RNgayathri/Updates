#include<stdio.h>
#include<time.h>
int main()
{
	int array[100], search, c, n;
	clock_t start,end;
	double cpu_time_used;
 	start=clock();
  	printf("Enter the number of elements in array\n");
  	scanf("%d",&n);
 
   	printf("Enter %d integer(s)\n", n);
 
   	for (c = 0; c < n; c++)
      	scanf("%d", &array[c]);
 
   	printf("Enter the number to search\n");
   	scanf("%d", &search);
 
   	for (c = 0; c < n; c++)
   	{
      	if (array[c] == search)     /* if required element found */
      	{
        	 printf("%d is present at location %d.\n", search, c+1);
         	 break;
      	}
   	}	
   	if (c == n)
      	printf("%d is not present in array.\n", search);
	end=clock();
	cpu_time_used= ((double) (end-start)) / CLOCKS_PER_SEC;
	printf("The time used is = %lf sec\n",cpu_time_used);
	return 0;
}
