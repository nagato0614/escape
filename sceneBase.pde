
//シーンを扱うクラスの元となる抽象クラス
//必要に応じて各メソッドをオーバーライドする
abstract class SceneBase {

	//抽象メソッド
	//画面に何かを表示する時に使用する
	//draw関数の代わりになる
  abstract void play();

  //マウスが押された時に実行されるメソッド
  //マウスに対する操作があれば動作を記述する
  public void mouseHandle() {}
  
  //キーが押されたときに実行されるメソッド
  //キーに対する操作があれば動作を記述する
  public void keyHandle() {}
}