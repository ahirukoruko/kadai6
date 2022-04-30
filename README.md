# 問6
## ソースコード
```C
#include <stdio.h>
#include<math.h>

float f(float x);
float df(float x);

int main(){
//二分法
float xn,an=1000,bn=-1000,i;
for(i=1; i<=1000000; i++){
    
    xn=(an+bn)*0.5;
    
    if(f(an)*f(xn)>0){an=xn;}
    else if(f(an)*f(xn)<0){bn=xn;}
    else{break;}
    
    if(an-bn==0){break;}
    }
    
printf("二分法　x=%f\n",xn);

//Newton-Rapson法
float x0=1, xnew, a, n=0, y, output;

for(i=1; i<=10000; i++){
y=f(x0);
a=df(x0);
xnew=x0-y/a;
n=fabs(xnew-x0);
if(n<0.001){
output=xnew;
}
else{
x0=xnew;
}
}
printf("Newton-Rapson法　x=%f\n",output);
return 0;
}

float f(float x){
return x*x-4;
}

float df(float x){
return 2*x;
}
```
## makefile
```
# makefile
.PHONY : clean

kadai6.out : kadai6.c
    gcc -o kadai6.out kadai6.c
    
do :
    ./kadai6.out
    
clean :
    rm kadai6.out

```
## 出力
出力
![](/images/6.png)

