# set input file
datafile = '4070.dat'

# Set terminal type and output file
set terminal pngcairo enhanced font 'Verdana,10'
set output 'speed_comparison.png'

# Set title and labels
set title sprintf("Speed Comparison by Setting, %s", datafile)
set xlabel "Setting"
set ylabel "Speed (it/s)"

# Set grid and boxwidth
set grid
set boxwidth 0.5
set style fill solid

# Define x-axis labels
set xtics rotate by -45
set xtics ("baseline" 0, "hcl" 1, "hcl + last" 2, "hcl + last + half" 3)

set key left top

# Plot the data
plot datafile using ($0):2:xtic(1) with boxes title 'Speed (it/s)'

