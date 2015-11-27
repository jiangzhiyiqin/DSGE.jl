#=
    This is a skeleton of what will ultimately test the entire estimation routine. For now,
    be careful, as this will take >24 hours.
=#
using DSGE

# This runs.
m = Model990()
m <= Setting(:optimize, true)
m <= Setting(:calculate_hessian, true)
estimate(m, verbose=true)

# # We want something more like this:
# m = ModelTEST()
# m <= Setting(:optimize, true)
# m <= Setting(:calculate_hessian, true)
# estimate(m, testing=true)
