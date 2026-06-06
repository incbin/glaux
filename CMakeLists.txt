cmake_minimum_required(VERSION 3.15...4.0)
project(libglaux C)

add_library(libglaux-static STATIC
    ./src/3d.h
    ./src/font.c
    ./src/glaux.c
    ./src/image.c
    ./src/shapes.c
    ./src/teapot.c
    ./src/teapot.h
    ./src/tk.c
    ./src/tk.h
    ./src/tkdib.c
    ./src/tkfont.c
    ./src/tkimage.c
    ./src/vect3d.c
    ./src/xform.c
)

target_include_directories(libglaux-static PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
