class Map1 extends SceneBase {

	//背景画像を表示
	PImage backgroundImage;

	public Map1() {
		backgroundImage = loadImage("data/background1.png");
	}

	@Override
	public void play() {
		background(255);

		//背景画像を表示する
		image(backgroundImage, 0, itembar.SIZE + 1);

		itembar.drawItemBar();
		speech.drawSpeech();
	}

	@Override
	public void mouseHandle() {}

	@Override
	public void keyHandle() {}
}