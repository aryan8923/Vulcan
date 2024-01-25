using CairoMakie

n_points = 100 #number of x points 
x_arr = (range(start=0.99,stop=1.001,length=n_points)) #array of x points

println("Number of points = $(length(x_arr))")

#p(x) = (1-x)^8 written in different ways

p(x) = (1-x)^8 
q(x) = 1-(8x)+28(x*x)-56(x*x*x)+70(x*x*x*x)-56(x*x*x*x*x)+28(x*x*x*x*x*x)-8(x*x*x*x*x*x*x)+(x*x*x*x*x*x*x*x)
r(x) = 1-8(x)+28(x^2)-56(x^3)+70(x^4)-56(x^5)+28(x^6)-8(x^7)+x^8

p_arr = p.(x_arr)
q_arr = q.(x_arr)
r_arr = r.(x_arr)

#plotting
fig = Figure()
ax_pq = Axis(fig[1,1])
lines!(ax_pq,x_arr,p_arr,label="p(x)")
lines!(ax_pq,x_arr,q_arr,label="q(x)")
axislegend()

ax_pr = Axis(fig[2,1])
lines!(ax_pr,x_arr,p_arr,label="p(x)")
lines!(ax_pr,x_arr,r_arr,label="r(x)")
axislegend()

fig
