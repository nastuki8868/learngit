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
printf("sin(x)�Ľ���ֵ��%.3lf\n",sum);
}
/*��֪sin(x)=x-x^3/(3!)+x^5/(5!)-x^7/(7!)....(-1)^n*x^(2n+1)/((2n+1)!);
Ҫ������x��eps,����sin(x)�Ľ���ֵ,Ҫ�����С��eps
*/