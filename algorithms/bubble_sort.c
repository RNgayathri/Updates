#include<stdio.h>
int main()
{
	int a[10],i,n,t,j;
	
	printf("Enter the size of an array\n");
	scanf("%d",&n);
	
	printf("Enter the elements of an array\n");
	for(i=0;i<n;i++)
	scanf("%d",&a[i]);
	
	for(i=0;i<n-1;i++)
	{
		for(j=0;j<n-i-1;j++)
		{
			if(a[j]>a[j+1])
			{
				t=a[j];
				a[j]=a[j+1];
				a[j+1]=t;
			}	
		}
	}	
	printf("The sorted array elements are:\n");
	for(i=0;i<n;i++)
	printf("%d\t",a[i]);
 	printf("\n");
	return 0;
}
			
