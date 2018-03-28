### Helper functions ###



enrichment=function(testSet, fullSet){ ## this function takes two arguments, a test set of the functional annotations that are being inquired and 
                                       ## the full set of functional annotations available for that organism. 
                                       ## it calculates then a Fisher's exact test for over-representation of functional annotations in the test set
                                       ## and returns the odds ratio and the adjusted p-value (after BH multiple-test correction)
  testSet=table(testSet)
  fullSet=table(fullSet)
  enrichTable=cbind(fullSet, testSet[names(fullSet)])
  enrichTable[is.na(enrichTable)]=0
  odds=c()
  pval=c()
  for(i in 1:nrow(enrichTable)){
    odds[i]=fisher.test(matrix(c(enrichTable[i,2], sum(enrichTable[,2])-enrichTable[i,2], enrichTable[i,1]-enrichTable[i,2], sum(enrichTable[,1])-sum(enrichTable[,2])-enrichTable[i,1]+enrichTable[i,2]), nrow=2, byrow=T), alternative = "g")[[3]]
    pval[i]=fisher.test(matrix(c(enrichTable[i,2], sum(enrichTable[,2])-enrichTable[i,2], enrichTable[i,1]-enrichTable[i,2], sum(enrichTable[,1])-sum(enrichTable[,2])-enrichTable[i,1]+enrichTable[i,2]), nrow=2, byrow=T), alternative = "g")[[1]]
  }
  enrichTable=cbind(enrichTable, odds, p.adjust(pval, method = "BH"))
  colnames(enrichTable)=c("fullSet", "testSet", "OddsRatio", "Adjusted p-val")
  return(enrichTable)
}
