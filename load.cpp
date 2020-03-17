#include "load.h"
#include <string>
#include <vector>
#include <algorithm>
#include <fstream>
#include <iostream>
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>

using namespace std;

struct coordinate;

struct face;

struct part;

struct color;

int loadFileToObject(string path) {

    vector<string*> lines;
    vector<coordinate*> vertices;
    vector<coordinate*> normals;
    vector<face*> faces;
    vector<color*> colors;

    // open file
    ifstream input(path);

    if (!input.is_open()) {
        cout << "IFSTREAM :: " + path + " Not Opened" << endl;
        return -1;
    }

    char buffer[256];

    while (!input.eof()) {
        input.getline(buffer, 256);
        lines.push_back(new string(buffer));
    }

    int i;
    for (i = 0; i < lines.size(); ++i) {
        if(lines[i]->c_str()[0] == '#')    // if it is a comment (the first character is #)
            continue;                      // we don't care about that
        
        else if(lines[i]->c_str()[0]=='v') {
            
            float tmpx, tmpy, tmpz;
            sscanf(lines[i]->c_str(),"v %f %f %f", &tmpx, &tmpy, &tmpz);  //read in the 3 float coordinate to tmpx,tmpy,tmpz
            vertices.push_back(new coordinate(tmpx, tmpy ,tmpz));         //and then add it to the end of our vertex list
        } else if(lines[i]->c_str()[0]=='n') {
            
            float tmpx, tmpy, tmpz;   //do the same thing
            sscanf(lines[i]->c_str(),"n %f %f %f", &tmpx, &tmpy, &tmpz);
            normals.push_back(new coordinate(tmpx, tmpy, tmpz));     
        } else if(lines[i]->c_str()[0]=='f') {
            
            int faceId, vx1, vx2, vx3, vx4;
            if(count(lines[i]->begin(),lines[i]->end(),' ') == 3) {
                sscanf(lines[i]->c_str(),"f %d//%d %d//%d %d//%d", &vx1, &faceId, &vx2, &faceId, &vx3, &faceId);
                faces.push_back(new face(faceId, vx1, vx2, vx3));        //read in, and add to the end of the face list
            } else {
                sscanf(lines[i]->c_str(),"f %d//%d %d//%d %d//%d %d//%d", &vx1, &faceId, &vx2, &faceId, &vx3, &faceId, &vx4, &faceId);
                faces.push_back(new face(faceId, vx1, vx2, vx3, vx4));   //do the same, except we call another constructor, and we use different pattern
            }
        } else if(lines[i]->c_str()[0]=='c') {
            
            int r, g, b, a;
            if(count(lines[i]->begin(),lines[i]->end(),' ') == 3) {
                sscanf(lines[i]->c_str(),"c %d %d %d", &r, &g, &b);
                colors.push_back(new color(r, g, b));   
            } else {
                sscanf(lines[i]->c_str(),"c %d %d %d %d", &r, &g, &b, &a);
                colors.push_back(new color(r, g, b, a));   
            }
        }
        
    }

    int listId;        //the id for the list
    listId = glGenLists(1);      //generate a uniqe
    glNewList(listId,GL_COMPILE);      //and create it
    for(i = 0; i < faces.size(); ++i) {
          
        if(faces[i]->isQuad) {
            glBegin(GL_POLYGON);
                //basically all I do here, is use the facenum (so the number of the face) as an index for the normal, so the 1st normal owe to the first face
                //I subtract 1 because the index start from 0 in C++
                glNormal3f(normals[faces[i]->idFace-1]->x,normals[faces[i]->idFace-1]->y,normals[faces[i]->idFace-1]->z);
                //draw the faces
                glColor4ub(colors[faces[i]->idFace-1]->red,colors[faces[i]->idFace-1]->green,colors[faces[i]->idFace-1]->blue, colors[faces[i]->idFace-1]->alpha);
                glVertex3f(vertices[faces[i]->verticesId[0]-1]->x,vertices[faces[i]->verticesId[0]-1]->y,vertices[faces[i]->verticesId[0]-1]->z);
                glVertex3f(vertices[faces[i]->verticesId[1]-1]->x,vertices[faces[i]->verticesId[1]-1]->y,vertices[faces[i]->verticesId[1]-1]->z);
                glVertex3f(vertices[faces[i]->verticesId[2]-1]->x,vertices[faces[i]->verticesId[2]-1]->y,vertices[faces[i]->verticesId[2]-1]->z);
                glVertex3f(vertices[faces[i]->verticesId[3]-1]->x,vertices[faces[i]->verticesId[3]-1]->y,vertices[faces[i]->verticesId[3]-1]->z);
            glEnd();
        }else{
            glBegin(GL_POLYGON);
                glNormal3f(normals[faces[i]->idFace-1]->x,normals[faces[i]->idFace-1]->y,normals[faces[i]->idFace-1]->z);
                glColor4ub(colors[faces[i]->idFace-1]->red,colors[faces[i]->idFace-1]->green,colors[faces[i]->idFace-1]->blue, colors[faces[i]->idFace-1]->alpha);
                glVertex3f(vertices[faces[i]->verticesId[0]-1]->x,vertices[faces[i]->verticesId[0]-1]->y,vertices[faces[i]->verticesId[0]-1]->z);
                glVertex3f(vertices[faces[i]->verticesId[1]-1]->x,vertices[faces[i]->verticesId[1]-1]->y,vertices[faces[i]->verticesId[1]-1]->z);
                glVertex3f(vertices[faces[i]->verticesId[2]-1]->x,vertices[faces[i]->verticesId[2]-1]->y,vertices[faces[i]->verticesId[2]-1]->z);
            glEnd();
        }

    }
    
    glEndList();
    
    // delete everything to avoid memory leaks
    for(i = 0; i < lines.size(); ++i)
        delete lines[i];
    for(i = 0; i < faces.size(); ++i)
        delete faces[i];
    for(i = 0; i < normals.size(); ++i)
        delete normals[i];
    for(i = 0; i < vertices.size(); ++i)
        delete vertices[i];
    return listId;     // return with the id    
}
