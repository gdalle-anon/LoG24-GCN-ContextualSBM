using LinearAlgebra
using Oversmoothing
using StableRNGs
using Statistics
using Test

rng = StableRNG(63)

N = 1000
M = 2000
Q = [0.05 0.01; 0.01 0.03]

sbm = SBM([N, 2N], Q)
A = rand(rng, sbm);
@test community_size.(Ref(sbm), 1:2) == [N, 2N]
@test community_of_vertex.(Ref(sbm), 1:(3N)) == vcat(fill(1, N), fill(2, 2N))
@test issymmetric(A)
@test all(iszero, Diagonal(A))
@test mean(view(A, 1:N, 1:N)) ≈ Q[1, 1] rtol = 1e-1
@test mean(view(A, 1:N, N:(3N))) ≈ Q[1, 2] rtol = 1e-1
@test mean(view(A, N:(3N), 1:N)) ≈ Q[2, 1] rtol = 1e-1
@test mean(view(A, N:(3N), N:(3N))) ≈ Q[2, 2] rtol = 1e-1
