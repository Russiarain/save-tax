function [p,s] = pnsub(sa)
a1 = 1e3*[0 3 12 25 35 55 80 inf];
a2 = 0.01*[3 10 20 25 30 35 45];
a3 = [0 210 1410 2660 4410 7160 15160];
idx = 1;
for m = 1:7
    if sa > a1(m) && sa <= a1(m+1)
        idx = m;
        break
    else
        continue
    end
end
p = a2(idx);
s = a3(idx);
end

