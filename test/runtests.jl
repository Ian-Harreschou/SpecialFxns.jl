# here is some space where we can enter in our tests, so that we can ensure functions from the modules have their proper "scope"
# if we start a brand new Julia REPL (Alt + J, Alt + R) then we can see that the function is not defined. That's because we didn't EXPORT the function from its code
using SpecialFxns
using Test


my_other_fxn(1,2) # --> method #1, with new REPL this will not be recognized
# SpecialFxns.my_other_fxn(1,2) # --> method #2, `my_other_fxn` LIVES inside of the package. Inside the package, we added `included_pkg.jl`, which contains our function


@testset "SpecialFxns.jl" begin

    my_other_fxn(1,2)

end
