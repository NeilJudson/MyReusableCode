function num = GetNumFromStr(str,sz)
ch = zeros(10);
j = 0;
t = 0;
num_temp = zeros(sz);
p = 1;
for i = 1:1:length(str)
	if(str(i)==',')
		for k = 1:1:j
			t = t+ch(k)*10^(j-k);
        end
        num_temp(p) = t;
        p = p+1;
        j = 0;
        ch = zeros(10);
        t = 0;
	else
		j = j+1;
		ch(j) = str2num(str(i));
	end
end	
for k = 1:1:j
    t = t+ch(k)*10^(j-k);
end
num_temp(p) = t;
num = num_temp(1:p);
end