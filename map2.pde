class Map2 extends MapBase {

	//棚にズームするボタン(透明)
	private Button zoomShelf;

	public Map2() {
		super();
		super.backgroundImage = loadImage("data/background2.png");


		//ボタンの初期化
		this.zoomShelf = new Button(135, 245, 90, 150);
		this.zoomShelf.setAlpha(100);
	}

	@Override
	public void play() {
		super.play();

		this.zoomShelf.drawButton();
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
		if (this.zoomShelf.buttonClicked()) {
			sceneMng.setScene("zoomShelf");
			println("shelf");
		}
	}

	@Override
	public void keyHandle() {}
}