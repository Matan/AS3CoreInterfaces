package flash.display
{
	import flash.accessibility.AccessibilityImplementation;
	import flash.geom.Rectangle;
	import flash.ui.ContextMenu;

	[native(cls="InteractiveObjectClass", instance="InteractiveObject", methods="auto", customconstruct="true")]
	[Event(name="softKeyboardDeactivate", type="flash.events.SoftKeyboardEvent")]
	[Event(name="softKeyboardActivate", type="flash.events.SoftKeyboardEvent")]
	[Event(name="softKeyboardActivating", type="flash.events.SoftKeyboardEvent")]
	[Event(name="textInput", type="flash.events.TextEvent")]
	[Event(name="imeStartComposition", type="flash.events.IMEEvent")]
	[Event(name="contextMenu", type="flash.events.MouseEvent")]
	[Event(name="tabIndexChange", type="flash.events.Event")]
	[Event(name="tabEnabledChange", type="flash.events.Event")]
	[Event(name="tabChildrenChange", type="flash.events.Event")]
	[Event(name="keyUp", type="flash.events.KeyboardEvent")]
	[Event(name="keyDown", type="flash.events.KeyboardEvent")]
	[Event(name="rightMouseUp", type="flash.events.MouseEvent")]
	[Event(name="rightMouseDown", type="flash.events.MouseEvent")]
	[Event(name="rightClick", type="flash.events.MouseEvent")]
	[Event(name="middleMouseUp", type="flash.events.MouseEvent")]
	[Event(name="middleMouseDown", type="flash.events.MouseEvent")]
	[Event(name="middleClick", type="flash.events.MouseEvent")]
	[Event(name="gestureSwipe", type="flash.events.TransformGestureEvent")]
	[Event(name="gestureZoom", type="flash.events.TransformGestureEvent")]
	[Event(name="gestureRotate", type="flash.events.TransformGestureEvent")]
	[Event(name="gesturePressAndTap", type="flash.events.PressAndTapGestureEvent")]
	[Event(name="gesturePan", type="flash.events.TransformGestureEvent")]
	[Event(name="gestureTwoFingerTap", type="flash.events.GestureEvent")]
	[Event(name="touchTap", type="flash.events.TouchEvent")]
	[Event(name="touchRollOver", type="flash.events.TouchEvent")]
	[Event(name="touchRollOut", type="flash.events.TouchEvent")]
	[Event(name="touchOver", type="flash.events.TouchEvent")]
	[Event(name="touchOut", type="flash.events.TouchEvent")]
	[Event(name="touchMove", type="flash.events.TouchEvent")]
	[Event(name="touchEnd", type="flash.events.TouchEvent")]
	[Event(name="touchBegin", type="flash.events.TouchEvent")]
	[Event(name="rollOver", type="flash.events.MouseEvent")]
	[Event(name="rollOut", type="flash.events.MouseEvent")]
	[Event(name="mouseWheel", type="flash.events.MouseEvent")]
	[Event(name="mouseUp", type="flash.events.MouseEvent")]
	[Event(name="mouseOver", type="flash.events.MouseEvent")]
	[Event(name="mouseOut", type="flash.events.MouseEvent")]
	[Event(name="mouseMove", type="flash.events.MouseEvent")]
	[Event(name="mouseDown", type="flash.events.MouseEvent")]
	[Event(name="doubleClick", type="flash.events.MouseEvent")]
	[Event(name="click", type="flash.events.MouseEvent")]
	[Event(name="mouseFocusChange", type="flash.events.FocusEvent")]
	[Event(name="keyFocusChange", type="flash.events.FocusEvent")]
	[Event(name="focusOut", type="flash.events.FocusEvent")]
	[Event(name="focusIn", type="flash.events.FocusEvent")]
	[Event(name="selectAll", type="flash.events.Event")]
	[Event(name="paste", type="flash.events.Event")]
	[Event(name="cut", type="flash.events.Event")]
	[Event(name="copy", type="flash.events.Event")]
	[Event(name="clear", type="flash.events.Event")]

	/**
	 * @author Matan Uberstein
	 */
	public interface IInteractiveObject extends IDisplayObject
	{
		[Inspectable(environment="none")]
		function get accessibilityImplementation() : AccessibilityImplementation;

		function set accessibilityImplementation(value : AccessibilityImplementation) : void;

		function get contextMenu() : ContextMenu;

		function set contextMenu(cm : ContextMenu) : void;

		function get doubleClickEnabled() : Boolean;

		function set doubleClickEnabled(enabled : Boolean) : void;

		function get focusRect() : Object;

		function set focusRect(focusRect : Object) : void;

		function get mouseEnabled() : Boolean;

		function set mouseEnabled(enabled : Boolean) : void;

		[API("670")]
		function get needsSoftKeyboard() : Boolean;

		[API("670")]
		function set needsSoftKeyboard(value : Boolean) : void;

		[API("670")]
		function requestSoftKeyboard() : Boolean;

		[API("670")]
		function get softKeyboardInputAreaOfInterest() : Rectangle;

		[API("670")]
		function set softKeyboardInputAreaOfInterest(value : Rectangle) : void;

		function get tabEnabled() : Boolean;

		function set tabEnabled(enabled : Boolean) : void;

		function get tabIndex() : int;

		function set tabIndex(index : int) : void;
	}
}
