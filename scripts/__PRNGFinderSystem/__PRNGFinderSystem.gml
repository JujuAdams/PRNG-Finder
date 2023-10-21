#macro __PRNG_FINDER_ALLOWED  (PRNG_FINDER_ALLOWED && (GM_build_type == "run") && PRNGFinderGet())
#macro __PRNG_FINDER_LTS  true

show_debug_message("Welcome to PRNG Finder by Juju Adams!");

try
{
    array_shuffle([]);
    
    if (__PRNG_FINDER_LTS)
    {
        show_error("PRNG Finder:\nThis version is built for LTS 2022.\nPlease update your version of PRNG Finder to GameMaker 2023.\n ", true);
    }
}
catch(_error)
{
    if (not __PRNG_FINDER_LTS)
    {
        show_error("PRNG Finder:\nThis version is built for GameMaker 2023.\nPlease downgrade your version of PRNG Finder to GameMaker LTS 2022.\n ", true);
    }
}

function __PRNGFinderSystem()
{
    static _struct = {
        __state: false,
    };
    
    return _struct;
}

function __PRNGError(_functionName)
{
    if (PRNG_FINDER_ERROR)
    {
        show_error("PRNG Finder:\nUse of function \"" + _functionName + "\" found\n ", true);
    }
    else
    {
        show_debug_message("PRNG Finder: Warning! Use of function \"" + _functionName + "\" found " + string(debug_get_callstack()));
    }
}

//random_set_seed()
#macro random_set_seed  __PRNGFinder_random_set_seed
#macro __PRNGFinder_random_set_seed__  random_set_seed
function __PRNGFinder_random_set_seed()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("random_set_seed");
    return __PRNGFinder_random_set_seed__(argument0);
}

//random(x)
#macro random  __PRNGFinder_random
#macro __PRNGFinder_random__  random
function __PRNGFinder_random()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("random");
    return __PRNGFinder_random__(argument0);
}

//random_range(x, y)
#macro random_range  __PRNGFinder_random_range
#macro __PRNGFinder_random_range__  random_range
function __PRNGFinder_random_range()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("random_range");
    return __PRNGFinder_random_range__(argument0, argument1);
}

//irandom(x)
#macro irandom  __PRNGFinder_irandom
#macro __PRNGFinder_irandom__  irandom
function __PRNGFinder_irandom()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("irandom");
    return __PRNGFinder_irandom__(argument0);
}

//irandom_range(x, y)
#macro irandom_range  __PRNGFinder_irandom_range
#macro __PRNGFinder_irandom_range__  irandom_range
function __PRNGFinder_irandom_range()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("irandom_range");
    return __PRNGFinder_irandom_range__(argument0, argument1);
}

//randomize(x)
#macro randomize  __PRNGFinder_randomize
#macro __PRNGFinder_randomize__  randomize
function __PRNGFinder_randomize()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("randomize");
    return __PRNGFinder_randomize__();
}

//move_random(x, y)
#macro move_random  __PRNGFinder_move_random
#macro __PRNGFinder_move_random__  move_random
function __PRNGFinder_move_random()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("move_random");
    return __PRNGFinder_move_random__(argument0, argument1);
}

//ds_grid_shuffle(id)
#macro ds_grid_shuffle  __PRNGFinder_ds_grid_shuffle
#macro __PRNGFinder_ds_grid_shuffle__  ds_grid_shuffle
function __PRNGFinder_ds_grid_shuffle()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("ds_grid_shuffle");
    return __PRNGFinder_ds_grid_shuffle__(argument0);
}

//ds_list_shuffle(id)
#macro ds_list_shuffle  __PRNGFinder_ds_list_shuffle
#macro __PRNGFinder_ds_list_shuffle__  ds_list_shuffle
function __PRNGFinder_ds_list_shuffle()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("ds_list_shuffle");
    return __PRNGFinder_ds_list_shuffle__(argument0);
}

//part_emitter_burst(ps, ind, pattype, number)
#macro part_emitter_burst  __PRNGFinder_part_emitter_burst
#macro __PRNGFinder_part_emitter_burst__  part_emitter_burst
function __PRNGFinder_part_emitter_burst()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("part_emitter_burst");
    return __PRNGFinder_part_emitter_burst__(argument0, argument1, argument2, argument3);
}

//part_particles_create(ind, x, y, parttype, number)
#macro part_particles_create  __PRNGFinder_part_particles_create
#macro __PRNGFinder_part_particles_create__  part_particles_create
function __PRNGFinder_part_particles_create()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("part_particles_create");
    return __PRNGFinder_part_particles_create__(argument0, argument1, argument2, argument3, argument4);
}

//part_particles_create_color(ind, x, y, parttype, color, number)
#macro part_particles_create_color  __PRNGFinder_part_particles_create_color
#macro __PRNGFinder_part_particles_create_color__  part_particles_create_color
function __PRNGFinder_part_particles_create_color()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("part_particles_create_color");
    return __PRNGFinder_part_particles_create_color__(argument0, argument1, argument2, argument3, argument4, argument5);
}

//choose(...)
#macro choose  __PRNGFinder_choose
#macro __PRNGFinder_choose__  choose
function __PRNGFinder_choose()
{
    if (__PRNG_FINDER_ALLOWED) __PRNGError("choose");
    
    switch(argument_count)
    {
        case  0: return choose();
        case  1: return choose(argument0);
        case  2: return choose(argument0, argument1);
        case  3: return choose(argument0, argument1, argument2);
        case  4: return choose(argument0, argument1, argument2, argument3);
        case  5: return choose(argument0, argument1, argument2, argument3, argument4);
        case  6: return choose(argument0, argument1, argument2, argument3, argument4, argument5);
        case  7: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6);
        case  8: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
        case  9: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8);
        case 10: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9);
        case 11: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10);
        case 12: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11);
        case 13: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12);
        case 14: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13);
        case 15: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14);
        case 16: return choose(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13, argument14, argument15);
    
        default:
            show_error("PRNG Finder:\nArgument count " + string(argument_count) + " not supported\n ", true);
        break;
    }
}

////array_shuffle(array)
//#macro array_shuffle  __PRNGFinder_array_shuffle
//#macro __PRNGFinder_array_shuffle__  array_shuffle
//function __PRNGFinder_array_shuffle()
//{
//    if (__PRNG_FINDER_ALLOWED) __PRNGError("array_shuffle");
//    return __PRNGFinder_array_shuffle__(argument0, argument1, argument2);
//}
//
////array_shuffle_ext(array)
//#macro array_shuffle_ext  __PRNGFinder_array_shuffle_ext
//#macro __PRNGFinder_array_shuffle_ext__  array_shuffle_ext
//function __PRNGFinder_array_shuffle_ext()
//{
//    if (__PRNG_FINDER_ALLOWED) __PRNGError("array_shuffle_ext");
//    return __PRNGFinder_array_shuffle_ext__(argument0, argument1, argument2);
//}
//
////part_particles_burst(ind, x, y, partsys)
//#macro part_particles_burst  __PRNGFinder_part_particles_burst
//#macro __PRNGFinder_part_particles_burst__  part_particles_burst
//function __PRNGFinder_part_particles_burst()
//{
//    if (__PRNG_FINDER_ALLOWED) __PRNGError("part_particles_burst");
//    return __PRNGFinder_part_particles_burst__(argument0, argument1, argument2, argument3);
//}