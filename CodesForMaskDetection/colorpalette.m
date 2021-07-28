%% avarage for white
clc;
clear all;
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\MaskDetectorMATLABfiles\CodesForMaskDetection'
c=1;
q1=dir('white');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\MaskDetectorMATLABfiles\CodesForMaskDetection\white'
for k=[3:numel(q1)]
    a=imread(q1(k).name); %reading the actual image
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)/3):fix((2*b(2))/3),:); %cropping the image
    %subplot(4,3,k-2);image(c);
    d=double(c);
    e1(1,k-2,:)=mean(mean(d)); %blending the colors(FINAL)
    %f1=uint8(e3);
end
%subplot(4,3,10);image(f1);
%subplot(4,3,11);image(c);
avgwhite=uint8(mean(e1)); %avarage of WHITE <----
%image(avgwhite);
%% avarege for black
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test'
c=1;
q2=dir('black');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test\black'
for k=[3:numel(q2)]
    a=imread(q2(k).name); %reading the actual image
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)/3):fix((2*b(2))/3),:); %cropping the image
    %subplot(6,5,k-2);image(c);
    d=double(c);
    e2(1,k-2,:)=mean(mean(d)); %blending the colors(FINAL)
    %f2=uint8(e3);
end
%subplot(6,5,10);image(f2);
avgblack=uint8(mean(e2)); %avarage of BLACK <----
%image(avgblack);
%% avarage of blue
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test'
c=1;
q3=dir('blue');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test\blue'
for k=[3:numel(q3)]
    a=imread(q3(k).name); %reading the actual image
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)/3):fix((2*b(2))/3),:); %cropping the image
    %subplot(6,5,k-2);image(c);
    d=double(c);
    e3(1,k-2,:)=mean(mean(d)); %blending the colors(FINAL)
    %f3=uint8(e3);
end
%subplot(6,5,10);image(f3);
avgblue=uint8(mean(e3)); %avarage of BLUE <----
%image(avgblue);
%% avarage of green
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test'
c=1;
q4=dir('green');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test\green'
for k=[3:numel(q4)]
    a=imread(q4(k).name); %reading the actual image
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)/3):fix((2*b(2))/3),:); %cropping the image
    %subplot(6,5,k-2);image(c);
    d=double(c);
    e4(1,k-2,:)=mean(mean(d)); %blending the colors(FINAL)
    f4=uint8(e4);
end
%subplot(6,5,10);image(f4);
avggreen=uint8(mean(e4)); %avarage of GREEN <----
%image(avggreen);
%% avarage of neutral
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test'
c=1;
q5=dir('neutral');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test\neutral'
for k=[3:numel(q5)]
    a=imread(q5(k).name); %reading the actual image
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)/3):fix((2*b(2))/3),:); %cropping the image
    %subplot(6,5,k-2);image(c);
    d=double(c);
    e5(1,k-2,:)=mean(mean(d)); %blending the colors(FINAL)
    f5=uint8(e5);
end
%subplot(6,5,10);image(f5);
avgneutral=uint8(mean(e5)); %avarage of NEUTRAL <----
%image(avgneutral);
% PLOTTING
% subplot(1,5,1);image(avgwhite);title('white');
% subplot(1,5,2);image(avgblue);title('blue');
% subplot(1,5,3);image(avggreen);title('green');
% subplot(1,5,4);image(avgblack);title('black');
% subplot(1,5,5);image(avgneutral);title('neutral');