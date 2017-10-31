#include<stdio.h>
#include<math.h>
int main()
{
    double x,eps,n=1,p=1,a,f=1,t,sum;
    scanf("%lf",&x);
    scanf("%lf",&eps);
    sum=x;
do
    {
        n++;
        p=p*n;
        n++;
        p=p*n;
        f=-f;
        t=(f*pow(x,n))/p;
        sum+=t;
        a=fabs(sin(x)-sum);
    }
    while(a>eps);
printf("sin(x)的近似值是%.3lf\n",sum);
}
/*已知sin(x)=x-x^3/(3!)+x^5/(5!)-x^7/(7!)....(-1)^n*x^(2n+1)/((2n+1)!);
要求输入x与eps,计算sin(x)的近似值,要求误差小于eps
*/