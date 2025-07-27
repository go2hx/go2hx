package go.sync.atomic;

@:recv(Value)
function load() {
	return @:privateAccess _v._v;
}
@:recv(Value)
function store() {
	go.Go.globalMutex.acquire();
	@:privateAccess _v._v = _val;
	go.Go.globalMutex.release();
}

@:recv(Pointer_)
function swap(_x, _new_) {
	go.Go.globalMutex.acquire();
	var old:Dynamic = @:privateAccess _x._v;
	_x._v = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return go.Go.pointer(old);
}

@:recv(Bool_) function swap(_x, _new_) {
	go.Go.globalMutex.acquire();
	final old = @:privateAccess _x._v;
	_x._v = _new_ ? 1 : 0;
	go.Go.globalMutex.release();
	return old == 1;
}

@:recv(Uint64)
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	go.Go.globalMutex.release();
	return b;
}

@:recv(Uint32)
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	go.Go.globalMutex.release();
	return b;
}

@:recv(Int64)
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	go.Go.globalMutex.release();
	return b;
}

@:recv(Int32)
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	go.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function compareAndSwap(_x, _old, _new) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function store(_x) {
	go.Go.globalMutex.acquire();
	_x._v = new go.AnyInterface(_val, null);
	go.Go.globalMutex.release();
}

@:recv(Pointer_)
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v?.__toRef__();
	go.Go.globalMutex.release();
	return value;
}

@:recv(Int32)
function store(_x) {
	go.Go.globalMutex.acquire();
	_x._v = _val;
	go.Go.globalMutex.release();
}

@:recv(Int32)
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	go.Go.globalMutex.release();
	return value;
}
@:recv(Int64)
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	go.Go.globalMutex.release();
	return value;
}
@:recv(Uint32)
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	go.Go.globalMutex.release();
	return value;
}
// Int32 Int64 Uint32 Uint64
@:recv(Uint64)
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	go.Go.globalMutex.release();
	return value;
}

function loadInt64(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

@:recv(Int32)
function add(_x, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v += _delta;
	go.Go.globalMutex.release();
	return value;
}

function addInt64(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function storeInt64(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

function loadUint64(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function addUint64(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function storeUint64(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

function loadUint32(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function addUint32(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function storeUint32(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

@:recv(Bool_)
function store()
	go._internal.sync.atomic_.Atomic__storeuint32.storeUint32(go.Go.pointer(_x._v), _val ? 1 : 0);

@:recv(Bool_)
function load() {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v == 1;
	go.Go.globalMutex.release();
	return value;
}
