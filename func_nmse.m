function nmse_h = func_nmse(h_hat, h)
    nmse_h = (norm(h_hat-h,'fro')/norm(h,'fro'))^2;
end