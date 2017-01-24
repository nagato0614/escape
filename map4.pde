class Map4 extends MapBase {
	
	//枕元の判定ボタン
	private Button pillow;

	public Map4() {
		super();
		super.backgroundImage = loadImage("data/background4.png");
		pillow = new Button(65, 250, 79, 100);
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
		if (pillow.buttonClicked()) {
			sceneMng.setScene("zoomBed");
		} else {
			super.mouseHandle();
		}
	}

	@Override
	public void keyHandle() {}
}