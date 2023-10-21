function PRNGFinderGet()
{
    static _struct = __PRNGFinderSystem();
    return _struct.__state;
}