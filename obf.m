function sumTax = obf(x)
sumTax=0;
for n = 1:12
    sumTax = sumTax + get_tax(x(n));
end
sumTax = sumTax + get_year_tax(x(13));
end

