using JuMP
using Ipopt
    model = Model(Ipopt.Optimizer)
    @variable(model, x1 >= 0)
    @variable(model, x2 >= 0)
    @constraint(model, 2x1 + x2 >= 1)
    @constraint(model, x1 + 3x2 >= 1)
    @objective(model, Min, x1 + x2)
    optimize!(model)
    return value(x1), value(x2), objective_value(model)
end

