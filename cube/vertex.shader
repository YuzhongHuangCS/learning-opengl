#version 330 core

layout(location = 0) in vec3 vPosition;
layout(location = 1) in vec3 vertexColor;

out vec3 fragmentColor;

uniform mat4 mvp;

void main() {
	gl_Position =  mvp * vec4(vPosition, 1);
	fragmentColor = vertexColor;
}