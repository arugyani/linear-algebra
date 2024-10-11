using Plots

# Choose a backend that supports animation
gr()  # You can use PlotlyJS() for interactive plots

# Define the vector v
v = [1, 1]

# Define a range of scalar values c
c_values = -3:0.1:3

# Create an animation
anim = @animate for c in c_values
    # Initialize the plot with desired attributes
    plt = plot(
        aspect_ratio=:equal,
        legend=:topright,
        xlabel="x",
        ylabel="y",
        title="Visualization of Scalar Multiplication c * v",
        xlims=(-4, 4),
        ylims=(-1, 7),
        grid=true,
    )

    # Plot the original vector v
    quiver!(
        plt,
        [0], [0],
        quiver=([v[1]], [v[2]]),
        color=:blue,
        label="v",
        arrow=(:closed, 0.2),
        linewidth=2,
    )

    # Compute c * v
    cv = c * v

    # Plot the scalar multiple c * v
    quiver!(
        plt,
        [0], [0],
        quiver=([cv[1]], [cv[2]]),
        color=:red,
        label="c * v",
        arrow=(:closed, 0.2),
        linewidth=2,
    )

    # Draw the line formed by all scalar multiples of v
    x_line = [c_i * v[1] for c_i in -3:0.1:3]
    y_line = [c_i * v[2] for c_i in -3:0.1:3]
    plot!(
        plt,
        x_line,
        y_line,
        label="",
        linestyle=:dash,
        color=:gray,
        alpha=0.5,
    )

    # Annotate c value
    annotate!(
        plt,
        -2.5, 3.5,
        text("c = $(round(c, digits=2))", :left, 12, :black)
    )
end

# Save the animation as a GIF
gif(anim, "scalar_multiplication.gif", fps=15)
