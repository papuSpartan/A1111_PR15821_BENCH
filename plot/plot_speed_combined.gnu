# set input file
datafile = 'combined.dat'

# Set terminal type and output file
set terminal pngcairo enhanced font 'Verdana,10'
set output 'speed_comparison.png'

# Set title and labels
set title sprintf("Speed Comparison by Setting, %s", datafile)
set xlabel "Setting"
#set ylabel "Speed (it/s)" offset -10,0
set ylabel "Speed (it/s)"

# Set grid and boxwidth
set grid
set boxwidth 0.5
set style fill solid

# Define x-axis labels
set xtics rotate by -45
set xtics ("baseline" 0, "hcl" 1, "hcl + last" 2, "hcl + last + half" 3)

# define bar width
set style histogram clustered gap 1
set style data histograms

# Set colors for each GPU
set style line 1 lc rgb '#8b1a0e' lt 1 lw 2  # Red for Card1
set style line 2 lc rgb '#5e9c36' lt 1 lw 2  # Green for Card2
# set style line 3 lc rgb '#0072bd' lt 1 lw 2  # Blue for Card3
#

# move key so it isn't getting covered by bars
set key left top

plot datafile using 2:xtic(1) title '2080 Super' ls 1, \
     '' using 3 title '3060' ls 2

