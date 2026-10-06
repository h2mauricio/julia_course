#julia --project=. modules/01-getting-started/03_basel_problem.jl
using BenchmarkTools

function basel(N::Integer)
  @assert N > 0
  s = 0.0
  for i = 1:N
    s += 1.0/float(i)^2
  end
  return s
end

result = basel(10^8) 
println(result)

#@benchmark basel(10^8) samples=10
show(stdout, MIME("text/plain"), @benchmark basel(10^8) samples=10)
println() # Add a newline after the output

#@btime basel(10^8)
