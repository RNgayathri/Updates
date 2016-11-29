#include<stdio.h>
int main()
{
        int s[10],x=6,i,j,n,count=0;

        printf("Enter the size of an array\n");
        scanf("%d",&n);

        printf("Enter the elements of an array\n");
        for(i=1;i<=n;i++)
        scanf("%d",&s[i]);

	i=0;
	j=n-1;

	while(i<=j)
	{
          	if((s[i]+s[j])==x)
          	{
                          i++;
                          j--;
			  count++;
         	}	
          	else if(s[i]+s[j]<x)
          	     {
               		i++;
          	     }
          	     else
          	     {
              		j--;
       		     }
	}
	if(count==0)
		printf("No set of numbers whose sum is %d in array S\n",x);
	else
		printf("There are set of numbers whose sum is %d in an array S\n",x);
}
