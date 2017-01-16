//タイトルを表示するクラス
class Title extends SceneBase {
	//フォントを扱う変数
	PFont titleFont;
	PFont menuFont;

	//選択されているコマンドを示す
	int selectedCommand = 0;

	//コマンドの数
	private final int COMMAND = 2;

	//メニューの設置位置(x)
	private final int X = 300;
	private final int Y = 70;		//こまんどごとの間隔
  public Title() {
  	titleFont = loadFont("MyricaMM-50.vlw");
  	menuFont = loadFont("MyricaMM-30.vlw");
  }
  
  @Override
  public void play() {
   	//背景の初期化
  	background(255);

  	//タイトルの表示
  	drawTitle();

  	//選択されているこまんどの背景を濃くする
  	drawSelected();

  	//スタートボタンの表示
  	drawMenu();
  }

  private void drawTitle() {
   	textFont(titleFont);
   	fill(0);
   	text("脱出ゲーム(仮)", 230, 100);
  }

  private void drawMenu() {
  	textFont(menuFont);
  	fill(0);
  	text("スタート", X, 170);
  	text("終了", X, 170 + Y);
  }

  //選択されている文字の背景を濃くする
  private void drawSelected() {
  	rectMode(CORNER);
  	fill (210);
  	stroke(210);
  	rect(X, 180 + this.selectedCommand * Y, 150, -40);
  }

  private void up() {
  	this.selectedCommand--;
  	if (this.selectedCommand < 0) {
  		this.selectedCommand = COMMAND - 1;
  	}
  }

  private void down() {
  	this.selectedCommand++;
  	if (this.selectedCommand >= COMMAND) {
  		this.selectedCommand = 0;
  	}
  }

  private void enter() {
    switch (this.selectedCommand) {
      //スタートボタンが押された場合
      case 0 :
        sceneMng.setScene("map1");
        break;
      case 1 :
        exit();
        break;
      default :
            
      break;  
    }
  }

  @Override
  public void keyHandle() {
  	//文字以外の特殊なキーが押された場合
  	if (key == CODED) {
  		switch (keyCode) {
  			case UP :
  				this.up();
  				break;
  			case DOWN :
  				this.down();
  				break;
        case ENTER :
          println("enter");
          break;
  			default :
  				
  			break;	
  		}
  	} else {
      if (key == 'z')
        enter();
    }
  }
  
  @Override
  public void mouseHandle() {}
}