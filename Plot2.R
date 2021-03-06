##Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == “24510”) from 1999 to 2008? Use the base plotting system to make a plot answering this question.


baltcitymary.emissions<-summarise(group_by(filter(NEI, fips == "24510"), year), Emissions=sum(Emissions))
clrs <- c("red", "green", "blue", "yellow")
x2<-barplot(height=baltcitymary.emissions$Emissions/1000, names.arg=baltcitymary.emissions$year,
        xlab="years", ylab=expression('total PM'[2.5]*' emission in kilotons'),ylim=c(0,4),
        main=expression('Total PM'[2.5]*' emissions in Baltimore City-MD in kilotons'),col=clrs)

## Add text at top of bars
text(x = x2, y = round(baltcitymary.emissions$Emissions/1000,2), label = round(baltcitymary.emissions$Emissions/1000,2), pos = 3, cex = 0.8, col = "black")
