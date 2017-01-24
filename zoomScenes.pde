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
		if (findNote.buttonClicked() && note.isClicked()) {
			note.invisible();
			note.itemClick();
			speech.setText(note.explanation);
			itembar.addItem(note);
		} else {
			super.mouseHandle();
		}
	}
}

class ZoomPlant extends ZoomSceneBase {

	//アイテムを保存
	private ItemBase note;

	//アイテムを見つけるためのボタン
	private Button findNote;

	public ZoomPlant(String str) {
		super(str);
		super.backgroundImage = loadImage("data/zoomPlant.png");
		note = new Note2();
		findNote = new Button(376, 288, 100, 48);
		findNote.setAlpha(100);
	}

	@Override
	public void play() {
		super.play();

		note.drawItem();
	}

	@Override
	public void mouseHandle() {
		if (findNote.buttonClicked() && note.isClicked()) {
			note.invisible();
			note.itemClick();
			speech.setText(note.explanation);
			itembar.addItem(note);
		} else {
			super.mouseHandle();
		}
	}
}

class ZoomBed extends ZoomSceneBase {

	//アイテムを保存
	//private ItemBase note;

	//アイテムを見つけるためのボタン
	//private Button findNote;

	public ZoomBed(String str) {
		super(str);
		super.backgroundImage = loadImage("data/zoomBed.png");
		//note = new Note2();
		//findNote = new Button(376, 288, 100, 48);
		//findNote.setAlpha(100);
	}

	@Override
	public void play() {
		super.play();

	//	note.drawItem();
	}

	@Override
	public void mouseHandle() {
		// if (findNote.buttonClicked() && note.isClicked()) {
		// 	//note.invisible();
		// 	//note.itemClick();
		// 	speech.setText(note.explanation);
		// 	itembar.addItem(note);
		// } else {
			super.mouseHandle();
		//}
	}
}