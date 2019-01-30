#version 330 core

// Input vertex data
layout(location = 0) in vec3 vertexPosition_modelspace;
layout(location = 1) in vec3 vertexNormal_modelspace;
layout(location = 2) in vec3 vertexColor;

//Output data interpolated for each fragment
out vec3 Position_worldspace;
out vec3 Normal_cameraspace;
out vec3 EyeDirection_cameraspace;
out vec3 LightDirection_cameraspace;
out vec3 fragmentColor;

//constant values for whole mesh 
uniform mat4 MVP;	//mvp matrix
uniform mat4 V;		//view matrix?
uniform mat4 M;		//model matrix?
uniform vec3 LightPosition_worldspace;

void main() {
	// Output position of the vertex
	gl_Position = MVP * vec4(vertexPosition_modelspace, 1);

	//position of the vertex in world space
	/*Position_worldspace = (M * vec4(vertexPosition_modelspace, 1)).xyz;

	//Vector going from vertex to camera, in cam space
	vec3 vertexPosition_cameraspace = (V * M * vec4(vertexPosition_modelspace, 1)).xyz;
	EyeDirection_cameraspace = -vertexPosition_cameraspace;	//invert the vector from the vertex to eye to get eye to vertex 

	//vector from vertex to light, cam space
	vec3 LightPosition_cameraspace = (V * vec4(LightPosition_worldspace, 1)).xyz;
	LightDirection_cameraspace = LightPosition_cameraspace - vertexPosition_cameraspace;

	//vertex normals in camera space
	Normal_cameraspace = (V * M * vec4(vertexNormal_modelspace, 0)).xyz; //use inverse transpose if scaled by modelM
	*/fragmentColor = vertexColor;
}