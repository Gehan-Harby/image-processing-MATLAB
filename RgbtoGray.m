img = imread('peppers.png');
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
newImage = zeros(size(img,1), size(img,2),'uint8');
for x=1:size(img,1)
    for y=2:size(img,2)
        newImage(x,y) = (R(x,y)*0.333)+(G(x,y)*0.333)+(B(x,y)*0.333);
    end
end
  figure,imshow(img),title('1-RGB IMAGE');
  figure,imshow(newImage),title('2-Gray IMAGE');

  