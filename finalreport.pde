import java.util.ArrayList;
import java.io.*;

SceneManager sceneMng;	//シーンを一括で扱う
ItemBar itembar;				//アイテムを表示するバー
final int SCENE_NUMBER = 2;

void setup() {
  smooth();
  size(720, 600);
  frameRate(60);

  //アイテムバーを作成
  itembar = new ItemBar();
  
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