class Map2 extends MapBase {

	public Map2() {
		super();
		super.backgroundImage = loadImage("data/background2.png");
	}

	@Override
	public void play() {
		super.play();
	}

	@Override
	protected void turnLeft() {
		sceneMng.setScene("map1");
	}

	@Override
	protected void turnRight() {
		sceneMng.setScene("map3");
	}


	@Override
	public void mouseHandle() {
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}