class ItemBar {

	//アイテムを表示する枠のサイズ
	public final int SIZE = 48;

	private ArrayList<ItemBase> itemList;
	private ArrayList<Button> buttonList;

	public ItemBar() {
		itemList = new ArrayList<ItemBase>(0);
		buttonList = new ArrayList<Button>(0);
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
		this.buttonList.add(new Button(SIZE * buttonList.size(), 0, buttonList.size() * SIZE + SIZE, SIZE));
	}

	public void clicked() {
		for (int i = 0; i < buttonList.size(); i++) {
			Button b = buttonList.get(i);
			ItemBase item = itemList.get(i);
			if (b != null && item != null) {
				if (b.buttonClicked()) {
					speech.setText(item.explanation);
				}
			}
		}
	}
}