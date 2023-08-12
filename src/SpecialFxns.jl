module SpecialFxns

    #using ForwardDiff # here we can list other packages that we need in using `SpecialFxns`. This won't work immediately because we haven't specified the dependencies of our package!
                        # dependencies are all shown within the Project.toml file

    # Write your package code here.
    # SPECIAL_FXN() = print("Hello!") # this is a function INSIDE the module code. We may not want all of our functions or work defined here

    include("included_pkg.jl") # let's add in another file, from which we can pull functions

    export legendre_Pn # --> this is how you make the function available for anyone that installs the package with `using [Module]`
                            # try to only export functions you want publicly available, but either way someone can just `import SpecialFxns.jl` to get the functions they want 
end