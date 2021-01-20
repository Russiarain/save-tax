function tax = get_year_tax(sa)
tp = sa/12;
[p,s] = pnsub(tp);
tax = sa*p-s;
end

