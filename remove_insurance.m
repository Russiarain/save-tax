function net_salary = remove_insurance(salary)
    er = 8;     % endowment insurance
    mr = 2;     % medical insurance & maternity insurance
    ur = 0.5;   % unemployment insurance
    hr = 7;     % hourse provident fund
    
    bounds = [4927, 28017];
    if salary < bounds(1)
        base = bounds(1);
    elseif salary > bounds(2)
        base = bounds(2);
    else
        base = salary;
    end

    net_salary = salary - base * (er+mr+ur+hr)/100;
end