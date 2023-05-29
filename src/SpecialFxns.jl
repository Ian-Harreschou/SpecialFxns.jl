module SpecialFxns

# Write your package code here.
SPECIAL_FXN() = print("Hello!")

include("included_pkg.jl")

export my_other_fxn # --> this is how you make the function available for anyone that installs the package with `using SpecialFxns`


end