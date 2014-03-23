A = [3375       62.09 3.236
27000      61.80 3.149
216000     61.84 3.649
729000     62.03 3.088
1728000    61.89 3.166
3375000    62.02 3.223
5832000    62.28 3.061
9261000    61.88 3.486
13824000   62.20 3.225
16581375   61.82 3.851
17173512   61.98 3.641
17779581   62.10 3.552
18399744   57.17 1.21
19034163   30.51 1.601
19683000   30.31 1.117
22425768   30.36 1.431
23149125   30.37 1.304
27000000   30.36 1.436
35937000   30.28 1.537
41063625   30.26 1.997
42144192   30.47 1.643
43243551   30.46 1.830
44361864   28.59 4.045
45499293   20.81 2.276
46656000   20.23 0.879
59319000   20.17 1.115
64964808   19.95 1.350
66430125   18.98 2.350
67917312   18.71 2.531
69426531   15.22 1.164
70957944   15.15 0.879
72511713   15.21 0.982
74088000   15.20 1.046
91125000   14.18 1.757
110592000  12.14 2.180
132651000  9.993 1.066
157464000  8.672 1.471
185193000  6.998 1.254
287496000  4.783 0.8532
421875000  3.287 0.4548
1061208000 1.40 0.2386];

num_atoms = A(:,1);
fps = A(:,2);
std_dev = A(:,3);

%errorbar(num_atoms, fps, -std_dev, std_dev)
%plot(log(num_atoms), fps)
semilogx(num_atoms, fps)
fontsize = 20;
hax = gca;
set(hax, 'fontsize',fontsize ...
    );
xlabel('N_{spheres}',...
    'fontsize',fontsize...
    );
ylabel('Frame rate [FPS]',...
    'fontsize',fontsize ...
    );
title('Billboard rendering benchmark',...
    'fontsize',fontsize ...
    );