#include "Model.hpp"


void Model::createGameObjects() {
	//create player
	player = new GameObject();
	player->loadObject("ball.obj");
	player->createBoundingBox();
	player->setPosition(glm::vec3(0,3,0));
	player->fillColour(glm::vec3(1, 0, 1));
	//player->setScale(glm::vec3(4, 4, 4));
	//create the stage
	board = new GameObject();
	board->loadObject("maze.obj");
	board->createBoundingBox();
	board->setPosition(glm::vec3(0, 0, 0));
	board->setScale(glm::vec3(5, 5, 5));
	board->fillColour(glm::vec3(0, 1, 0));
	//create collectables 
	//l8r
} 

Model::Model() {
	createGameObjects();
}
Model::~Model() {

}

GameObject* Model::getPlayer()
{
	return player;
}

GameObject * Model::getBoard()
{
	return board;
}

void Model::updatePlayer(glm::vec3 move){
	player->updatePosition(move);
}

void Model::updateCollectables(){
}

