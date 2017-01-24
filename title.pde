//タイトルを表示するクラス
class Title extends SceneBase {
	//フォントを扱う変数
	PFont titleFont;
	PFont menuFont;

  //コマンド用のボタン
  Button start;
  Button end;

	//コマンドの数
	private final int COMMAND = 2;

	//メニューの設置位置(x)
	private final int X = 300;
	private final int Y = 70;		//こまんどごとの間隔

  public Title() {
  	titleFont = loadFont("MyricaMM-50.vlw");
  	menuFont = loadFont("MyricaMM-30.vlw");

    start = new Button(X, 140, 150, 40);
    end = new Button(X, 140 + Y, 150, 40);
    start.setAlpha(0);
    end.setAlpha(0);
  }
  
  @Override
  public void play() {
   	//初期化
  	background(255);
    start.setAlpha(0);
    end.setAlpha(0);

  	//タイトルの表示
  	drawTitle();

  	//スタートボタンの表示
  	drawMenu();

    //マウスがボタンに重なっているかどうかの判定
    this.mouseIN();

    //ボタンの表示
    start.drawButton();
    end.drawButton();
  }

  //マウスがメニューの範囲内に入っているかしらべる
  private void mouseIN() {
    if (start.buttonClicked()) {
      start.setAlpha(200);
    } else if (end.buttonClicked()) {
      end.setAlpha(200);
    }
  }

  private void drawTitle() {
   	textFont(titleFont);
   	fill(0);
   	text("脱出ゲーム", 230, 100);
  }

  private void drawMenu() {
  	textFont(menuFont);
  	fill(0);
  	text("スタート", X, 170);
  	text("終了", X, 170 + Y);
  }

  @Override
  public void keyHandle() {
  }
  
  @Override
  public void mouseHandle() {
    if (start.buttonClicked()) {
      sceneMng.setScene("map1");
    } else if (end.buttonClicked()) {
      exit();
    }
  }
}