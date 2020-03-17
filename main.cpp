#include "load.h"
#include <math.h>
#include <X11/Xlib.h>
#include <GL/gl.h>
#include <GL/glx.h>
#include <GL/glu.h>
#include <GL/glut.h>
// #include <windows.h>
#include <SDL/SDL.h> //check your include folder, it may be just SDL.h

using namespace std;


int cube; 
// angle of rotation for the camera direction
float angle=0.0;
// actual vector representing the camera's direction
float lx=0.0f,lz=-1.0f;
// XZ position of the camera
float x=0.0f,z=5.0f;

void init();

void display(void);


int main(int argc, char** argv) {

    SDL_Init(SDL_INIT_EVERYTHING);
    SDL_Surface* screen = SDL_SetVideoMode(640,480,32,SDL_SWSURFACE|SDL_OPENGL);
    bool running = true;
    Uint32 start;
    SDL_Event event;
    init();
    while(running) {
        start = SDL_GetTicks();
        while(SDL_PollEvent(&event)) {
            switch(event.type) {
                case SDL_QUIT:
                    running=false;
                    break;
            }
        }
        display();
        SDL_GL_SwapBuffers();
        angle+=0.5;
        if(angle > 360)
            angle-=360;
        if(1000/30>(SDL_GetTicks()-start))
            SDL_Delay(1000/30-(SDL_GetTicks()-start));
    }
    SDL_Quit();
    glDeleteLists(cube,1);
    return 0;      
}


void init() {
    glClearColor(0.0,0.0,0.0,1.0);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluPerspective(45,640.0/480.0,1.0,500.0);
    glMatrixMode(GL_MODELVIEW);
    glEnable(GL_DEPTH_TEST);
    glShadeModel(GL_SMOOTH);
    cube=loadFileToObject("model/cube.obj");    //load the test.obj file
    glEnable(GL_LIGHTING);  //we enable lighting, to make the 3D object to 3D
    glEnable(GL_LIGHT0);
    float col[]={1.0,1.0,1.0,1.0};  //light color is white
    glLightfv(GL_LIGHT0,GL_DIFFUSE,col);
}

void display(void) {
    
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT);
    glLoadIdentity();
    float pos[]={-1.0,1.0,-2.0,1.0};        //set the position
    glLightfv(GL_LIGHT0,GL_POSITION,pos);
    glTranslatef(0.0,0.0,-5.0);
    glRotatef(angle,0.0,0.0,1.0);
    glCallList(cube);       //draw the 3D mesh
}
