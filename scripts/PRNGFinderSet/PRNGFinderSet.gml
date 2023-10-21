/// @param state

function PRNGFinderSet(_state)
{
    static _struct = __PRNGFinderSystem();
    _struct.__state = _state;
}