# LoG24-GCN-ContextualSBM

Research code on the behavior of [Graph Convolutional Networks](https://en.wikipedia.org/wiki/Graph_neural_network#Graph_convolutional_network) applied to the Contextual [Stochastic Block Model](https://en.wikipedia.org/wiki/Stochastic_block_model).

## Experiments

Our experiments are coded with the [Julia programming language](https://julialang.org/downloads/) and run inside [Pluto notebooks](https://plutojl.org/). To reproduce them:

1. Clone or download the present repository.
2. Install Julia following [these instructions](https://julialang.org/downloads/). On Unix systems, the following command is enough:
```bash
curl -fsSL https://install.julialang.org | sh
```
3. Navigate to the `Log24-GCN-ContextualSBM` folder you just created, then start a Julia REPL there by typing `julia` in your terminal.
4. Install and launch Pluto following [these instructions](https://plutojl.org/#install). This involves running two lines in the Julia REPL:

```julia
import Pkg; Pkg.add("Pluto")
import Pluto; Pluto.run()
```
5. A new tab will open in your usual web browser, like for Jupyter notebooks. Open the notebook located at [`experiments/notebook.jl`](./experiments/notebook.jl).
6. In the top left corner, click on "Run notebook code". Dependencies will be installed automatically. You can keep track of progress in the "Status" tab of the bottom right corner.
7. Once the experiments are done (which should take under 30 minutes), plots will be saved in the subfolder named [`experiments/images`](./experiments/images/).
