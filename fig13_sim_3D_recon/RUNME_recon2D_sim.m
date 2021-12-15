clear; close all; clc;
rng('default');

%% Square target scene

Jdir = "~/workspace/neural-dot/dataset_scripts/data";
Jfname = "J_128x1x128";
truthImName = "truth_square";
TPSFname = "tpsf";

gamma = 0.6;
numTicks_recon = 6;
numTicks_truth = 2;

absMua = 0.26 .* ones(128, 1);
intTime = 1e1;
maxPhots = 5e6 * intTime;

selectBins = 1:100;

useFluor = false;
tau = 1000;

fwd_type = 'mvp';
fistaOpts.lam2 = 0;
fistaOpts.maxItr = 175;
fistaOpts.tol = 0;
fistaOpts.nonneg = true; 
fistaOpts.showFigs = false;
lam1 = [2e-7, 2e-8, 0, 0, 0, 0];

threshVec = [0.2, 0.02, 0.4, 0.4, 0.7, 0.7];

recon2D_sim;
