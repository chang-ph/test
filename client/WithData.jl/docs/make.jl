using Documenter, WithData

makedocs(sitename="WithData.jl",
    modules = [WithData],
    pages=[
        "Guide" => "index.md",
        "References" => [
            "references.md",
        ]
    ],
)

deploydocs(
    repo = "github.com/chang-ph/test",
    devbranch="t",
)
