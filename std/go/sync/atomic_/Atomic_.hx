package go.sync.atomic;

@:recv(Value)
function load() {
	return @:privateAccess _v._v;
}

@:recv(Pointer_)
function swap(_x) {
	stdgo.Go.globalMutex.acquire();
	final old = @:privateAccess _x._v;
	_x._v = stdgo.Go.toInterface(_new_);
	stdgo.Go.globalMutex.release();
	return stdgo.Go.pointer(stdgo.Go.toInterface(old));
}

@:recv(Pointer_)
function compareAndSwap(_x) {
	stdgo.Go.globalMutex.acquire();
	final b = stdgo.Go.toInterface(_old) == stdgo.Go.toInterface(_new_);
	if (b)
		_x._v = stdgo.Go.toInterface(_new_);
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function store(_x) {
	stdgo.Go.globalMutex.acquire();
	_x._v = stdgo.Go.toInterface(_val);
	stdgo.Go.globalMutex.release();
}

@:recv(Pointer_)
function load(_x) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v.__toRef__();
	stdgo.Go.globalMutex.release();
	return value;
}

@:recv(Int32)
function store(_x) {
	stdgo.Go.globalMutex.acquire();
	_x._v = _val;
	stdgo.Go.globalMutex.release();
}

@:recv(Int32)
function load(_x) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	stdgo.Go.globalMutex.release();
	return value;
}

function loadInt64(_addr) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	stdgo.Go.globalMutex.release();
	return value;
}

function addInt64(_addr, _delta) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	stdgo.Go.globalMutex.release();
	return value;
}

function storeInt64(_addr, _val) {
	stdgo.Go.globalMutex.acquire();
	_addr.value = _val;
	stdgo.Go.globalMutex.release();
}

function loadUint64(_addr) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	stdgo.Go.globalMutex.release();
	return value;
}

function addUint64(_addr, _delta) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	stdgo.Go.globalMutex.release();
	return value;
}

function storeUint64(_addr, _val) {
	stdgo.Go.globalMutex.acquire();
	_addr.value = _val;
	stdgo.Go.globalMutex.release();
}

function loadUint32(_addr) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	stdgo.Go.globalMutex.release();
	return value;
}

function addUint32(_addr, _delta) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	stdgo.Go.globalMutex.release();
	return value;
}

function storeUint32(_addr, _val) {
	stdgo.Go.globalMutex.acquire();
	_addr.value = _val;
	stdgo.Go.globalMutex.release();
}

@:recv(Bool_)
function store()
	stdgo._internal.sync.atomic_.Atomic__storeuint32.storeUint32(stdgo.Go.pointer(_x._v), _val ? 1 : 0);

@:recv(Bool_)
function load() {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v == 1;
	stdgo.Go.globalMutex.release();
	return value;
}
