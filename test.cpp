#include <GL/glut.h>
#include <stdio.h>
#include "load.h"

vector<part*> parts; 
GLfloat viewangle = 0, tippangle = 0;
GLfloat d[3] = {0.1, 0.1, 0.1};

GLfloat  xAngle = 0.0, yAngle = 0.0, zAngle = 0.0;
GLint plane;

string partName[] = {
    "sayap-bawah",
    "badan",
    "sayap-atas",
    "ekor-tegak",
    "ekor-datar",
    "baling" 
};

void init(void){
    // Setting up initial app state
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glShadeModel(GL_SMOOTH);
    glEnable(GL_BLEND);
    // load model
    // for (int i = 0; i < 6; ++i) {
        plane = loadFileToObject("model/biplane.obj");
        // parts.push_back(new part(partName[i], id));
    //}

}

void display(void) {
    glClear  (GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    glEnable (GL_DEPTH_TEST);
    glLoadIdentity ();

    // Apply the rotations
    glTranslatef (0, 0, -3);
    glRotatef (tippangle, 1,0,0);  // Up and down arrow keys 'tip' view.
    glRotatef (viewangle, 0,1,0);  // Right/left arrow keys 'turn' view.
    
    glPushMatrix();
    
    glTranslatef (d[0], d[1], d[2]);    // Move box down X axis.
    glScalef (0.2, 0.2, 0.2);
    glRotatef (zAngle, 0,0,1);
    glRotatef (yAngle, 0,1,0);
    glRotatef (xAngle, 1,0,0);
    
    // for (int i = 0; i < parts.size(); ++i)
    //     glCallList(parts[i]->listId);
    glCallList(plane);
       
    glPopMatrix ();
    glutSwapBuffers();
    glFlush();
}

void Special_Keys (int key, int x, int y) {
    switch (key) {

       case GLUT_KEY_LEFT :  viewangle -= 5;  break;
       case GLUT_KEY_RIGHT:  viewangle += 5;  break;
       case GLUT_KEY_UP   :  tippangle -= 5;  break;
       case GLUT_KEY_DOWN :  tippangle += 5;  break;

       default: printf ("   Special key %c == %d", key, key);
    }

    glutPostRedisplay();
}

//keyboard event handler
void keyboard(unsigned char key, int x, int y) {
    switch (key) {

       case 'j' : d[0] += 0.1;  break;
       case 'k' : d[1] += 0.1;  break;
       case 'l' : d[2] += 0.1;  break;

       case 'x' : xAngle += 5;  break;
       case 'y' : yAngle += 5;  break;
       case 'z' : zAngle += 5;  break;
       case 27  : exit(0);
 
       default: printf ("   Keyboard %c == %d", key, key);
    }

    glutPostRedisplay();
}


int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
    glutInitWindowSize(500, 500);
    glutInitWindowPosition(100, 100);
    glutCreateWindow(argv[0]);
    init();
    glutDisplayFunc(display);
    glutSpecialFunc  (Special_Keys);
    glutKeyboardFunc(keyboard);
    glClearColor (0.1, 0.0, 0.1, 1.0);

    glMatrixMode   (GL_PROJECTION);
    gluPerspective (60, 1.5, 1, 10);
    glMatrixMode   (GL_MODELVIEW);
    glutMainLoop();
    for (int i = 0; i < parts.size(); ++i)  {
        glDeleteLists(parts[i]->listId, 1);
        delete parts[i];
    }
    return 0;
}
