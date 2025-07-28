function global() {
	final value = new go._internal.syscall.js.Js_value.Value();
	// TODO: Global returns the JavaScript global object, usually "window" or "global".
	return value;
}

@:recv(Value)
function get() {
	return null;
}

@:recv(Value)
function isUndefined()
	return true;

@:recv(Value)
function type()
	return 0;


function _predefValue()
	return null;
