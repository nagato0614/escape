abstract class MapBase extends SceneBase {

	public final int BUTTON_WIDTH = 48;

	//向いている方向をかえるボタン
	private Button rightButton;
	private Button leftButton;

	//背景画像を表示
	PImage backgroundImage;

	public MapBase() {
		leftButton = new Button(0, itembar.SIZE, BUTTON_WIDTH, height - speech.SPEECH_HEIGHT);
		rightButton = new Button(width - BUTTON_WIDTH, itembar.SIZE, BUTTON_WIDTH, height - speech.SPEECH_HEIGHT);

		leftButton.setAlpha(100);
		rightButton.setAlpha(100);
	}

	@Override
	public void play() {
		background(255);

		//背景画像を表示する
		image(backgroundImage, 0, itembar.SIZE + 1);

		//ボタンを表示
		leftButton.drawButton();
		rightButton.drawButton();
		
	}

	@Override
	public void mouseHandle() {
		if (leftButton.buttonClicked()) {
			println("left");
 		} else if (rightButton.buttonClicked()) {
 			println("right");
 		}
	}
}