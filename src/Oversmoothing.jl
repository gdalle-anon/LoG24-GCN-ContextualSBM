module Oversmoothing

## stdlibs

using Base.Threads: @threads, nthreads
using LinearAlgebra
using LinearAlgebra: checksquare
using Statistics
using Random
using Random: AbstractRNG, default_rng, rand!, randn!, randsubseq
using SparseArrays

## other deps

using CairoMakie
using Colors
using DensityInterface: DensityInterface, logdensityof, densityof
using HCubature: HCubature
using IntervalArithmetic: interval, inf, sup
using LaTeXStrings
using Latexify: latexify
using LogExpFunctions: logsumexp
using MonteCarloMeasurements: Particles
using OffsetArrays: OffsetArray, OffsetMatrix, OffsetVector, Origin
using OhMyThreads: OhMyThreads
using QuadGK: QuadGK
using StableRNGs: StableRNGs
using StaticArrays: SVector
using StatsBase: StatsBase, entropy, kldivergence, sample
using StatsFuns: binompdf, log2π, normpdf, normlogpdf

## includes

include("normal.jl")
include("mixture.jl")
include("error.jl")

include("sbm.jl")
include("random_walk.jl")
include("embeddings.jl")
include("first_layer.jl")

include("plot.jl")

## exports

export MultivariateNormal
export Mixture
export StochasticBlockModel, SBM
export ContextualStochasticBlockModel, CSBM
export nb_vertices, nb_communities
export community_size, community_range, community_of_vertex
export embeddings
export first_layer_mixtures, empirical_mixtures
export error_quadrature_1d, error_quadrature_2d
export random_walk_mixtures, random_walk_errors
export plot_1d, plot_2d

end # module Oversmoothing
