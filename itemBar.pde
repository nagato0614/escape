class ItemBar {

	//アイテムを表示する枠のサイズ
	public final int SIZE = 48;

	private ArrayList<ItemBase> itemList;

	public ItemBar() {
		itemList = new ArrayList<ItemBase>(0);
	}

	//画面にアイテムバーを描写する
	public void drawItemBar() {
		rectMode(CORNERS);
		for (int i = 0; i < width / SIZE; i++) {
			fill(255);
			stroke(0);
			rect(i * SIZE, 0, i * SIZE + SIZE, SIZE);
			if (i < itemList.size()) {
				image(itemList.get(i).itembarImage, i * SIZE, 0);
			}
		}
	}

	//アイテムを登録する
	public void addItem(ItemBase item) {
		this.itemList.add(item);
	}
}