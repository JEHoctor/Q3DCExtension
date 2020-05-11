include(ExternalProject)

set(proj ${SUPERBUILD_TOPLEVEL_PROJECT})
set(${proj}_DEPENDS python-Q3DC-requirements)

ExternalProject_Include_Dependencies(${proj}
	PROJECT_VAR proj
	SUPERBUILD_VAR ${EXTENSION_NAME}_SUPERBUILD
	)

ExternalProject_Add(${proj}
	${${proj}_EP_ARGS}
	DOWNLOAD_COMMAND ""
	INSTALL_COMMAND ""
	SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}
	BINARY_DIR ${EXTENSION_BUILD_SUBDIRECTORY}
	BUILD_ALWAYS 1
	DEPENDS ${${proj}_DEPENDS}
	)

ExternalProject_AlwaysConfigure(${proj})
