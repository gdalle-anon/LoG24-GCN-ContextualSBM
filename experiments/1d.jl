using Pkg
Pkg.activate(@__DIR__)

using CairoMakie
using Distributions
using LinearAlgebra
using Oversmoothing
using StableRNGs

BLAS.set_num_threads(1)
rng = StableRNG(63)

graph = SBM(
    [300, 500, 200],
    [
        0.05 0.01 0.01
        0.01 0.04 0.01
        0.01 0.01 0.03
    ],
)

features = [
    MvNormal([+1.0], [+0.5;;]),  #
    MvNormal([+2.0], [+1.0;;]),
    MvNormal([+3.0], [+0.2;;]),
]

H = @time embeddings(rng, graph, features; layers=0, resample_graph=true);
H_split = split_by_community(H, graph)
plot_1d_embeddings(H_split)

plot_misclassification(rng, graph, features; max_layers=7, graph_samples=20)
