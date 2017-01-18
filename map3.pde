class Map3 extends MapBase {

	public Map3() {
		super();
		super.backgroundImage = loadImage("data/background3.png");
	}

	@Override
	public void play() {
		super.play();
	}

	@Override
	protected void turnLeft() {
		sceneMng.setScene("map2");
	}

	@Override
	protected void turnRight() {
		sceneMng.setScene("map4");
	}

	@Override
	public void mouseHandle() {
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}