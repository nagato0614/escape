class Map1 extends MapBase {

	public Map1() {
		super();
		super.backgroundImage = loadImage("data/background1.png");
	}

	@Override
	public void play() {
		super.play();

		itembar.drawItemBar();
		speech.drawSpeech();
	}

	@Override
	protected void turnLeft() {
		sceneMng.setScene("map4");
	}

	@Override
	protected void turnRight() {
		sceneMng.setScene("map2");
	}

	@Override
	public void mouseHandle() {
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}