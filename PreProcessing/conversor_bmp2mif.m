clear();

nomes = {'imagem1', 'imagem2'};
word_len = 8;
N = 256*320; %largura x altura (dimensões da imagem)

for i=1 : 2
  img = imread(strcat(nomes{i},'.bmp'));
  imagem = imresize(img, [256, 320]);
  %gray = rgb2gray(imagem);     %descomente se a imagem for colorida
  %data = reshape(gray, 1, N);  %descomente se a imagem for colorida
  data = reshape(imagem, 1, N); %comente se a imagem for colorida

  fid=fopen(strcat(nomes{i},'.mif'), 'w');
  fprintf(fid, 'DEPTH=%d;\n', N);
  fprintf(fid, 'WIDTH=%d;\n', word_len);
  fprintf(fid, 'ADDRESS_RADIX = UNS;\n');
  fprintf(fid, 'DATA_RADIX = UNS;\n');
  fprintf(fid, 'CONTENT\t');
  fprintf(fid, 'BEGIN\n');

  for j = 1 : N
    fprintf(fid, '\t%d\t:\t%d;\n', j-1, data(j));
    %fprintf(fid, '\t%d      :   %d;\n', j-1, data(j));
  end

  fprintf(fid, 'END;\n'); % prinf the end
  fclose(fid); % close your file
end

