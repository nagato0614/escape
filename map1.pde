class Map1 extends MapBase {

	//パスワードを入力する装置にズームするぼたん
	private Button pass;

	public Map1() {
		super();
		super.backgroundImage = loadImage("data/background1.png");
		pass = new Button(400, 249, 39, 38);
	}

	@Override
	public void play() {
		super.play();
	}

	@Override
	protected void turnLeft() {
		sceneMng.setScene("map4");
	}

	@Override
	protected void turnRight() {
		sceneMng.setScene("map2");
	}

	@Override
	public void mouseHandle() {
		if (pass.buttonClicked()) {
			sceneMng.setScene("zoomPass");
		} else
		super.mouseHandle();
	}

	@Override
	public void keyHandle() {}
}