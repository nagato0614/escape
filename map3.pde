class Map3 extends MapBase {

	//窓枠の判定をおこなうボタン
	private Button window;

	public Map3() {
		super();
		super.backgroundImage = loadImage("data/background3.png");
		window = new Button(157, 140, 223, 130);
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
		if (window.buttonClicked()) {
			speech.setText("鍵がかかっている");
		} else 
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}