clear
objfunc = @(x)obf(x);
sa_year = 15e4;
initVal = sa_year/13 * ones(1,13);
lb = zeros(1,13);
ub = sa_year*ones(1,13);
[sal_so, totalTax] = fmincon(objfunc,initVal,[],[],ones(1,13),sa_year,lb,ub);
fprintf('Month: %.0f , Bonus: %.0f , Tax rate average = %.3f\n',sal_so(1),sal_so(end),totalTax/sa_year)