package
{
  import flash.display.Sprite;
  import flash.display.StageAlign;
  import flash.display.StageDisplayState;
  import flash.display.StageScaleMode;

  [SWF(width="1280", height="800", backgroundColor="#FFFFFF", frameRate="31")]

  public class whitefull extends Sprite
  {
    public function whitefull()
    {
      this.stage.scaleMode=StageScaleMode.NO_SCALE;
      this.stage.align=StageAlign.TOP_LEFT;
      this.stage.displayState=StageDisplayState.FULL_SCREEN;
    }
  }
}