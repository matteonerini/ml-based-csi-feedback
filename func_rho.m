function rho_h = func_rho(h_hat, h)
    rho_i = 0;
    for i = 1:size(h,2)
        rho_i = rho_i + abs(h_hat(:,i)'*h(:,i))/(norm(h_hat(:,i))*norm(h(:,i)));
    end
    rho_h = rho_i/size(h,2);
end