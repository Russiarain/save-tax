clear
objfunc = @(x)obf(x);
sa_year = 20e4;
initVal = sa_year/13 * ones(1,13);
lb = zeros(1,13);
ub = sa_year*ones(1,13);
[sal_so, totalTax] = fmincon(objfunc,initVal,[],[],ones(1,13),sa_year,lb,ub);
fprintf('Month: %.0f , Bonus: %.0f , Tax rate average = %.3f\n',sal_so(1),sal_so(end),totalTax/sa_year)

savedTax = ratio_compare(sa_year) - totalTax;
fprintf('Save %.0f , %.0f , %.0f compared with 7/3 7.5/2.5 8/2\n',savedTax(1), savedTax(2), savedTax(3))