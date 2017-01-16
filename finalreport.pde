import java.util.ArrayList;
import java.io.*;

SceneManager sceneMng;	//シーンを一括で扱う
final int SCENE_NUMBER = 2;

void setup() {
  smooth();
  size(1080, 720);
  frameRate(60);
  
  sceneMng = new SceneManager();
  sceneMng.setScene("title");
}

void draw() {
  sceneMng.playCurrentScene();
}

void mousePressed() {
  sceneMng.currentMouseHundle();
}

void keyPressed() {
	sceneMng.currentKeyHandle();
}