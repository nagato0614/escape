//アイテムのクラスをまとめたファイル
class ItemBase {
	//アイテムの画像を保存する
	PImage item;

	//アイテムの表示座標
	private int x;
	private int y;

	public ItemBase(int a, int b) {
		this.x = a;
		this.y = b;
	}
}