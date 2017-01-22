//アイテムのクラスをまとめたファイル
class ItemBase {
	//アイテムの画像を保存する
	PImage item;

	//アイテムバー用の画像
	PImage itembarImage;

	//アイテムの表示座標
	private int x;
	private int y;

	//アイテムをマップに表示するか
	private boolean itemVisible;

	//アイテムの説明
	public String explanation;

	//アイテムがクリックされているかどうか
	private boolean itemClicked = true;

	public ItemBase(int a, int b) {
		this.x = a;
		this.y = b;
		this.itemVisible = true;
	}

	//アイテムをマップに表示させる
	public void drawItem() {
		if (this.itemVisible)
			image(item, this.x, this.y);
	}

	public void invisible() {
		this.itemVisible = false;
	}

	public void itemClick() {
		this.itemClicked = false;
	}

	public boolean isClicked() {
		return this.itemClicked;
	}
}

class Note1 extends ItemBase {
	public Note1() {
		super(0, itembar.SIZE);
		super.item = loadImage("data/note1.png");
		super.itembarImage = loadImage("data/note1_bar.png");
		super.explanation = "「１」と書かれたメモ";
	}
}

class Note2 extends ItemBase {
	public Note2() {
		super(0, itembar.SIZE);
		super.item = loadImage("data/note2.png");
		super.itembarImage = loadImage("data/note2_bar.png");
		super.explanation = "「３」と書かれたメモ";
	}


}