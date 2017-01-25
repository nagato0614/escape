class Map4 extends MapBase {
	
	//枕元の判定ボタン
	private Button pillow;

	//落書き判定
	private Button rakugaki;

	public Map4() {
		super();
		super.backgroundImage = loadImage("data/background4.png");
		pillow = new Button(65, 250, 79, 100);
		rakugaki = new Button(550, 348, 23, 26);
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
		} else if (rakugaki.buttonClicked()) {
			speech.setText("「いくさ」とかいてある");
		} else {
			super.mouseHandle();
		}
	}

	@Override
	public void keyHandle() {}
}