# Autogenerated wrapper script for at_spi2_atk_jll for x86_64-linux-gnu
export libatk_bridge

using at_spi2_core_jll
using ATK_jll
using Xorg_libX11_jll
using XML2_jll
JLLWrappers.@generate_wrapper_header("at_spi2_atk")
JLLWrappers.@declare_library_product(libatk_bridge, "libatk-bridge-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(at_spi2_core_jll, ATK_jll, Xorg_libX11_jll, XML2_jll)
    JLLWrappers.@init_library_product(
        libatk_bridge,
        "lib/libatk-bridge-2.0.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
