    src = fopen('finalImage.mif', 'r'); % open mif file
    img = fscanf(src, '%d', [267, 267]);
    img = img/256;
    img = img(:,end:-1:1,:);
    img = rot90(img);
    img = transpose(img);
    imwrite(img,'a.bmp'); %Writes img to 'a.png'