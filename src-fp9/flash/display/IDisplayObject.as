package flash.display
{

	import flash.accessibility.AccessibilityProperties;
	import flash.events.IEventDispatcher;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Transform;

	[Event(name="render", type="flash.events.Event")]
	[Event(name="removedFromStage", type="flash.events.Event")]
	[Event(name="removed", type="flash.events.Event")]
	[Event(name="enterFrame", type="flash.events.Event")]
	[Event(name="addedToStage", type="flash.events.Event")]
	[Event(name="added", type="flash.events.Event")]
	/**
	 * @author Matan Uberstein
	 */
	public interface IDisplayObject extends IEventDispatcher, IBitmapDrawable
	{
		function get accessibilityProperties() : AccessibilityProperties;

		function set accessibilityProperties(value : AccessibilityProperties) : void;

		function get alpha() : Number;

		function set alpha(value : Number) : void;

		function get blendMode() : String;

		function set blendMode(value : String) : void;

		function get cacheAsBitmap() : Boolean;

		function set cacheAsBitmap(value : Boolean) : void;

		function get filters() : Array;

		function set filters(value : Array) : void;

		function getBounds(targetCoordinateSpace : DisplayObject) : Rectangle;

		function getRect(targetCoordinateSpace : DisplayObject) : Rectangle;

		function globalToLocal(point : Point) : Point;

		function get height() : Number;

		function set height(value : Number) : void;

		function hitTestObject(obj : DisplayObject) : Boolean;

		function hitTestPoint(x : Number, y : Number, shapeFlag : Boolean = false) : Boolean;

		function get loaderInfo() : LoaderInfo;

		function localToGlobal(point : Point) : Point;

		function get mask() : DisplayObject;

		function set mask(value : DisplayObject) : void;

		function get mouseX() : Number;

		function get mouseY() : Number;

		function get name() : String;

		function set name(value : String) : void;

		function get opaqueBackground() : Object;

		function set opaqueBackground(value : Object) : void;

		function get parent() : DisplayObjectContainer;

		function get root() : DisplayObject;

		function get rotation() : Number;

		function set rotation(value : Number) : void;

		function get scale9Grid() : Rectangle;

		function set scale9Grid(innerRectangle : Rectangle) : void;

		function get scaleX() : Number;

		function set scaleX(value : Number) : void;

		function get scaleY() : Number;

		function set scaleY(value : Number) : void;

		function get scrollRect() : Rectangle;

		function set scrollRect(value : Rectangle) : void;

		function get stage() : Stage;

		function get transform() : Transform;

		function set transform(value : Transform) : void;

		function get visible() : Boolean;

		function set visible(value : Boolean) : void;

		function get width() : Number;

		function set width(value : Number) : void;

		function get x() : Number;

		function set x(value : Number) : void;

		function get y() : Number;

		function set y(value : Number) : void;
	}
}
