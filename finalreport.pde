import java.util.ArrayList;
import java.io.*;

SceneManager sceneMng;	//シーンを一括で扱う
ItemBar itembar;				//アイテムを表示するバー
Speech speech;

final int SCENE_NUMBER = 2;

void setup() {
  smooth();
  size(720, 600);
  frameRate(60);

  //アイテムバーを作成
  itembar = new ItemBar();

  //台詞を表示させる
  speech = new Speech();
  
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

class End extends SceneBase {
	PFont font = createFont("Georgia", 32);
	PImage image;
	public End() {
		super();
		image = loadImage("data/clear.png");
	}

	@Override
	public void play() {
		image(this.image, 0, 48);
	}
}