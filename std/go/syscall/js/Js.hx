function global() {
	final value = new stdgo._internal.syscall.js.Js_value.Value();
	// TODO: Global returns the JavaScript global object, usually "window" or "global".
	return value;
}

@:recv(Value)
function get() {
	return null;
}
