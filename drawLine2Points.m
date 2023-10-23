clc;
clear;
close all;
img=zeros(400, 400);
% getting x and y of two points from user
% acceptable values are 1 to 400
x1=input("enter first point x position");
y1=input("enter first point y position");
x2=input("enter second point x position");
y2=input("enter second point y position");
% x=x0
if x2==x1
    for y=y1:y2
        img(y,x1)=255;
    end
% y=y0
elseif y2==y1
    for i=x1:x2
        img(y1,i)=255;
    end
else
% if(x2~=x1&&y2~=y1)
% calculate line tilt
tilt=(y2-y1)/(x2-x1);
if x1<x2 
    for x=x1:x2 
    % y-y0 = m(x-x0) => y= m(x-x0)+y0
    % find y for every x
    yx=round(tilt*(x-x1)+y1);
    img(yx,x)=255;
    end
else
    for x=x1:-1:x2 
    yx=round(tilt*(x-x1)+y1);
    img(yx,x)=255;
    end
end
end
img=uint8(img);
imshow(img);