%%
%     COURSE: Understand the Fourier transform and its applications
%    SECTION: Introductions
%      VIDEO: Pitch
% Instructor: mikexcohen.com
%
%%
clear;
srate = 1000;
time = 0:1/srate:3;

x = (1+sin(2*pi*2*time)) .* cos(sin(2*pi*7*time)+time);
xx = 2*abs(fft(x)/length(x));

figure(1), clf
subplot(211)
plot(time,x,'k','linew',3)
xlabel('Time (sec.)')
ylabel('Amplitude')
title('Time domain')


subplot(212)
hz = linspace(0,srate,length(x));
stem(hz,xx.^2,'k','linew',3,'markersize',5,'markerfacecolor','k')
set(gca,'xlim',[0 30])
xlabel('Frequencies (Hz)')
ylabel('Power')
title('Frequency domain')

