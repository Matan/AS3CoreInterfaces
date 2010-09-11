package flash.display
{
	import flash.geom.Rectangle;
	import flash.media.SoundTransform;

	/**
	 * @author Matan Uberstein
	 */
	public interface ISprite extends IDisplayObjectContainer
	{
		function get buttonMode() : Boolean;

		function set buttonMode(value : Boolean) : void;

		function get dropTarget() : DisplayObject;

		function get graphics() : Graphics;

		function get hitArea() : Sprite;

		function set hitArea(value : Sprite) : void;

		function get soundTransform() : SoundTransform;

		function set soundTransform(sndTransform : SoundTransform) : void;

		function startDrag(lockCenter : Boolean = false, bounds : Rectangle = null) : void;

		[API("667")]
		function startTouchDrag(touchPointID : int, lockCenter : Boolean = false, bounds : Rectangle = null) : void;

		function stopDrag() : void;

		[API("667")]
		function stopTouchDrag(touchPointID : int) : void;

		function get useHandCursor() : Boolean;

		function set useHandCursor(value : Boolean) : void;
	}
}
