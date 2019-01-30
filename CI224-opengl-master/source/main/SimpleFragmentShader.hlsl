#version 330 core

//values from vertex shader
in vec2 UV;
in vec3 Position_worldspace;
in vec3 Normal_cameraspace;
in vec3 EyeDirection_cameraspace;
in vec3 LightDirection_cameraspace;
in vec3 fragmentColor;

//output data
out vec3 color;

//constant values
uniform mat4 MV;
uniform vec3 LightPosition_worldspace;

void main() {
	//light emission properties
	/*vec3 LightColor = vec3(1, 1, 1);
	float LightPower = 20.0f;

	vec3 MaterialDiffuseColor = vec3(0.8, 0.8, 0.8);
	vec3 MaterialAmbientColor = fragmentColor * MaterialDiffuseColor;
	vec3 MaterialSpecularColor = vec3(0.9, 0.9, 0.9);

	//distance to the light
	float distance = length(LightPosition_worldspace - Position_worldspace);

	//Normal of the computed fragment (cam spac)
	vec3 n = normalize(Normal_cameraspace);
	//dir of light from frag to light
	vec3 l = normalize(LightDirection_cameraspace);
	//cos of angle between normal and light dir clamped +ve
	float cosTheta = clamp(dot(n, l), 0, 1);

	//Eye vector
	vec3 E = normalize(EyeDirection_cameraspace);
	//reflection direction
	vec3 R = reflect(-l, n);
	//clamped cos of eye/reflect vector
	float cosAlpha = clamp(dot(E, R), 0, 1);

	color =
		//ambient simulates indirect light
		MaterialAmbientColor +
		//diffuse is the color of the object
		MaterialDiffuseColor * LightColor * LightPower * cosTheta / (distance*distance) +
		//specular = reflections
		MaterialSpecularColor * LightColor * LightPower * pow(cosAlpha, 5) / (distance * distance);

		*/

	color = vec3(1, 0, 0);
		}