package flash.display
{
	import flash.accessibility.AccessibilityImplementation;
	import flash.ui.ContextMenu;

	[Event(name="tabIndexChange", type="flash.events.Event")]
	[Event(name="tabEnabledChange", type="flash.events.Event")]
	[Event(name="tabChildrenChange", type="flash.events.Event")]
	[Event(name="keyUp", type="flash.events.KeyboardEvent")]
	[Event(name="keyDown", type="flash.events.KeyboardEvent")]
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

		function get tabEnabled() : Boolean;

		function set tabEnabled(enabled : Boolean) : void;

		function get tabIndex() : int;

		function set tabIndex(index : int) : void;
	}
}
