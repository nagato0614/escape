abstract class mapBase extends SceneBase {

	public final int BUTTON_WIDTH = 48;

	//向いている方向をかえるボタン
	private Button rightButton;
	private Button leftButton;

	public mapBase() {
		leftButton = new Button(0, itembar.SIZE, BUTTON_WIDTH, height - speech.SPEECH_HEIGHT);
		rightButton = new Button(width - BUTTON_WIDTH, itembar.SIZE, BUTTON_WIDTH, height - speech.SPEECH_HEIGHT);

		leftButton.setAlpha(100);
		rightButton.setAlpha(100);
	}

	@Override
	public void play() {
		background(255);

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