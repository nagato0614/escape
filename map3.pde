class Map3 extends MapBase {

	//窓枠の判定をおこなうボタン
	private Button window;

	//植物の判定
	private Button plant;

	//レンガの画像
	private PImage renga;

	//レンガ取得用のボタン
	private Button rengaButton;

	public Map3() {
		super();
		super.backgroundImage = loadImage("data/background3.png");
		this.renga = loadImage("data/renga.png");
		window = new Button(157, 140, 223, 130);
		plant = new Button(523, 203, 70, 190);
		this.rengaButton = new Button(213, 364, 39, 24);
	}

	@Override
	public void play() {
		super.play();

		image(this.renga, 0, itembar.SIZE);
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
 		} else if (rengaButton.buttonClicked()) {
 			
 		} else
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}