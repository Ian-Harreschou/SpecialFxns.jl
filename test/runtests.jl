# here is some space where we can enter in our tests, so that we can ensure functions from the modules have their proper "scope"
# if we start a brand new Julia REPL (Alt + J, Alt + R) then we can see that the function is not defined. That's because we didn't EXPORT the function from its code
using SpecialFxns 
using Test

d_my_fxn(3,1)

# 3x + y
my_fxn(1,2) # --> method #1, with new REPL this will not be recognized
SpecialFxns.my_fxn(1,2) # --> method #2, `my_other_fxn` LIVES inside of the package. Inside the package, we added `included_pkg.jl`, which contains our function

SpecialFxns.SPECIAL_FXN() # this function didn't use `export` so we have to call it through this method

@testset "SpecialFxns.jl" begin

    # 3x + y
    @test my_fxn(1,2) == 5
    @test my_fxn(9,4) == 31
    @test my_fxn(4,3) == 15

end