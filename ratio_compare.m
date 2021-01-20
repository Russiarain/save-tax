function taxcmp = ratio_compare(sa_year)
    
taxcmp = zeros(1,3);
ratios = [0.7 0.3;0.75 0.25;0.8 0.2];

for m = 1:size(ratios,1)
    ratio = ratios(m,:);
    taxcmp(m) = 12 * get_tax(sa_year*ratio(1)/12) + get_year_tax(sa_year*ratio(2));
end

end