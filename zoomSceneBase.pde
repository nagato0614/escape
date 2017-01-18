abstract class ZoomSceneBase extends SceneBase {
	
	//背景画像を表示
	protected PImage backgroundImage;
	
	//もとの画面に戻るボタン
	private Button backButton;

	//元のシーン
	private String beforeScene;

	//ボタンの縦幅（横幅は画面サイズに合わせる)
	public final int BUTTON_HEIGHT = 48;

	public ZoomSceneBase(String s) {
		this.beforeScene = s;

		//ボタンの初期化
		backButton = new Button(0, height - BUTTON_HEIGHT - speech.SPEECH_HEIGHT,
														width, height - speech.SPEECH_HEIGHT);

		backButton.setAlpha(100);
	}

	@Override
	public void play() {
		background(255);

		//背景画像を表示
		image(backgroundImage, 0, itembar.SIZE + 1);

		backButton.drawButton();

		itembar.drawItemBar();
		speech.drawSpeech();
	}

	@Override
	public void mouseHandle() {
		if (backButton.buttonClicked()) {
			sceneMng.setScene(this.beforeScene);
		}
	}
}