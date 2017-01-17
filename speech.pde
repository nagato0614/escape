class Speech {

	//台詞を表示させるスペースのサイズ
	//横幅は画面の横幅に合わせる
	public final int SPEECH_HEIGHT = 100;

	public Speech() {

	}

	public void drawSpeech() {
		fill(0, 0, 0, 0);
		stroke(0);
		rect(0, height - SPEECH_HEIGHT, width - 1, height - 1);
	}
}