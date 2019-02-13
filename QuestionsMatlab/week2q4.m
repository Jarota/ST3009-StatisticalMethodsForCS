priors = [
    0.05, 0.1, 0.05, 0.05;
    0.05, 0.1, 0.05, 0.05;
    0.05, 0.05, 0.1, 0.05;
    0.05, 0.05, 0.1, 0.05
];

likelihoods = [
    0.75, 0.95, 0.75, 0.05;
    0.05, 0.75, 0.95, 0.75;
    0.01, 0.05, 0.75, 0.95;
    0.01, 0.01, 0.05, 0.75
];

evidence = 0;

for i = 1:16
    temp = priors(i) * likelihoods(i);
    evidence = evidence + temp;
end

posteriors = zeros(4,4);

for i = 1:16
    posteriors(i) = priors(i) * likelihoods(i) / evidence;
    %disp(posterior);
end

disp(posteriors)
