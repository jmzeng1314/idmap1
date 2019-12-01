##' get the gene symbols of probes for each GPL
##'
##' getIDs need the name of GPL, such as GPL570, and it will return a data.frame
##'
##' @param gpl the name of GPL, such as GPL570
##' @return a data.frame which contains the gene symbols of probes
##' @examples
##' getIDs('gpl570')
##' @export

getIDs <- function(gpl){
  # gpl='gpl570'
  gpl=toupper(gpl)
  if(!gpl %in% unique(p2s_df$gpl)){
    stop('your gpl is not in our annotation list.')
  }
  return(p2s_df[p2s_df$gpl==gpl,])
}
