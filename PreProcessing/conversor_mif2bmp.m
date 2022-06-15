name = 'gray_image';
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

z = zeros(384*256,1);

while (1)
    tline = fgetl(fid);
    if (strcmp(tline(1:3),'END')~=0)
        break;
    end
    [address str] = strtok(tline);
    [token str] = strtok(str); % skip colon
    token = strtok(str); % get value
    value = sscanf(token,'%x');
    n = length(address);
    k = strfind(address,'[');
    if (k>0)
        a1 = sscanf(address(k+1:n),'%x')+1;
        k = strfind(address,'..');
        a2 = sscanf(address(k+2:n),'%x')+1;
        z(a1:a2) = value;
    else
        a1 = sscanf(address,'%x')+1;
        z(a1) = value;
    end
end

zi = uint8(z);
newZ = nonzeros(zi);
zx = reshape(newZ,256,384);

imwrite(zx,strcat(name,'.bmp'));
