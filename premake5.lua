project "FTXUI"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("obj/" .. outputdir .. "/%{prj.name}")

    files {
        "src/**.h",
        "src/**.hpp",
        "src/**.cpp",
        "include/**.h",
        "include/**.hpp"
    }

    removefiles {
        "src/**test.h",
        "src/**test.hpp",
        "src/**test.cpp"
    }

    includedirs {
        "src",
        "include"
    }

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"