A=imread('peppers.png');
figure,imshow(A);
title('Original-RGB-Image');

GIm=uint8(zeros(size(A,1),size(A,2)));

for m=1:size(A,1)

    for n=1:size(A,2)

        GIm(m,n)=0.2989*A(m,n,1)+0.5870*A(m,n,2)+0.1140*A(m,n,3);

    end

end
figure,imshow(GIm);
title('Gray-Image');

B=zeros(size(A,1),size(A,2));

for l=1:size(A,1)

    for m=1:size(A,2)

        if(sum(A(l,m,:))>0)

            B(l,m)=1;

        end

    end

end
B=logical(B);
figure,imshow(B);
title('Binary-Image');

