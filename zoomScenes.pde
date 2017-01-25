class ZoomPass extends ZoomSceneBase {

	//上に数字が進むボタン
	Button[] up;

	//下に数字が進むぼたん
	Button[] down;

	//登録ボタン
	Button register;

	//数字表示用のフォント
	PFont font;

	//表示されている数じ
	private int number[] = {0, 0, 0};

	public final int PASS_WIDTH = 560;
	public final int PASS_HEIGHT = 160;

	public ZoomPass(String str) {
		super(str);
		super.backgroundImage = loadImage("data/zoomPass.png");
		this.font = createFont("Georgia", 60);
		up = new Button[3];
		down = new Button[3];
		register = new Button(260, 400, 200, 50);
		register.setColor(#FFBFC3);

		for (int i = 0; i < 3; i++) {
			up[i] = new Button(130 + i * PASS_WIDTH / 3, 80, 100, 50);
			up[i].setColor(#FFFFFF);
			down[i] = new Button(130 + i * PASS_WIDTH / 3, 330, 100, 50);
			down[i].setColor(#FFFFFF);
		}
	}

	void drawBack() {
		rectMode(CORNER);
		fill(255);
		stroke(0);
		rect(80, 150, PASS_WIDTH, PASS_HEIGHT);
	}

	void drawNumber() {
		textFont(font);
		fill(0);
		for (int i = 0; i < 3; i++) {
			text(number[i], 150 + i * PASS_WIDTH / 3, 270);
		}
	}

	@Override
	public void play() {
		background(255);

		super.play();

		this.drawBack();

		for (int i = 0; i < 3; i++) {
			up[i].drawButton();
			down[i].drawButton();
		}
		this.register.drawButton();

		this.drawNumber();
	}

	@Override
	public void mouseHandle() {
		itembar.clicked();

		//パスワートを入力確定ボタン
		if (register.buttonClicked() && number[0] == 1 && number[1] == 9 && number[2] == 3) 
			sceneMng.setScene("end");

		//戻るボタン
		if (super.backButton.buttonClicked()) {
			sceneMng.setScene(this.beforeScene);
		}

		for (int i = 0; i < 3; i++) {
			if (up[i].buttonClicked()) {
				number[i] = ++number[i] % 10;
			} else if (down[i].buttonClicked()) {
				number[i] = --number[i] % 10;
				if (number[i] < 0) {
					number[i] = 9;
				}
			}
		}
	}
}

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
	private ItemBase note;

	//アイテムを見つけるためのボタン
	private Button findNote;

	public ZoomBed(String str) {
		super(str);
		super.backgroundImage = loadImage("data/zoomBed.png");
		note = new Note3();
		findNote = new Button(466, 100, 134, 100);
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