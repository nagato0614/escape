class Map3 extends MapBase {

	//窓枠の判定をおこなうボタン
	private Button window;

	//植物の判定
	private Button plant;

	public Map3() {
		super();
		super.backgroundImage = loadImage("data/background3.png");
		window = new Button(157, 140, 223, 130);
		plant = new Button(523, 203, 70, 190);
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
		} else if (plant.buttonClicked()) {
			sceneMng.setScene("zoomPlant");
 		} else 
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}