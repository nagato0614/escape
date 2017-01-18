class Speech {

	//台詞を表示させるスペースのサイズ
	//横幅は画面の横幅に合わせる
	public final int SPEECH_HEIGHT = 100;

	//現在表示されているテキスト
	private String nowDrawedLine = "";

	//台詞を表示させるためのフォント
	PFont lineFont;

	public Speech() {
		lineFont = loadFont("MyricaMM-30.vlw");
	}	

	public void drawSpeech() {
		fill(200);
		stroke(0);
		rect(0, height - SPEECH_HEIGHT, width - 1, height - 1);

		this.drawText();
	}

	//画面に台詞を表示させる
	private void drawText() {
		textFont(lineFont);
		fill(0);
		text(nowDrawedLine, 30, height - SPEECH_HEIGHT / 2);
	}

	//描写したいテキストを登録する
	public void setText(String line) {
		this.nowDrawedLine = line;
	}

	//登録されているテキストを消去する
	public void resetText() {
		this.nowDrawedLine = null;
	}
}