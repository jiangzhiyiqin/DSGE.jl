#=
    This script runs the estimation step start to finish, including reoptimizing and recalculating the Hessian.
    
    09/17/2015 ELM
=#
using DSGE

m = Model990()
m.optimize=true
m.calculate_hessian = true
new_savepath = "/data/dsge_data_dir/dsgejl/estimate/save_reop_recalc/"
create_save_directories(m, new_savepath, reset_inpath=false)

tic()
estimate(m,verbose=:low)
time_elapsed = toq()

tic()
compute_moments(m)
time_elapsed_tables = toq()

println("Julia runs the whole estimation step independently of any input from matlab.")
println("Time with reoptimizing and recalculating Hessian: $time_elapsed")
println("Time for computing tables: $time_elapsed_tables")
