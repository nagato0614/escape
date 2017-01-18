//ボタンを定義するクラス
//ボタンとしてだけでなくある場所をクリックしたかどうかも判定する事ができる。
class Button {

	//ボタンの範囲となる四角形の始点と終点
	private int startX;
	private int startY;
	private int endX;
	private int endY;

	//ボタンの色(16進数)
	private int buttonColor = #000000;

	//ボタンの透明度(0にしたらクリックを検知するだけのオブジェとして働く)
	private float alpha = 255.0;

	//ボタンを描写するかどうか(デフォルトは描写)
	//ボタンを一切描写したくないのであれば、drawButton関数を記述しなければ良い
	private boolean visible = true;

	//rectMode(CORNER)と同じ形式で値を渡す必要がある
	public Button (int sx, int sy, int ex, int ey) {
		this.startX = sx;
		this.startY = sy;
		this.endX = ex;
		this.endY = ey;
	}

	//描写させる
	public void visibleButton() {
		this.visible = true;
	}

	//描写させない
	public void invisibleButton() {
		this.visible = false;
	}

	//α値を設定する
	public void setAlpha(float a) {
		this.alpha = a;
	}

	//ボタンの色を設定する(16進数)
	public void setColor(int c) {
		this.buttonColor = c;
	}

	//ボタンを描写する(playメソッド内に記述)
	public void drawButton() {
		if (this.visible) {
			rectMode(CORNER);
			fill(this.buttonColor, this.alpha);
			rect(this.startX, this.startY, this.endX, this.endY);
		}
	}

	//ボタンが押された検知して押されていた場合は真を返す(mouseHandle内に記述)
	public boolean buttonClicked() {
		if (startX <= mouseX && mouseX <= startX + endX &&
			startY <= mouseY && mouseY <= startY + endY) {
			return true;
		}
		return false;
	}

	//マウスがボタンの範囲内にある場合は真を返す
	public boolean mouseIN() {
		if (startX <= mouseX && mouseX <= startX + endX &&
			startY <= mouseY && mouseY <= startY + endY) {
			return true;
		}
		return false;
	}
}