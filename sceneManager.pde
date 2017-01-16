//シーンを一括で扱うクラス
public class SceneManager {
  
  //hashを用いてシーンを保管しておく
  private HashMap<String, SceneBase> scenebases;
  
  //現在選択されているシーンを格納しておく
  private SceneBase currentScene;
  
  //コンストラクタ
  public SceneManager() {
    this.loadScene();
  }
  
  //シーンを一括して読み込む
  //シーンを追加したい場合は子のメソッド内に記述する
  //またhashMapの新スタンス生成もここで行っている
  private void loadScene() {
    scenebases = new HashMap<String, SceneBase>();
    scenebases.put("title", new Title());
    scenebases.put("Map1", new Map1());
  }
  
  //シーンを引数で指定したシーンに変更する
  public void setScene(String str) {
    currentScene = scenebases.get(str);
  }
  
  //現在選択されていシーンを再生する
  private void playCurrentScene() {
    currentScene.play();
  }
  
  //現在選択されていシーンのマウスハンドラを実行する
  public void currentMouseHundle() {
    currentScene.mouseHandle();
  }

  //現在選択されているしーんのキーハンドラを実行する
  public void currentKeyHandle() {
    currentScene.keyHandle();
  }
}