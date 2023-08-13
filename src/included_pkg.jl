# this is another file that will be `included` in SpecialFxns.jl, since this is also found in the src folder 
my_fxn(x,y) = 3x+y

second_fxn(x,y,z) = 2x + 3y + 7z

d_my_fxn(x,y) = ForwardDiff.derivative(x -> my_fxn(x,y), x)

# cmd = `$(Base.julia_cmd()) --startup-file=no -e "println(@isdefined SpecialFxns)"`
# run(cmd);

# cmd = `$(Base.julia_cmd()) --startup-file=yes -e "println(@isdefined SpecialFxns)"`
# run(cmd);

"""

"""

function legendre_Pn(x::Float64,n::Int)

    PN = zeros(1,n) # Legendre polynomial of degree 'n'. Initialize an array of size 1:n
    PD = zeros(1,n) # Derivative of the Legendre polynomial of degree 'n' . Initialize an array of size 1:n

    PN[1] = 0.0
    PN[2] = x 

    PD[1] = 0.0
    PD[2] = 1.0

    P₀(x) = 1 # 1st Legendre polynomial
    P₁(x) = x # 2nd Legendre polynomial

        for k = 2:n
        
            Pf = (2 * k - 1.0) / k * x * P₁(x) - (k - 1.0)/k*P₀(x)
            
            PN[k] = Pf

            if abs(x) == 1.0
                    PD[k] = 1/2 * x ^ (k + 1.0) * k * (k + 1.0)
            else
                PD[k] = (k / (1.0 - x^2)) * (P₁ - x*Pf)
            
            P₀ = P₁
            P₁ = Pf
            end
        end

        return PN, PD
end