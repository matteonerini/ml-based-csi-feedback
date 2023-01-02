function U = func_gram_schmidt(V)
% The vectors v1,...,vk (columns of the matrix V) are replaced by the
% orthonormal vectors u1,...,uk (columns of the matrix U) which span the
% same subspace.

[n,k] = size(V);
U = zeros(n,k);
U(:,1) = V(:,1) / norm(V(:,1));

for i = 2:k
    U(:,i) = V(:,i);
    for j = 1:i-1
        U(:,i) = U(:,i) - (U(:,j)' * U(:,i)) / (norm(U(:,j)))^2 * U(:,j);
    end
    U(:,i) = U(:,i) / norm(U(:,i));
end
end