%% loading image
clc;
clear all;
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\MaskDetector\CodesForMaskDetection'
load('avgcolor');
q=dir('randomimages');
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\MaskDetector\CodesForMaskDetection\randomimages'
for k=[3:numel(q)]
    %% calculating avarage color
    a=imread(q(k).name); % the wanted image to be examined.
    b=size(a);
    c=a(fix(b(1)/2):fix((b(1)*3)/4),fix(b(2)*17/48):fix((31*b(2))/48),:); %cropping the image.
    d=double(c);
    e=mean(mean(d)); %blending the colors.
    wantedavg=uint8(e); %actual avarage color.
    %% comparison with black
    avgblacklab=rgb2lab(avgblack);
    wantedavglab=rgb2lab(wantedavg);
    DeltaE(1)=sqrt(sum((avgblacklab-wantedavglab).^2));
    %% comparison with blue
    avgblacklab=rgb2lab(avgblue);
    DeltaE(2)=sqrt(sum((avgblacklab-wantedavglab).^2));
    %% comparison with green
    avgblacklab=rgb2lab(avggreen);
    DeltaE(3)=sqrt(sum((avgblacklab-wantedavglab).^2));
    %% comparison with white
    avgblacklab=rgb2lab(avgwhite);
    DeltaE(4)=sqrt(sum((avgblacklab-wantedavglab).^2));
    %% comparison with neutral
    avgblacklab=rgb2lab(avgneutral);
    DeltaE(5)=sqrt(sum((avgblacklab-wantedavglab).^2));
    %% result
    i=find(DeltaE==min(DeltaE));
    %fprintf('DeltaE values for given image %s is: \n',q(k).name);
    %display(DeltaE);
    if i==5
        fprintf('The person in the given image %s is not wearing a mask.\n',q(k).name);
    else
        fprintf('The person in the given image %s is wearing a mask.\n',q(k).name);
    end
    %fprintf('____________________________\n');
end
cd 'C:\Anıl\ÜNİVERSİTE\MAT 116E\TERM PROJECT\test'