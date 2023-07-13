# this is another file that will be `included` in SpecialFxns.jl, since this is also found in the src folder 
my_fxn(x,y) = 3x+y

second_fxn(x,y,z) = 2x + 3y + 7z

d_my_fxn(x,y) = ForwardDiff.dervative(x -> my_fxn(x,y), x)

# cmd = `$(Base.julia_cmd()) --startup-file=no -e "println(@isdefined SpecialFxns)"`
# run(cmd);

# cmd = `$(Base.julia_cmd()) --startup-file=yes -e "println(@isdefined SpecialFxns)"`
# run(cmd);