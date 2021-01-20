function net_salary = remove_insurance(salary)
    er = 8;     % endowment insurance
    mr = 2;     % medical insurance & maternity insurance
    ur = 0.5;   % unemployment insurance
    hr = 7;     % hourse provident fund
    net_salary = salary * (1-(er+mr+ur+hr)/100);
end