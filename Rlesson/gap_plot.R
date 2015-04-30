gapminder_plot_fun<-function(gapminder, outformat=c("PDF", "SVG", "PNG")) {
  means<-aggregate(cbind(lifeExp, pop) ~ country + continent, gapminder, mean)
  mean_pop<-aggregate(pop ~ country + continent, gapminder, mean)
  
  maintitle<-c("Avg. Life Expectancies vs. Population in Different Countries")
  myylab<-c("average life expectancy") 
  myxlab<-c("average population")
  
  #this if/ifelse/else statement will determine which output format is used
  if (outformat == "PDF") { #if statements determine what the plot output format will be
    pdf("gapminder_pop_vs_life_expectancy.pdf")
  }
  else if (outformat == "PNG") {
    png("gapminder_pop_vs_life_expectancy.png")
  }
  else (outformat == "SVG") {
    svg("gapminder_pop_vs_life_expectancy.svg")
  }
  plot(log(means$pop), means$lifeExp, main=maintitle, pch=20)
  text(log(means$pop), means$lifeExp, labels=means[,1], col=as.numeric(means$continent))
  dev.off()
}
