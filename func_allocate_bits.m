function Bs = func_allocate_bits(BTot, importances, zUL_train_entries)
% Allocation optimized to minimize the theoretical distortion function. At
% each iteration, the the principal component receiving the bTot-th bits is
% found based on the MSE obtained with k-means clustering.
% This version is optimized to reduce the computational complexity.

% # of considered PCs
NP = 1;

% Bs = [1 0 ... 0]
Bs = zeros(size(importances));
Bs(1) = 1;

% Distortion function df
df = importances;
[~, ~, sumd] = kmeans(squeeze(zUL_train_entries(:,1,:)),2^Bs(1));
df(1) = sum(sumd)/size(zUL_train_entries,1);
df_new = df;

for bTot = 2:BTot
    if mod(bTot,100) == 0
        fprintf('Considering bTot: %d\n', bTot);
    end
    for np = 1:NP+1
        if np == 1
            if df_new(np) == df(np)
                try
                [~, ~, sumd] = kmeans(squeeze(zUL_train_entries(:,np,:)),2^(Bs(np)+1));
                df_new(np) = sum(sumd)/size(zUL_train_entries,1);
                catch
                end
            end
        elseif Bs(np) < Bs(np-1)
            if df_new(np) == df(np)
                [~, ~, sumd] = kmeans(squeeze(zUL_train_entries(:,np,:)),2^(Bs(np)+1));
                df_new(np) = sum(sumd)/size(zUL_train_entries,1);
            end
        end
    end
    improvement = df-df_new;
    assert(min(improvement) >= 0);
    [~,iMax] = max(improvement);
    Bs(iMax) = Bs(iMax) + 1;
    NP = max([NP,iMax]);
    df(iMax) = df_new(iMax);
end
Bs = Bs(1:find(Bs,1,'last'));
end