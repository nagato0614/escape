class Map1 extends SceneBase {
	public void Map1() {

	}

	@Override
	public void play() {
		background(255);

		itembar.drawItemBar();
		speech.drawSpeech();
	}

	@Override
	public void mouseHandle() {}

	@Override
	public void keyHandle() {}
}