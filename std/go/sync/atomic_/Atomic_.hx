package go.sync.atomic;

// number generic methods

function nothing() {}

@:recv([Uint64, Uint32, Int64_, Int32, Uintptr])
function swap(_x, _new_) {
	go.Go.globalMutex.acquire();
	_x._v = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

@:recv([Uint64, Uint32, Int64_, Int32, Uintptr])
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = _new_;
	go.Go.globalMutex.release();
	return b;
}

@:recv([Uint64, Uint32, Int64_, Int32, Uintptr])
function store(_x) {
	go.Go.globalMutex.acquire();
	_x._v = _val;
	go.Go.globalMutex.release();
}

@:recv([Uint64, Uint32, Int64_, Int32, Uintptr])
function load(_x) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v;
	go.Go.globalMutex.release();
	return value;
}

@:recv([Uint64, Uint32, Int64_, Int32, Uintptr])
function add(_x, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _x._v += _delta;
	go.Go.globalMutex.release();
	return value;
}

// bool methods

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

@:recv(Bool_) 
function swap(_x, _new_) {
	go.Go.globalMutex.acquire();
	final old = @:privateAccess _x._v;
	_x._v = _new_ ? 1 : 0;
	go.Go.globalMutex.release();
	return old == 1;
}

// value methods

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

@:recv(Value)
function swap(_v, _new_) {
	go.Go.globalMutex.acquire();
	var old:Dynamic = @:privateAccess _v._v;
	@:privateAccess _v._v = _new_;
	go.Go.globalMutex.release();
	return go.Go.pointer(old);
}

//function compareAndSwap( _v:go.Ref<go._internal.sync.atomic_.Atomic__value.Value>, _old:go.AnyInterface, _new_:go.AnyInterface):Bool
@:recv(Value)
function compareAndSwap(_v, _old, _new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_v._v = _new_;
	go.Go.globalMutex.release();
	return b;
}


// pointer methods

@:recv(Pointer_)
function compareAndSwap(_x, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_x._v = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return b;
}

@:recv(Pointer_)
function swap(_x, _new_) {
	go.Go.globalMutex.acquire();
	var old:Dynamic = @:privateAccess _x._v;
	_x._v = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return go.Go.pointer(old);
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


// load static methods

function loadPointer(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function loadUintptr(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function loadUint32(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function loadInt32(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function loadInt64(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}

function loadUint64(_addr) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value;
	go.Go.globalMutex.release();
	return value;
}
// add static methods

function addUintptr(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function addUint64(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function addUint32(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function addInt32(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

function addInt64(_addr, _delta) {
	go.Go.globalMutex.acquire();
	final value = @:privateAccess _addr.value += _delta;
	go.Go.globalMutex.release();
	return value;
}

// store static methods

function storeUint64(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

function storeUint32(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

function storeInt64(_addr, _val) {
	go.Go.globalMutex.acquire();
	_addr.value = _val;
	go.Go.globalMutex.release();
}

// swap static methods

function swapUint32(_addr, _new_) {
	go.Go.globalMutex.acquire();
	_addr.value = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

function swapUint64(_addr, _new_) {
	go.Go.globalMutex.acquire();
	_addr.value = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

function swapInt32(_addr, _new_) {
	go.Go.globalMutex.acquire();
	_addr.value = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

function swapInt64(_addr, _new_) {
	go.Go.globalMutex.acquire();
	_addr.value = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

function swapUintptr(_addr, _new_) {
	go.Go.globalMutex.acquire();
	_addr.value = _new_;
	go.Go.globalMutex.release();
	return _new_;
}

function swapPointer(_addr, _new_) {
	go.Go.globalMutex.acquire();
	var old:Dynamic = @:privateAccess _addr.value;
	_addr.value = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return old;
}

// not implemented: loadPointer
// not implemented: compareAndSwapPointer
// not implemented: addUintptr
// not implemented: swapUintptr
// swapInt32
// swapUint32
// uint32:swap
// uintptr:swap

// compareAndSwap static methods

function compareAndSwapPointer(_addr, _old, _new) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = new go.AnyInterface(_new_, null);
	go.Go.globalMutex.release();
	return b;
}

function compareAndSwapUintptr(_addr, _old, _new) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = _new_;
	go.Go.globalMutex.release();
	return b;
}

function compareAndSwapUint64(_addr, _old, _new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = _new_;
	go.Go.globalMutex.release();
	return b;
}

function compareAndSwapUint32(_addr, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = _new_;
	go.Go.globalMutex.release();
	return b;
}

function compareAndSwapInt64(_addr, _old,_new_) {
	final _x = _addr;
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = _new_;
	go.Go.globalMutex.release();
	return b;
}

function compareAndSwapInt32(_addr, _old,_new_) {
	go.Go.globalMutex.acquire();
	final b = _old == _new_;
	if (b)
		_addr.value = _new_;
	go.Go.globalMutex.release();
	return b;
}