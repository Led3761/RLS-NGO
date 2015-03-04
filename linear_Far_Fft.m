clear;
al = 4;
N = 150;
d = 4;
lam = 0.5;
for i = 1:N
    X(i) =1*exp(j*((2*pi*i*d*sin(al*pi/180))/lam));
end
Yf =abs( fft(X,N));
Yf = Yf./N;
alph = 180/pi*asin([1:N]*lam/d/(N-2));
figure
%hold on
plot(alph,Yf,'b');
grid on
for alp = 1:20
    Y(alp)=0;
    for n = 1:N-1
        Y(alp)=Y(alp)+X(n)*exp(-j*(2*pi*n*d*sin(alp*pi/180))/lam);
        
    end
end
%figure
%plot([1:20],abs(Y))
%grid on