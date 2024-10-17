library(myTAI)

### TAI example
data(PhyloExpressionSetExample)
head(PhyloExpressionSetExample[ , c("Phylostratum", "GeneID")])


Example.PhylostratigraphicMap <- PhyloExpressionSetExample[ , 1:2]
Example.ExpressionMatrix <- PhyloExpressionSetExample[ , 2:9]

Example.PhyloExpressionSet <- MatchMap(Example.PhylostratigraphicMap, Example.ExpressionMatrix)

head(Example.PhyloExpressionSet, 3)

is.ExpressionSet(Example.PhyloExpressionSet)

PlotSignature(ExpressionSet = Example.PhyloExpressionSet, measure="TAI", TestStatistic="FlatLineTest", xlab="Ontogeny", ylab="TAI")

PlotCategoryExpr(ExpressionSet = Example.PhyloExpressionSet, legendName="PS", test.stat=TRUE, type="category-centered", distr.type="boxplot", log.expr=TRUE)

PlotRE(Example.PhyloExpressionSet, Groups=list(c(1:3), c(4:12)), legendName="PS", adjust.range=TRUE)

### TDI example

data("DivergenceExpressionSetExample")

PlotSignature(ExpressionSet=DivergenceExpressionSetExample, measure="TDI", TestStatistic="ReductiveHourglassTest", modules=list(early=1:2, mid=3:5, late=6:7),xlab="Ontogeny", ylab="TDI")

TDI(DivergenceExpressionSetExample)

PlotContribution(ExpressionSet=Example.PhyloExpressionSet, legendName = "PS", xlab="Ontogeny", ylab="TAI", y.ticks=10)

pTAI(Example.PhyloExpressionSet)

pMatrix(Example.PhyloExpressionSet)

PlotMeans(ExpressionSet= Example.PhyloExpressionSet, Groups=list(group_1 = 1:3, group_2 = 4:12), legendName = "PS")

PlotRE(ExpressionSet = Example.PhyloExpressionSet, Groups = list(1:12), legendName = "PS", xlab="Ontogeny")

PlotDistribution(PhyloExpressionSet = Example.PhyloExpressionSet, as.ratio= TRUE, xlab="Phylostratum")
