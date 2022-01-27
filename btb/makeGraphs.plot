set terminal png

set title "BMR with 1024 branches"
set output "1024b.png"
set style data linespoints
set grid
set ylabel "Branch Misprediction Rate"
set xlabel "Distance"
set key box left top
set logscale x 2
plot "1024N_dados" using 1:2 title "BMR"

set title "BMR with 2048 branches"
set output "2048b.png"
set style data linespoints
set grid
set ylabel "Branch Misprediction Rate"
set xlabel "Distance"
set key box left top
set logscale x 2
plot "2048N_dados" using 1:2 title "BMR"

set title "BMR with 4096 branches"
set output "4096b.png"
set style data linespoints
set grid
set ylabel "Branch Misprediction Rate"
set xlabel "Distance"
set key box left top
set logscale x 2
plot "4096N_dados" using 1:2 title "BMR"

#set title "BMR with 8192 branches"
#set output "8192b.png"
#set style data linespoints
#set grid
#set ylabel "Branch Misprediction Rate"
#set xlabel "Distance"
#set key box left top
#set logscale x 2
#plot "8192N_dados" using 1:2 title "BMR"
#
#set title "BMR with 16384 branches"
#set output "16384b.png"
#set style data linespoints
#set grid
#set ylabel "Branch Misprediction Rate"
#set xlabel "Distance"
#set key box left top
#set logscale x 2
#plot "16384N_dados" using 1:2 title "BMR"

set title "BMR varying number of loops and distance"
set output "all.png"
set style data linespoints
set grid
set ylabel "Branch Misprediction Rate"
set xlabel "Distance"
set key box left top
set logscale x 2
plot "1024N_dados" using 1:2 title "1024 loops", \
     "2048N_dados" using 1:2 title "2048 loops", \
     "4096N_dados" using 1:2 title "4096 loops"
#     "8192N_dados" using 1:2 title "8192 loops", \
#     "16384N_dados" using 1:2 title "16384 loops"
