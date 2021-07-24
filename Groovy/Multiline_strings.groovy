package com.test.assignments

def string= "Hi, Good Morning!! This is my Groovy Assignment "
size=string.length()
count=0

for(a=0; a<=size-1; a++)
{
	if(string[a]=='A'||string[a]=='E'||string[a]=='I'||string[a]=='O'||string[a]=='U')
		{
			count=count+1
		}
}
print count
