project "ImGuizmo"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"ImGuizmo.h",
		"ImGuizmo.cpp",
		"ImSequencer.h",
		"ImSequencer.cpp",
		"ImCurveEdit.h",
		"ImCurveEdit.cpp",
		"ImGradient.h",
		"ImGradient.cpp",
		"GraphEditor.h",
		"GraphEditor.cpp",
		"ImZoomSlider.h"
	}

	includedirs
	{
		"../imgui"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
