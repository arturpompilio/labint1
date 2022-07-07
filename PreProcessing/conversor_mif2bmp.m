clear();

name = 'imagem';
fid = fopen(strcat(name,'.mif'));
while (1)
    tline = fgetl(fid);
    if (isempty(tline))
        continue;
    end
    if (tline(1)=='-')
        continue;
    elseif (strcmp(tline(1:7),'CONTENT')~=0)
        break;
    end
end

z = zeros(200*250,1);

while (1)
    tline = fgetl(fid);
    if (strcmp(tline(1:3),'END')~=0)
        break;
    end
    [address str] = strtok(tline);
    [token str] = strtok(str);
    token = strtok(str);
    indice = sscanf(address, '%u');
    value = sscanf(token,'%u');

    z(indice+1) = value;
end

zi = uint8(z);

zx = reshape(zi,200,250);
imwrite(zx,strcat(name,'.bmp'));
