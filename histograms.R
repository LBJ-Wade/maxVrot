data=read.csv("HyperLeda_data.txt", header=TRUE, sep=',')

pdf('histograms.pdf')

par(mfrow=c(2,2))
with(data,hist(vmaxg, breaks=15, main='Gas vmax', col='grey', xlim = c(0,500), xlab = 'gas vmax (km/s)'))
with(data,hist(vmaxs, breaks=15, main='Stars vmax', col='grey', xlim = c(0,300), xlab = 'stars vmax (km/s)'))

with(data,hist(mabs, breaks=15, main='B Band Absolute Magnitude', col='grey', xlab = 'B (mag)'))
with(data,hist(t, breaks=15, main='Morphological Types', col='grey', xlim = c(-5,10), xlab = 'T'))

dev.off()