class Map3 extends MapBase {

	//窓枠の判定をおこなうボタン
	private Button window;

	//植物の判定
	private Button plant;

	//アイテムのレンガ
	private ItemBase renga;

	//レンガ取得用のボタン
	private Button rengaButton;

	public Map3() {
		super();
		super.backgroundImage = loadImage("data/background3.png");
		this.renga = new Renga();
		window = new Button(157, 140, 223, 130);
		plant = new Button(523, 203, 70, 190);
		this.rengaButton = new Button(213, 364, 39, 24);
	}

	@Override
	public void play() {
		super.play();

		renga.drawItem();
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
 		} else if (rengaButton.buttonClicked() && renga.isClicked()) {
 			renga.invisible();
 			renga.itemClick();
 			speech.setText(renga.explanation);
 			itembar.addItem(renga);
 		} else
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}