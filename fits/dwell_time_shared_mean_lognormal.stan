
data {
  int<lower=1> N;                  // number of genes
  int<lower=1> K;                  // number of codons (61)
  matrix<lower=0>[N, K] F;         // codon frequencies, each row sums to 1
  vector<lower=0>[N] y;            // 1/ES = mean dwell time per codon of each gene (s)
  real mu_loc;                     // prior on mu: centre on the log scale
  real<lower=0> mu_scale;          // prior on mu: spread on the log scale
  real<lower=0> kappa;             // fixed concentration of the dwell times around mu
}
parameters {
  real<lower=0> mu;                // average codon dwell time (s)
  vector<lower=0>[K] tau;          // codon-specific dwell times (s)
  real<lower=0> sigma;             // spread of the gene-level noise on the log scale
}
model {
  mu ~ lognormal(mu_loc, mu_scale);
  tau ~ gamma(kappa, kappa / mu);          // mean mu, coefficient of variation 1/sqrt(kappa)
  sigma ~ exponential(1);
  y ~ lognormal(log(F * tau), sigma);      // median = sum_c f_gc * tau_c
}

