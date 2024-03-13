## Guide

### Implement the model

You need to first implement your model with Turing.
We will refer to the directory of the model as **model_dir**.
Let's say there is a file called `main.jl`,
we will refer to this file as the **entrance_file** of the model:

```julia
using Turing

@model function _model(...)
    ...
end;

function model(_input)
    return _model(...)
end
```

**Note**:

1. The model is implemented in `_model`
2. There is a function named `model` which acturally calls the `_model`. The `model` function is a requirements of WithData. With a single paramenter `_input`.

### Add WithData as a dependency of you project

Project.toml:

```toml
[deps]
    ...
    WithData = "2494631e-bceb-4539-8821-5341beee86e1"
```

### Run `WithData.sample`


```julia
using WithData

WithData.ServerlessBayes.sample(model_dir)
```
