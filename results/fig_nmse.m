%% Plot normalized mean squared error NMSE

clear; clc;

nmse = {};
for i = 2:8
    nmse{i} = load(['nmse-BTot',num2str(256*i),'-CR16.mat']).nmse;
end

figure('DefaultAxesFontSize',14);
LineW = 1.5;
hold on;

p2 = cdfplot(10*log10(nmse{2}));
p3 = cdfplot(10*log10(nmse{3}));
p4 = cdfplot(10*log10(nmse{4}));
p5 = cdfplot(10*log10(nmse{5}));
p6 = cdfplot(10*log10(nmse{6}));
p7 = cdfplot(10*log10(nmse{7}));
p8 = cdfplot(10*log10(nmse{8}));

set(p2, 'linewidth', LineW, 'DisplayName','B = 512');
set(p3, 'linewidth', LineW, 'DisplayName','B = 768');
set(p4, 'linewidth', LineW, 'DisplayName','B = 1024');
set(p5, 'linewidth', LineW, 'DisplayName','B = 1280');
set(p6, 'linewidth', LineW, 'DisplayName','B = 1536');
set(p7, 'linewidth', LineW, 'DisplayName','B = 1792');
set(p8, 'linewidth', LineW, 'DisplayName','B = 2048');

title('');
set(gca,'XLim',[-22,0],'XTick',-22:2:0);
xlabel('10log_{10}(NMSE)');
ylabel('CDF');
legend('location','southeast');
xtickangle(0)
saveas(gcf,'cdf-nmse-CR16.png')