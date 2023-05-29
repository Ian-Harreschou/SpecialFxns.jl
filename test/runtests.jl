# here is some space where we can enter in our tests, so that we can ensure functions from the modules have their proper "scope"
# 
using SpecialFxns
using Test

my_other_fxn(1,2)


@testset "SpecialFxns.jl" begin

    my_other_fxn(1,2)

end
