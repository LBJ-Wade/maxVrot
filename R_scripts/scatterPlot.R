data=read.csv("HyperLeda_data.txt", header=TRUE, sep=',')

pdf('stellarVmax.pdf')
par(mfrow=c(2,1))
rbPal <- colorRampPalette(c('blue','green'))
data$Col <- rbPal(10)[as.numeric(cut(data$vmaxg,breaks = 10))]
with(data,plot(mabs, vmaxs, col=data$Col, xlim = c(-15,-23), cex=1, pch=16, xlab = 'B (mag)', ylab = 'Stars vmax (km/s)'))
with(data,plot(t, vmaxs, col=data$Col, xlim = c(-5,10), cex=1, pch=16, xlab = 'T', ylab = 'Stars vmax (km/s)'))
dev.off()

pdf('gasVmax.pdf')
par(mfrow=c(2,1))
rbPal <- colorRampPalette(c('yellow','red'))
data$Col <- rbPal(10)[as.numeric(cut(data$vmaxs,breaks = 10))]
with(data,plot(mabs, vmaxg, col=data$Col, xlim = c(-15,-23), cex=1, pch=16, xlab = 'B (mag)', ylab = 'Gas vmax (km/s)'))
with(data,plot(t, vmaxg, col=data$Col, cex=1, xlim = c(-5,10), pch=16, xlab = 'T', ylab = 'Gas vmax (km/s)'))
dev.off()

pdf('vvv.pdf')
rbPal <- colorRampPalette(c('blue','red'))
data$Col <- rbPal(10)[as.numeric(cut(data$mabs,breaks = 10))]
with(data,scatter.smooth(vmaxg, vmaxs, col=data$Col, cex=1, pch=16, xlab = 'Gas vmax (km/s)', ylab = 'Stellar vmax (km/s)', lpars =list(col = "black", lwd = 3)))
dev.off()
