data=read.csv("HyperLeda_data.txt", header=TRUE, sep=',')

sink('correlationResults.txt')
cor.test(data$vmaxs, data$mabs, method=c("pearson"))
cor.test(data$vmaxs, data$t, method=c("pearson"))

cor.test(data$vmaxg, data$mabs, method=c("pearson"))
cor.test(data$vmaxg, data$t, method=c("pearson"))

cor.test(data$vmaxs, data$vmaxg, method=c("pearson"))

sink()

