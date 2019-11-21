beginfig(1)
u:=.8cm; % hang so do dai de su dung sau nay
mm:=.1; % hang so de su dung sau nay
numeric a, b, xmin, xmax, ymin, ymax; % khai bao cac so
a:=-2.3;
b:=2.3;
xmin:=-4; %phai la cac so nguyen
xmax:=4;
ymin:=-5;
ymax:=7;

path q;

vardef f(expr x)=x**4-2x**2 enddef;
q:=u*(a,f(a)) for i=a step .01 until b+.01: ..u*(i,f(i)) endfor;

%==== Ve luoi toa do ====
drawoptions(dashed evenly scaled .5 withpen pencircle scaled .3pt);
%for i=xmin upto xmax: draw u*(i,ymin)--u*(i,ymax); endfor;
%for i=ymin upto ymax: draw u*(xmin,i)--u*(xmax,i); endfor;

%=====Ve cac truc toa do Ox, Oy
drawoptions(withpen pencircle scaled 1pt);
drawarrow u*(xmin,0)--u*(xmax,0);
drawarrow u*(0,ymin)--u*(0,ymax);

label.top(btex $y$ etex,u*(0,ymax));
label.rt(btex $x$ etex,u*(xmax,0));
label.urt(btex $O$ etex,u*(0,0));

%==== Dien cac so chia don vi
for i=xmin+1 upto xmax-1: label.llft(decimal(i), u*(10i/7,0)) scaled .7; endfor;
for i=ymin+1 upto ymax-1: label.llft(decimal(i), u*(0,10i/7)) scaled .7; endfor;

%===== ve cac vach chia don vi
drawoptions(withpen pencircle scaled .3pt);
for i=xmin+1 upto xmax-1: draw u*(i,-mm)--u*(i,mm); endfor;
for i=ymin+1 upto ymax-1: draw u*(-mm,i)--u*(mm,i); endfor;

drawoptions(withpen pencircle scaled 1.2pt);
draw q;
label(btex $y=x^4-2x^2$ etex,u*(4,4));

endfig;
end;