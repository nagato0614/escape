//アイテムのクラスをまとめたファイル
class ItemBase {
	//アイテムの画像を保存する
	PImage item;

	//アイテムの表示座標
	private int x;
	private int y;

	//アイテムをマップに表示するか
	private boolean itemVisible;

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
}

class Note1 extends ItemBase {
	public Note1() {
		super(0, itembar.SIZE);
		this.item = loadImage("data/note1.png");
	}
}