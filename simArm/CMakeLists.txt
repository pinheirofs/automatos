cmake_minimum_required(VERSION 3.1)

project(simArm LANGUAGES CXX)

set(CMAKE_CXX_FLAGS "-D__STRICT_ANSI__")

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt5 COMPONENTS
    Core
    Quick
    3DCore
    3DRender
    3DInput
    3DQuick
    3DLogic
    3DQuickExtras
    REQUIRED)

add_executable(${PROJECT_NAME}
    main.cpp
    qml.qrc
    actuator.hpp
    actuator.cpp
)
target_compile_definitions(${PROJECT_NAME} PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
target_link_libraries(${PROJECT_NAME} PRIVATE
    Qt5::Core
    Qt5::Quick
    Qt5::3DCore
    Qt5::3DRender
    Qt5::3DInput
    Qt5::3DQuick
    Qt5::3DLogic
    Qt5::3DQuickExtras)
