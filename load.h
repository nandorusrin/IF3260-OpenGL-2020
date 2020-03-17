// load.h
#ifndef LOAD_H
#define LOAD_H

#include <string>
#include <vector>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>

using namespace std;

struct coordinate {
    float x, y, z;
    coordinate(float xVal, float yVal, float zVal) : x(xVal), y(yVal), z(zVal) {};
};

struct face {
    int idFace;
    bool isQuad;
    int verticesId[4];
    face(int id, int vx1, int vx2, int vx3) : idFace(id) {
        verticesId[0] = vx1;
        verticesId[1] = vx2;
        verticesId[2] = vx3;
        isQuad = false; 
    }
    face(int id, int vx1, int vx2, int vx3, int vx4) : idFace(id) {
        verticesId[0] = vx1;
        verticesId[1] = vx2;
        verticesId[2] = vx3;
        verticesId[3] = vx4;
        isQuad = true; 
    }
};

struct color {
    GLbyte red;
    GLbyte green;
    GLbyte blue;
    GLbyte alpha;
    color(int r, int g, int b) : red(r), green(g), blue(b), alpha(0) {};
    color(int r, int g, int b, int a) : red(r), green(g), blue(b), alpha(a) {};
};


struct part {
    string partName;
    GLint listId;
    part(string name, GLint id) : partName(name), listId(id) {};
};

int loadFileToObject(string path);

#endif  