# Autogenerated wrapper script for at_spi2_atk_jll for x86_64-unknown-freebsd11.1
export libatk_bridge

using at_spi2_core_jll
using ATK_jll
using Xorg_libX11_jll
using XML2_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libatk_bridge`
const libatk_bridge_splitpath = ["lib", "libatk-bridge-2.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libatk_bridge_path = ""

# libatk_bridge-specific global declaration
# This will be filled out by __init__()
libatk_bridge_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libatk_bridge = "libatk-bridge-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (at_spi2_core_jll.PATH_list, ATK_jll.PATH_list, Xorg_libX11_jll.PATH_list, XML2_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (at_spi2_core_jll.LIBPATH_list, ATK_jll.LIBPATH_list, Xorg_libX11_jll.LIBPATH_list, XML2_jll.LIBPATH_list,))

    global libatk_bridge_path = abspath(joinpath(artifact"at_spi2_atk", libatk_bridge_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libatk_bridge_handle = dlopen(libatk_bridge_path)
    push!(LIBPATH_list, dirname(libatk_bridge_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

