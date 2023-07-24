%function get RGB image and return histogram
function[]= rgb_histogram(img)
[H,W]=size(img);
histo= zeros(256,1);
Red=img(:,:,1);
Green=img(:,:,2);
Blue=img(:,:,3);
for i=1:H
    for j=1:W
       histo(Red(i,j)+1)= histo(Red(i,j)+1)+1;
       histo(Green(i,j)+1)= histo(Green(i,j)+1)+1;
       histo(Blue(i,j)+1)= histo(Blue(i,j)+1)+1;
    end
end
figure,bar(Red);
figure,bar(Green);
figure,bar(Blue);
end
