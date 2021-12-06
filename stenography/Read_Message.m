Im=imread('C:\Users\DELL\OneDrive\Desktop\stenography\msgIm.bmp');
MessageImage=bitget(Im(:,:,1),1);
imshow(logical(MessageImage));