%mcode to create a mif file
    src = imread('image.bmp');
    gray = rgb2gray(src);
    [m,n] = size( gray ); %size od your picture
    disp(m);
    disp(n);
    N = m*n; %your ram or rom depth?
    word_len = 8;
    data = reshape(gray, 1, N);% reshape you picture's data

    fid=fopen('gray_image.mif', 'w'); % open mif file
    fprintf(fid, 'DEPTH=%d;\n', N);
    fprintf(fid, 'WIDTH=%d;\n', word_len);

    fprintf(fid, 'ADDRESS_RADIX = UNS;\n');
    fprintf(fid, 'DATA_RADIX = HEX;\n');
    fprintf(fid, 'CONTENT\t');
    fprintf(fid, 'BEGIN\n');
    for i = 1 : N
    fprintf(fid, '\t%d\t:\t%x;\n',i-1, data(i));
    end
    fprintf(fid, 'END;\n'); % prinf the end
    fclose(fid); % close your file
