module SpecialFxns

# Write your package code here.
SPECIAL_FXN() = print("Hello!") # this is a function INSIDE the module code. We may not want all of our functions or work defined here

include("included_pkg.jl") # let's add in another file, from which we can pull functions

export my_fxn # --> this is how you make the function available for anyone that installs the package with `using SpecialFxns`
                        # try to only export functions you want publicly available, but either way someone can just `import SpecialFxns.jl` to get the functions they want
end #