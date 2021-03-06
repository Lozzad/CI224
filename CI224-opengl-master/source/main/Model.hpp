#pragma once
// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>
#include <vector>

#include "Model.hpp"
// Include GLM
#include <glm/glm.hpp>
using namespace glm;

#include "GameObject.hpp"

class Model {
private:
	GameObject* board;
	GameObject* player;
	std::vector<GameObject*> collectables;
	glm::vec3 startpos;

	void Model::createGameObjects();

public:
	Model();
	~Model();
	//getters n setters
	GameObject* getPlayer();
	GameObject* getBoard();
	void updatePlayer(glm::vec3 move);
	void updateCollectables();
};

