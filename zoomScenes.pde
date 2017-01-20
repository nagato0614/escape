class ZoomShelf extends ZoomSceneBase {

	//アイテムを保存
	private ItemBase note;

	//アイテムを見つけるためのボタン
	private Button findNote;

	public ZoomShelf(String str) {
		super(str);
		super.backgroundImage = loadImage("data/zoomShelf.png");
		note = new Note1();
		findNote = new Button(433, 326, 43, 72);
		findNote.setAlpha(100);
	}

	@Override
	public void play() {
		super.play();

		note.drawItem();
	}

	@Override
	public void mouseHandle() {
		if (findNote.buttonClicked()) {
			note.invisible();
			speech.setText("1と書かれたメモを拾った");
			itembar.addItem(note);
		} else {
			super.mouseHandle();
		}
	}
}

class ZoomPlant extends ZoomSceneBase {
	public ZoomPlant(String str) {
		super(str);
		super.backgroundImage = loadImage("data/ZoomPlant.png");
	}

	@Override
	public void play() {
		super.play();
	}

	@Override
	public void mouseHandle() {
		super.mouseHandle();
	}
}