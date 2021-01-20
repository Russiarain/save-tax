function tax = get_tax(sa)
sa = remove_insurance(sa);
sa = sa - 5000;
if sa <= 0
    tax = 0;
    return
end
[p,s] = pnsub(sa);
tax = sa*p - s;
end

