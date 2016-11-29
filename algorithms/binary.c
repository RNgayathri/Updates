#include<stdio.h>
int main()
{
	int key,b,e,m,i,a[10],n;
	
	printf("Enter the size of an array:\n");
	scanf("%d",&n);
	
	printf("Enter the array elements\n");
	for(i=0;i<n;i++)
	scanf("%d",&a[i]);
	
	printf("Enter the element to search\n");
	scanf("%d",&key);
	
	b=0;
	e=n-1;
	m=-1;
	while(b<=e)
	{
		m=b+(e-b)/2;
		if(key==a[m])
		{	
			printf("%d is present in the location %d\n",key,m+1);
			break;
		}else
		{
			if(a[m]<key)
				b=m+1;
			else
				e=m-1;
		}
	}
}
	
