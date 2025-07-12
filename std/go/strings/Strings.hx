package go.strings;

@:recv(Builder)
function _copyCheck(_b:Dynamic)
	_b._addr = _b;

@:recv(Builder)
function string(_b) {
	return _b._buf;
}

function clone(_s)
	return _s;


