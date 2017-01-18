class Map4 extends MapBase {
	
	public Map4() {
		super();
		super.backgroundImage = loadImage("data/background4.png");
	}

	@Override
	public void play() {
		super.play();
	}

	@Override
	protected void turnLeft() {
		sceneMng.setScene("map3");
	}

	@Override
	protected void turnRight() {
		sceneMng.setScene("map1");
	}

	@Override
	public void mouseHandle() {
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}