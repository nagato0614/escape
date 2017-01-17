class ItemBar {

	//アイテムを表示する枠のサイズ
	public final int SIZE = 48;

	public ItemBar() {

	}

	public void drawItemBar() {
		rectMode(CORNERS);
		for (int i = 0; i < width / SIZE; i++) {
			fill(50);
			stroke(255);
			rect(i * SIZE, 0, i * SIZE + SIZE, SIZE);
		}
	}
}