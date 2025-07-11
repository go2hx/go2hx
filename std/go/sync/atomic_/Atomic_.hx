package go.sync.atomic;

@:recv(Value)
function load() {
	return @:privateAccess _v._v;
}

@:recv(Pointer_)
function swap(_x, _new_) {
	stdgo.Go.globalMutex.acquire();
	var old:Dynamic = @:privateAccess _x._v;
	_x._v = new stdgo.AnyInterface(_new_, null);
	stdgo.Go.globalMutex.release();
	return stdgo.Go.pointer(old);
}

@:recv(Bool_) function swap(_x, _new_) {
	stdgo.Go.globalMutex.acquire();
	final old = @:privateAccess _x._v;
	_x._v = _new_ ? 1 : 0;
	stdgo.Go.globalMutex.release();
	return old == 1;
}

@:recv(Uint64)
function compareAndSwap(_x, _old,_new_) {
	stdgo.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Uint32)
function compareAndSwap(_x, _old,_new_) {
	stdgo.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Int64)
function compareAndSwap(_x, _old,_new_) {
	stdgo.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Int32)
function compareAndSwap(_x, _old,_new_) {
	stdgo.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function compareAndSwap(_x, _old, _new) {
	stdgo.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = new stdgo.AnyInterface(_new_, null);
	stdgo.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function store(_x) {
	stdgo.Go.globalMutex.acquire();
	_x._v = new stdgo.AnyInterface(_val, null);
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
@:recv(Int64)
function load(_x) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	stdgo.Go.globalMutex.release();
	return value;
}
@:recv(Uint32)
function load(_x) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	stdgo.Go.globalMutex.release();
	return value;
}
// Int32 Int64 Uint32 Uint64
@:recv(Uint64)
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

@:recv(Int32)
function add(_x, _delta) {
	stdgo.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v += _delta;
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
