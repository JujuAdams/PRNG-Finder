//Whether PRNG Finder is allowed at all. Setting this to <false> will override PRNGFinderSet() and
//entirely disable PRNG Finder.
#macro PRNG_FINDER_ALLOWED  true

//Whether PRNG Finder should crash when finding a function that uses GameMaker's internal PRNG
//system. Setting this to <false> will instead throw warnings out to the output log.
#macro PRNG_FINDER_ERROR  true