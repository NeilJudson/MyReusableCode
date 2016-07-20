clear; clc; close all;
im = imread('image1.jpg');
[height,width,channel] = size(im);
img = zeros(width,height);
img = im(:,:,1);
figure; imshow(img); title('before');
for j = 1:1:width
	for i = 1:1:height
		if(mod(img(i,j),2)==0)
            break;
        else
			img(i,j) = img(i,j)-1;
		end
	end
end
figure; imshow(img); title('after');
		