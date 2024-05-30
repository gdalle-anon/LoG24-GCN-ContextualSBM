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

using DensityInterface: DensityInterface, densityof, logdensityof
using Distributions: Binomial, MultivariateDistribution, MvNormal, logpdf, pdf
using KernelDensity: kde
using LogarithmicNumbers: LogFloat64, Logarithmic
using LogExpFunctions: logsumexp
using OhMyThreads: tmap, tforeach
using ProgressMeter: Progress, next!
using StatsBase: StatsBase, sample
using StatsFuns: binompdf, log2π, normpdf, normlogpdf

## includes

include("mixture.jl")
include("random_graph.jl")
include("erdos_renyi.jl")
include("stochastic_block_model.jl")
include("embeddings.jl")
include("state_evolution.jl")
include("kde.jl")

## function stubs for extensions

function plot_1d_embeddings end
function plot_2d_embeddings end
function plot_misclassification end

## exports

export AbstractRandomGraph
export Mixture
export ErdosRenyi, ER, StochasticBlockModel, SBM
export community_size, community_range, community_of_vertex
export embeddings, split_by_community
export state_evolution
export density_estimator, empirical_kl, misclassification_probability
export plot_1d_embeddings, plot_2d_embeddings
export plot_misclassification

end # module Oversmoothing
