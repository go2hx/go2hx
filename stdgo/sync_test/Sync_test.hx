package stdgo.sync_test;

import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

private var _bufPool:Pool = ({} : Pool);
private var _mapOps:GoArray<stdgo.sync_test.Sync_test.T_mapOp> = new GoArray<stdgo.sync_test.Sync_test.T_mapOp>(...[for (i in 0...5) (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp)]);
private var _misuseTests:Slice<T__struct_2> = (null : Slice<T__struct_2>);
private var _http:T_httpPkg = ({} : stdgo.sync_test.Sync_test.T_httpPkg);
private final _opLoad:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
private final _opStore:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
private final _opLoadOrStore:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
private final _opLoadAndDelete:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
private final _opDelete:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
private var _globalSink:AnyInterface = (null : AnyInterface);

/**
	// mapInterface is the interface Map implements.
**/
private typedef T_mapInterface = StructType & {
	public function load(_0:AnyInterface):{var _0:AnyInterface; var _1:Bool;};
	public function store(_key:AnyInterface, _value:AnyInterface):Void;
	public function loadOrStore(_key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;};
	public function loadAndDelete(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;};
	public function delete(_0:AnyInterface):Void;
	public function range(_0:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void;
};

@:structInit @:using(stdgo.sync_test.Sync_test.T_httpPkg_static_extension) private class T_httpPkg {
	public function new() {}

	public function __copy__() {
		return new T_httpPkg();
	}
}

@:structInit private class T_bench {
	public var _setup:(Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;
	public var _perG:(Ref<stdgo.testing.Testing.B>, Ref<stdgo.testing.Testing.PB>, GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;

	public function new(?_setup:(Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void,
			?_perG:(Ref<stdgo.testing.Testing.B>, Ref<stdgo.testing.Testing.PB>, GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void) {
		if (_setup != null)
			this._setup = _setup;
		if (_perG != null)
			this._perG = _perG;
	}

	public function __copy__() {
		return new T_bench(_setup, _perG);
	}
}

/**
	// RWMutexMap is an implementation of mapInterface using a sync.RWMutex.
**/
@:structInit @:using(stdgo.sync_test.Sync_test.RWMutexMap_static_extension) class RWMutexMap {
	public var _mu:RWMutex = ({} : RWMutex);
	public var _dirty:GoMap<AnyInterface, AnyInterface> = (null : GoMap<AnyInterface, AnyInterface>);

	public function new(?_mu:RWMutex, ?_dirty:GoMap<AnyInterface, AnyInterface>) {
		if (_mu != null)
			this._mu = _mu;
		if (_dirty != null)
			this._dirty = _dirty;
	}

	public function __copy__() {
		return new RWMutexMap(_mu, _dirty);
	}
}

/**
	// DeepCopyMap is an implementation of mapInterface using a Mutex and
	// atomic.Value.  It makes deep copies of the map on every write to avoid
	// acquiring the Mutex in Load.
**/
@:structInit @:using(stdgo.sync_test.Sync_test.DeepCopyMap_static_extension) class DeepCopyMap {
	public var _mu:Mutex = ({} : Mutex);
	public var _clean:stdgo.sync.atomic.Atomic.Value = ({} : stdgo.sync.atomic.Atomic.Value);

	public function new(?_mu:Mutex, ?_clean:stdgo.sync.atomic.Atomic.Value) {
		if (_mu != null)
			this._mu = _mu;
		if (_clean != null)
			this._clean = _clean;
	}

	public function __copy__() {
		return new DeepCopyMap(_mu, _clean);
	}
}

/**
	// mapCall is a quick.Generator for calls on mapInterface.
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_mapCall_static_extension) private class T_mapCall {
	public var _op:stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
	public var _k:AnyInterface = (null : AnyInterface);
	public var _v:AnyInterface = (null : AnyInterface);

	public function new(?_op:stdgo.sync_test.Sync_test.T_mapOp, ?_k:AnyInterface, ?_v:AnyInterface) {
		if (_op != null)
			this._op = _op;
		if (_k != null)
			this._k = _k;
		if (_v != null)
			this._v = _v;
	}

	public function __copy__() {
		return new T_mapCall(_op, _k, _v);
	}
}

@:structInit private class T_mapResult {
	public var _value:AnyInterface = (null : AnyInterface);
	public var _ok:Bool = false;

	public function new(?_value:AnyInterface, ?_ok:Bool) {
		if (_value != null)
			this._value = _value;
		if (_ok != null)
			this._ok = _ok;
	}

	public function __copy__() {
		return new T_mapResult(_value, _ok);
	}
}

@:local private typedef T__struct_1 = {};

@:local private typedef T__struct_2 = {
	public var _name:GoString;
	public var _f:() -> Void;
};

@:named private typedef T_mapOp = GoString;
@:named @:using(stdgo.sync_test.Sync_test.T_one_static_extension) private typedef T_one = GoInt;

function testCondSignal(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m:Mutex = ({} : Mutex);
	var _c = newCond(Go.asInterface((_m : Ref<Mutex>)));
	var _n:GoInt = (2 : GoInt);
	var _running = new Chan<Bool>((_n : GoInt).toBasic(), () -> false);
	var _awake = new Chan<Bool>((_n : GoInt).toBasic(), () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			Go.routine(() -> {
				var a = function():Void {
					_m.lock();
					_running.__send__(true);
					_c.wait_();
					_awake.__send__(true);
					_m.unlock();
				};
				a();
			});
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			_running.__get__();
		});
	};
	while (_n > (0 : GoInt)) {
		Go.select([
			_awake.__get__() => {
				_t.fatal(Go.toInterface(Go.str("goroutine not asleep")));
			},
			{}
		]);
		_m.lock();
		_c.signal();
		_m.unlock();
		_awake.__get__();
		Go.select([
			_awake.__get__() => {
				_t.fatal(Go.toInterface(Go.str("too many goroutines awake")));
			},
			{}
		]);
		_n--;
	};
	_c.signal();
}

function testCondSignalGenerations(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m:Mutex = ({} : Mutex);
	var _c = newCond(Go.asInterface((_m : Ref<Mutex>)));
	var _n:GoInt = (100 : GoInt);
	var _running = new Chan<Bool>((_n : GoInt).toBasic(), () -> false);
	var _awake = new Chan<GoInt>((_n : GoInt).toBasic(), () -> (0 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			Go.routine(() -> {
				var a = function(_i:GoInt):Void {
					_m.lock();
					_running.__send__(true);
					_c.wait_();
					_awake.__send__(_i);
					_m.unlock();
				};
				a(_i);
			});
			if (_i > (0 : GoInt)) {
				var _a:GoInt = _awake.__get__();
				if (_a != (_i - (1 : GoInt))) {
					_t.fatalf(Go.str("wrong goroutine woke up: want %d, got %d"), Go.toInterface(_i - (1 : GoInt)), Go.toInterface(_a));
				};
			};
			_running.__get__();
			_m.lock();
			_c.signal();
			_m.unlock();
		});
	};
}

function testCondBroadcast(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m:Mutex = ({} : Mutex);
	var _c = newCond(Go.asInterface((_m : Ref<Mutex>)));
	var _n:GoInt = (200 : GoInt);
	var _running = new Chan<GoInt>((_n : GoInt).toBasic(), () -> (0 : GoInt));
	var _awake = new Chan<GoInt>((_n : GoInt).toBasic(), () -> (0 : GoInt));
	var _exit:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			Go.routine(() -> {
				var a = function(_g:GoInt):Void {
					_m.lock();
					while (!_exit) {
						_running.__send__(_g);
						_c.wait_();
						_awake.__send__(_g);
					};
					_m.unlock();
				};
				a(_i);
			});
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _n, _i++, {
					_running.__get__();
				});
			};
			if (_i == (_n - (1 : GoInt))) {
				_m.lock();
				_exit = true;
				_m.unlock();
			};
			Go.select([
				_awake.__get__() => {
					_t.fatal(Go.toInterface(Go.str("goroutine not asleep")));
				},
				{}
			]);
			_m.lock();
			_c.broadcast();
			_m.unlock();
			var _seen = new Slice<Bool>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) false]);
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _n, _i++, {
					var _g:GoInt = _awake.__get__();
					if (_seen[_g]) {
						_t.fatal(Go.toInterface(Go.str("goroutine woke up twice")));
					};
					_seen[_g] = true;
				});
			};
		});
	};
	Go.select([
		_running.__get__() => {
			_t.fatal(Go.toInterface(Go.str("goroutine did not exit")));
		},
		{}
	]);
	_c.broadcast();
}

function testRace(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _x:GoInt = (0 : GoInt);
	var _c = newCond(Go.asInterface(((new Mutex() : Mutex) : Ref<Mutex>)));
	var _done = new Chan<Bool>(0, () -> false);
	Go.routine(() -> {
		var a = function():Void {
			_c.l.lock();
			_x = (1 : GoInt);
			_c.wait_();
			if (_x != ((2 : GoInt))) {
				_t.error(Go.toInterface(Go.str("want 2")));
			};
			_x = (3 : GoInt);
			_c.signal();
			_c.l.unlock();
			_done.__send__(true);
		};
		a();
	});
	Go.routine(() -> {
		var a = function():Void {
			_c.l.lock();
			while (true) {
				if (_x == ((1 : GoInt))) {
					_x = (2 : GoInt);
					_c.signal();
					break;
				};
				_c.l.unlock();
				stdgo.runtime.Runtime.gosched();
				_c.l.lock();
			};
			_c.l.unlock();
			_done.__send__(true);
		};
		a();
	});
	Go.routine(() -> {
		var a = function():Void {
			_c.l.lock();
			while (true) {
				if (_x == ((2 : GoInt))) {
					_c.wait_();
					if (_x != ((3 : GoInt))) {
						_t.error(Go.toInterface(Go.str("want 3")));
					};
					break;
				};
				if (_x == ((3 : GoInt))) {
					break;
				};
				_c.l.unlock();
				stdgo.runtime.Runtime.gosched();
				_c.l.lock();
			};
			_c.l.unlock();
			_done.__send__(true);
		};
		a();
	});
	_done.__get__();
	_done.__get__();
	_done.__get__();
}

function testCondSignalStealing(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _iters:GoInt = (0 : GoInt);
		Go.cfor(_iters < (1000:GoInt), _iters++, {
			var _m:Mutex = ({} : Mutex);
			var _cond = newCond(Go.asInterface((_m : Ref<Mutex>)));
			var _ch = new Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
			Go.routine(() -> {
				var a = function():Void {
					_m.lock();
					_ch.__send__((new T_httpPkg() : T_httpPkg));
					_cond.wait_();
					_m.unlock();
					_ch.__send__((new T_httpPkg() : T_httpPkg));
				};
				a();
			});
			_ch.__get__();
			_m.lock();
			_m.unlock();
			var _done:Bool = false;
			Go.routine(() -> {
				var a = function():Void {
					_cond.broadcast();
				};
				a();
			});
			Go.routine(() -> {
				var a = function():Void {
					_m.lock();
					while (!_done) {
						_cond.wait_();
					};
					_m.unlock();
				};
				a();
			});
			Go.select([
				stdgo.time.Time.after((("2000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
					_t.fatalf(Go.str("First waiter didn\'t get broadcast."));
				},
				_ch.__get__() => {}
			]);
			_m.lock();
			_done = true;
			_m.unlock();
			_cond.broadcast();
		});
	};
}

function testCondCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			if ((_err == null) || ((Go.typeAssert((_err : GoString)) : GoString) != Go.str("sync.Cond is copied"))) {
				_t.fatalf(Go.str("got %v, expect sync.Cond is copied"), _err);
			};
		};
		a();
	});
	try {
		var _c:Cond = ({l: Go.asInterface(((new Mutex() : Mutex) : Ref<Mutex>))} : Cond);
		_c.signal();
		var _c2:Cond = ({} : Cond);
		stdgo.reflect.Reflect.valueOf(Go.toInterface((_c2 : Ref<Cond>)))
			.elem()
			.set((stdgo.reflect.Reflect.valueOf(Go.toInterface((_c : Ref<Cond>)))
				.elem() == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface((_c : Ref<Cond>)))
				.elem()
				.__copy__()));
		_c2.signal();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkCond1(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (1 : GoInt));
}

function benchmarkCond2(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (2 : GoInt));
}

function benchmarkCond4(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (4 : GoInt));
}

function benchmarkCond8(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (8 : GoInt));
}

function benchmarkCond16(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (16 : GoInt));
}

function benchmarkCond32(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkCond(_b, (32 : GoInt));
}

function _benchmarkCond(_b:Ref<stdgo.testing.Testing.B>, _waiters:GoInt):Void {
	var _c = newCond(Go.asInterface(((new Mutex() : Mutex) : Ref<Mutex>)));
	var _done = new Chan<Bool>(0, () -> false);
	var _id:GoInt = (0 : GoInt);
	{
		var _routine:GoInt = (0 : GoInt);
		Go.cfor(_routine < (_waiters + (1 : GoInt)), _routine++, {
			Go.routine(() -> {
				var a = function():Void {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < _b.n, _i++, {
							_c.l.lock();
							if (_id == ((-1 : GoInt))) {
								_c.l.unlock();
								break;
							};
							_id++;
							if (_id == (_waiters + (1 : GoInt))) {
								_id = (0 : GoInt);
								_c.broadcast();
							} else {
								_c.wait_();
							};
							_c.l.unlock();
						});
					};
					_c.l.lock();
					_id = (-1 : GoInt);
					_c.broadcast();
					_c.l.unlock();
					_done.__send__(true);
				};
				a();
			});
		});
	};
	{
		var _routine:GoInt = (0 : GoInt);
		Go.cfor(_routine < (_waiters + (1 : GoInt)), _routine++, {
			_done.__get__();
		});
	};
}

/**
	// timeNow is a fake version of time.Now for tests.
**/
function _timeNow():stdgo.time.Time.Time {
	return (stdgo.time.Time.unix(("1136214245" : GoInt64),
		("0" : GoInt64)) == null ? null : stdgo.time.Time.unix(("1136214245" : GoInt64), ("0" : GoInt64)).__copy__());
}

function log(_w:stdgo.io.Io.Writer, _key:GoString, _val:GoString):Void {
	var _b = (Go.typeAssert((_bufPool.get() : Ref<stdgo.bytes.Bytes.Buffer>)) : Ref<stdgo.bytes.Bytes.Buffer>);
	_b.reset();
	_b.writeString(_timeNow().utc().format(Go.str("2006-01-02T15:04:05Z07:00")));
	_b.writeByte((32 : GoUInt8));
	_b.writeString(_key);
	_b.writeByte((61 : GoUInt8));
	_b.writeString(_val);
	_w.write(_b.bytes());
	_bufPool.put(Go.toInterface(_b));
}

function examplePool():Void {
	log(Go.asInterface(stdgo.os.Os.stdout), Go.str("path"), Go.str("/search?q=flowers"));
}

/**
	// This example fetches several URLs concurrently,
	// using a WaitGroup to block until all the fetches are complete.
**/
function exampleWaitGroup():Void {
	var _wg:WaitGroup = ({} : WaitGroup);
	var _urls:Slice<GoString> = (new Slice<GoString>(0, 0, Go.str("http://www.golang.org/"), Go.str("http://www.google.com/"),
		Go.str("http://www.example.com/")) : Slice<GoString>);
	for (_0 => _url in _urls) {
		_wg.add((1 : GoInt));
		Go.routine(() -> {
			var a = function(_url:GoString):Void {
				var __deferstack__:Array<Void->Void> = [];
				__deferstack__.unshift(() -> _wg.done());
				try {
					_http.get(_url);
					for (defer in __deferstack__) {
						defer();
					};
					{
						for (defer in __deferstack__) {
							defer();
						};
						if (Go.recover_exception != null)
							throw Go.recover_exception;
						return;
					};
				} catch (__exception__) {
					if (!(__exception__.native is AnyInterfaceData))
						throw __exception__;
					Go.recover_exception = __exception__.native;
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			};
			a(_url);
		});
	};
	_wg.wait_();
}

function exampleOnce():Void {
	var _once:Once = ({} : Once);
	var _onceBody:() -> Void = function():Void {
		stdgo.fmt.Fmt.println(Go.str("Only once"));
	};
	var _done = new Chan<Bool>(0, () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			Go.routine(() -> {
				var a = function():Void {
					_once.do_(_onceBody);
					_done.__send__(true);
				};
				a();
			});
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_done.__get__();
		});
	};
}

function _benchMap(_b:Ref<stdgo.testing.Testing.B>, _bench:T_bench):Void {
	for (_0 =>
		_m in (new GoArray<stdgo.sync_test.Sync_test.T_mapInterface>(Go.asInterface(((new stdgo.sync_test.Sync_test.DeepCopyMap() : stdgo.sync_test.Sync_test.DeepCopyMap) : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>)),
		Go.asInterface(((new stdgo.sync_test.Sync_test.RWMutexMap() : stdgo.sync_test.Sync_test.RWMutexMap) : Ref<stdgo.sync_test.Sync_test.RWMutexMap>)),
		Go.asInterface(((new Map_() : Map_) : Ref<Map_>))) : GoArray<stdgo.sync_test.Sync_test.T_mapInterface>)) {
		_b.run(stdgo.fmt.Fmt.sprintf(Go.str("%T"), Go.toInterface(_m)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
			_m = (Go.typeAssert((stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(Go.toInterface(_m)).elem())
				.interface_() : T_mapInterface)) : T_mapInterface);
			if (_bench._setup != null) {
				_bench._setup(_b, _m);
			};
			_b.resetTimer();
			var _i:GoInt64 = (0 : GoInt64);
			_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
				var _id:GoInt = (stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_i), ("1" : GoInt64)) - ("1" : GoInt64):GoInt);
				_bench._perG(_b, _pb, _id * _b.n, _m);
			});
		});
	};
}

function benchmarkLoadMostlyHits(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (1023:GoInt), _i++, {
					_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (2046:GoInt), _i++, {
					_m.load(Go.toInterface(_i % (1023 : GoInt)));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.load(Go.toInterface(_i % (1024 : GoInt)));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadMostlyMisses(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (1:GoInt), _i++, {
					_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (2:GoInt), _i++, {
					_m.load(Go.toInterface(_i % (1 : GoInt)));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.load(Go.toInterface(_i % (1024 : GoInt)));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadOrStoreBalanced(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok: false};
				}, _0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_b.skip(Go.toInterface(Go.str("DeepCopyMap has quadratic running time.")));
				};
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (128:GoInt), _i++, {
					_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (256:GoInt), _i++, {
					_m.load(Go.toInterface(_i % (128 : GoInt)));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				var _j:GoInt = _i % (256 : GoInt);
				if (_j < (128:GoInt)) {
					{
						var __tmp__ = _m.loadOrStore(Go.toInterface(_j), Go.toInterface(_i)),
							_0:AnyInterface = __tmp__._0,
							_ok:Bool = __tmp__._1;
						if (!_ok) {
							_b.fatalf(Go.str("unexpected miss for %v"), Go.toInterface(_j));
						};
					};
				} else {
					{
						var __tmp__ = _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i)),
							_v:AnyInterface = __tmp__._0,
							_loaded:Bool = __tmp__._1;
						if (_loaded) {
							_b.fatalf(Go.str("failed to store %v: existing value %v"), Go.toInterface(_i), _v);
						};
					};
				};
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadOrStoreUnique(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_setup: function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok: false};
				}, _0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_b.skip(Go.toInterface(Go.str("DeepCopyMap has quadratic running time.")));
				};
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadOrStoreCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			_m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadAndDeleteBalanced(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok: false};
				}, _0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_b.skip(Go.toInterface(Go.str("DeepCopyMap has quadratic running time.")));
				};
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (128:GoInt), _i++, {
					_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (256:GoInt), _i++, {
					_m.load(Go.toInterface(_i % (128 : GoInt)));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				var _j:GoInt = _i % (256 : GoInt);
				if (_j < (128:GoInt)) {
					_m.loadAndDelete(Go.toInterface(_j));
				} else {
					_m.loadAndDelete(Go.toInterface(_i));
				};
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadAndDeleteUnique(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_setup: function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var __tmp__ = try {
					{value: (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok: true};
				} catch (_) {
					{value: (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok: false};
				}, _0 = __tmp__.value, _ok = __tmp__.ok;
				if (_ok) {
					_b.skip(Go.toInterface(Go.str("DeepCopyMap has quadratic running time.")));
				};
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.loadAndDelete(Go.toInterface(_i));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkLoadAndDeleteCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			_m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.loadAndDelete(Go.toInterface((0 : GoInt)));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkRange(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (1024:GoInt), _i++, {
					_m.store(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.range(function(_0:AnyInterface, _1:AnyInterface):Bool {
					return true;
				});
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

/**
	// BenchmarkAdversarialAlloc tests performance when we store a new value
	// immediately whenever the map is promoted to clean and otherwise load a
	// unique, missing key.
	//
	// This forces the Load calls to always acquire the map's mutex.
**/
function benchmarkAdversarialAlloc(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			var _0:GoInt64 = (0 : GoInt64),
				_1:GoInt64 = (0 : GoInt64),
				_loadsSinceStore:GoInt64 = _1,
				_stores:GoInt64 = _0;
			Go.cfor(_pb.next(), _i++, {
				_m.load(Go.toInterface(_i));
				{
					_loadsSinceStore++;
					if (_loadsSinceStore > _stores) {
						_m.loadOrStore(Go.toInterface(_i), Go.toInterface(_stores));
						_loadsSinceStore = ("0" : GoInt64);
						_stores++;
					};
				};
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

/**
	// BenchmarkAdversarialDelete tests performance when we periodically delete
	// one key and add a different one in a large map.
	//
	// This forces the Load calls to always acquire the map's mutex and periodically
	// makes a full copy of the map despite changing only one entry.
**/
function benchmarkAdversarialDelete(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (1024:GoInt), _i++, {
					_m.store(Go.toInterface(_i), Go.toInterface(_i));
				});
			};
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.load(Go.toInterface(_i));
				if (_i % (1024 : GoInt) == ((0 : GoInt))) {
					_m.range(function(_k:AnyInterface, _0:AnyInterface):Bool {
						_m.delete(_k);
						return false;
					});
					_m.store(Go.toInterface(_i), Go.toInterface(_i));
				};
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function benchmarkDeleteCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchMap(_b, ({
		_setup: function(_0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
			_m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
		},
		_perG: function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
			Go.cfor(_pb.next(), _i++, {
				_m.delete(Go.toInterface((0 : GoInt)));
			});
		}
	} : stdgo.sync_test.Sync_test.T_bench));
}

function _randValue(_r:Ref<stdgo.math.rand.Rand.Rand>):AnyInterface {
	var _b = new Slice<GoUInt8>((_r.intn((4 : GoInt)) : GoInt).toBasic(), 0, ...[for (i in 0...(_r.intn((4 : GoInt)) : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_i in 0..._b.length.toBasic()) {
		_b[_i] = (97 : GoUInt8) + (stdgo.math.rand.Rand.intn((26 : GoInt)) : GoByte);
	};
	return Go.toInterface((_b : GoString));
}

function _applyCalls(_m:T_mapInterface, _calls:Slice<T_mapCall>):{var _0:Slice<T_mapResult>; var _1:GoMap<AnyInterface, AnyInterface>;} {
	var _results:Slice<T_mapResult> = (null : Slice<stdgo.sync_test.Sync_test.T_mapResult>),
		_final:GoMap<AnyInterface, AnyInterface> = (null : GoMap<AnyInterface, AnyInterface>);
	for (_0 => _c in _calls) {
		var __tmp__ = _c._apply(_m),
			_v:AnyInterface = __tmp__._0,
			_ok:Bool = __tmp__._1;
		_results = _results.__appendref__((new stdgo.sync_test.Sync_test.T_mapResult(_v, _ok) : stdgo.sync_test.Sync_test.T_mapResult));
	};
	_final = (new GoObjectMap<AnyInterface, AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
		stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])},
		{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])}))) : GoMap<AnyInterface, AnyInterface>);
	_m.range(function(_k:AnyInterface, _v:AnyInterface):Bool {
		_final[_k] = _v;
		return true;
	});
	return {_0: _results, _1: _final};
}

function _applyMap(_calls:Slice<T_mapCall>):{var _0:Slice<T_mapResult>; var _1:GoMap<AnyInterface, AnyInterface>;} {
	return _applyCalls(Go.asInterface(({} : Map_)), _calls);
}

function _applyRWMutexMap(_calls:Slice<T_mapCall>):{var _0:Slice<T_mapResult>; var _1:GoMap<AnyInterface, AnyInterface>;} {
	return _applyCalls(Go.asInterface(({} : stdgo.sync_test.Sync_test.RWMutexMap)), _calls);
}

function _applyDeepCopyMap(_calls:Slice<T_mapCall>):{var _0:Slice<T_mapResult>; var _1:GoMap<AnyInterface, AnyInterface>;} {
	return _applyCalls(Go.asInterface(({} : stdgo.sync_test.Sync_test.DeepCopyMap)), _calls);
}

function testMapMatchesRWMutex(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _err:Error = stdgo.testing.quick.Quick.checkEqual(Go.toInterface(_applyMap), Go.toInterface(_applyRWMutexMap), null);
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
}

function testMapMatchesDeepCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _err:Error = stdgo.testing.quick.Quick.checkEqual(Go.toInterface(_applyMap), Go.toInterface(_applyDeepCopyMap), null);
		if (_err != null) {
			_t.error(Go.toInterface(_err));
		};
	};
}

function testConcurrentRange(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{};
	try {
		var _m = ({} : Map_);
		{
			var _n:GoInt64 = (("1" : GoInt64) : GoInt64);
			Go.cfor(_n <= ("1024" : GoInt64), _n++, {
				_m.store(Go.toInterface(_n), Go.toInterface((_n : GoInt64)));
			});
		};
		var _done = new Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
		var _wg:WaitGroup = ({} : WaitGroup);
		__deferstack__.unshift(() -> {
			var a = function():Void {
				if (_done != null)
					_done.__close__();
				_wg.wait_();
			};
			a();
		});
		{
			var _g:GoInt64 = (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) : GoInt64);
			Go.cfor(_g > ("0" : GoInt64), _g--, {
				var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_g));
				_wg.add((1 : GoInt));
				Go.routine(() -> {
					var a = function(_g:GoInt64):Void {
						var __deferstack__:Array<Void->Void> = [];
						__deferstack__.unshift(() -> _wg.done());
						try {
							{
								var _i:GoInt64 = (("0" : GoInt64) : GoInt64);
								Go.cfor(true, _i++, {
									Go.select([
										_done.__get__() => {
											{
												for (defer in __deferstack__) {
													defer();
												};
												return;
											};
										},
										{}
									]);
									{
										var _n:GoInt64 = (("1" : GoInt64) : GoInt64);
										Go.cfor(_n < ("1024":GoInt64), _n++, {
											if (_r.int63n(("1024" : GoInt64)) == (("0" : GoInt64))) {
												_m.store(Go.toInterface(_n), Go.toInterface((_n * _i) * _g));
											} else {
												_m.load(Go.toInterface(_n));
											};
										});
									};
								});
							};
							for (defer in __deferstack__) {
								defer();
							};
							{
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								return;
							};
						} catch (__exception__) {
							if (!(__exception__.native is AnyInterfaceData))
								throw __exception__;
							Go.recover_exception = __exception__.native;
							for (defer in __deferstack__) {
								defer();
							};
							if (Go.recover_exception != null)
								throw Go.recover_exception;
							return;
						};
					};
					a(_g);
				});
			});
		};
		var _iters:GoInt = (1024 : GoInt);
		if (stdgo.testing.Testing.short()) {
			_iters = (16 : GoInt);
		};
		{
			var _n:GoInt = _iters;
			Go.cfor(_n > (0 : GoInt), _n--, {
				var _seen = new Map<Int, Bool>();
				_m.range(function(_ki:AnyInterface, _vi:AnyInterface):Bool {
					var _0:GoInt64 = (Go.typeAssert((_ki : GoInt64)) : GoInt64),
						_1:GoInt64 = (Go.typeAssert((_vi : GoInt64)) : GoInt64),
						_v:GoInt64 = _1,
						_k:GoInt64 = _0;
					if (_v % _k != (("0" : GoInt64))) {
						_t.fatalf(Go.str("while Storing multiples of %v, Range saw value %v"), Go.toInterface(_k), Go.toInterface(_v));
					};
					if (_seen[_k]) {
						_t.fatalf(Go.str("Range visited key %v twice"), Go.toInterface(_k));
					};
					_seen[_k] = true;
					return true;
				});
				if ((_seen.length) != ((1024 : GoInt))) {
					_t.fatalf(Go.str("Range visited %v elements of %v-element Map"), Go.toInterface((_seen.length)), Go.toInterface((1024 : GoInt)));
				};
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testIssue40999(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m:Map_ = ({} : Map_);
	_m.store((null : AnyInterface), Go.toInterface((new T_httpPkg() : T_httpPkg)));
	var _finalized:GoUInt32 = (0 : GoUInt32);
	while (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_finalized)) == (("0" : GoUInt32))) {
		var _p = Go.pointer((0 : GoInt));
		stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_p), Go.toInterface(function(_0:Pointer<GoInt>):Void {
			stdgo.sync.atomic.Atomic.addUint32(Go.pointer(_finalized), ("1" : GoUInt32));
		}));
		_m.store(Go.toInterface(_p), Go.toInterface((new T_httpPkg() : T_httpPkg)));
		_m.delete(Go.toInterface(_p));
		stdgo.runtime.Runtime.gc();
	};
}

function testMapRangeNestedCall(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _m:Map_ = ({} : Map_);
	for (_i => _v in (new GoArray<GoString>(Go.str("hello"), Go.str("world"), Go.str("Go")) : GoArray<GoString>)) {
		_m.store(Go.toInterface(_i), Go.toInterface(_v));
	};
	_m.range(function(_key:AnyInterface, _value:AnyInterface):Bool {
		_m.range(function(_key:AnyInterface, _value:AnyInterface):Bool {
			{
				var __tmp__ = _m.load(_key),
					_v:AnyInterface = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok || !stdgo.reflect.Reflect.deepEqual(_v, _value)) {
					_t.fatalf(Go.str("Nested Range loads unexpected value, got %+v want %+v"), _v, _value);
				};
			};
			{
				var __tmp__ = _m.loadOrStore(Go.toInterface((42 : GoInt)), Go.toInterface(Go.str("dummy"))),
					_0:AnyInterface = __tmp__._0,
					_loaded:Bool = __tmp__._1;
				if (_loaded) {
					_t.fatalf(Go.str("Nested Range loads unexpected value, want store a new value"));
				};
			};
			var _val:GoString = Go.str("sync.Map");
			_m.store(Go.toInterface((42 : GoInt)), Go.toInterface(_val));
			{
				var __tmp__ = _m.loadAndDelete(Go.toInterface((42 : GoInt))),
					_v:AnyInterface = __tmp__._0,
					_loaded:Bool = __tmp__._1;
				if (!_loaded || !stdgo.reflect.Reflect.deepEqual(_v, Go.toInterface(_val))) {
					_t.fatalf(Go.str("Nested Range loads unexpected value, got %v, want %v"), _v, Go.toInterface(_val));
				};
			};
			return true;
		});
		_m.delete(_key);
		return true;
	});
	var _length:GoInt = (0 : GoInt);
	_m.range(function(_key:AnyInterface, _value:AnyInterface):Bool {
		_length++;
		return true;
	});
	if (_length != ((0 : GoInt))) {
		_t.fatalf(Go.str("Unexpected sync.Map size, got %v want %v"), Go.toInterface(_length), Go.toInterface((0 : GoInt)));
	};
}

function hammerSemaphore(_s:Pointer<GoUInt32>, _loops:GoInt, _cdone:Chan<Bool>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _loops, _i++, {
			runtime_Semacquire(_s);
			runtime_Semrelease(_s, false, (0 : GoInt));
		});
	};
	_cdone.__send__(true);
}

function testSemaphore(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _s = Go.pointer((0 : GoUInt32));
	_s.value = ("1" : GoUInt32);
	var _c = new Chan<Bool>(0, () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			Go.routine(() -> hammerSemaphore(_s, (1000 : GoInt), _c));
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_c.__get__();
		});
	};
}

function benchmarkUncontendedSemaphore(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _s = Go.pointer((0 : GoUInt32));
	_s.value = ("1" : GoUInt32);
	hammerSemaphore(_s, _b.n, new Chan<Bool>((2 : GoInt).toBasic(), () -> false));
}

function benchmarkContendedSemaphore(_b:Ref<stdgo.testing.Testing.B>):Void {
	var __deferstack__:Array<Void->Void> = [];
	_b.stopTimer();
	try {
		var _s = Go.pointer((0 : GoUInt32));
		_s.value = ("1" : GoUInt32);
		var _c = new Chan<Bool>(0, () -> false);
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((2 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		_b.startTimer();
		Go.routine(() -> hammerSemaphore(_s, _b.n / (2 : GoInt), _c));
		Go.routine(() -> hammerSemaphore(_s, _b.n / (2 : GoInt), _c));
		_c.__get__();
		_c.__get__();
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function hammerMutex(_m:Ref<Mutex>, _loops:GoInt, _cdone:Chan<Bool>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _loops, _i++, {
			if (_i % (3 : GoInt) == ((0 : GoInt))) {
				if (_m.tryLock()) {
					_m.unlock();
				};
				continue;
			};
			_m.lock();
			_m.unlock();
		});
	};
	_cdone.__send__(true);
}

function testMutex(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _n:GoInt = stdgo.runtime.Runtime.setMutexProfileFraction((1 : GoInt));
		if (_n != ((0 : GoInt))) {
			_t.logf(Go.str("got mutexrate %d expected 0"), Go.toInterface(_n));
		};
	};
	try {
		{
			var _a0 = (0 : GoInt);
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.setMutexProfileFraction(_a0));
		};
		var _m = ({} : Mutex);
		_m.lock();
		if (_m.tryLock()) {
			_t.fatalf(Go.str("TryLock succeeded with mutex locked"));
		};
		_m.unlock();
		if (!_m.tryLock()) {
			_t.fatalf(Go.str("TryLock failed with mutex unlocked"));
		};
		_m.unlock();
		var _c = new Chan<Bool>(0, () -> false);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				Go.routine(() -> hammerMutex(_m, (1000 : GoInt), _c));
			});
		};
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (10:GoInt), _i++, {
				_c.__get__();
			});
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testMutexMisuse(_t:Ref<stdgo.testing.Testing.T>):Void {
	stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
	for (_0 => _test in _misuseTests) {
		var __tmp__ = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], Go.str("TESTMISUSE"), _test._name).combinedOutput(),
			_out:Slice<GoUInt8> = __tmp__._0,
			_err:Error = __tmp__._1;
		if ((_err == null) || !stdgo.strings.Strings.contains((_out : GoString), Go.str("unlocked"))) {
			_t.errorf(Go.str("%s: did not find failure with message about unlocked lock: %s\n%s\n"), Go.toInterface(_test._name), Go.toInterface(_err),
				Go.toInterface(_out));
		};
	};
}

function testMutexFairness(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _mu:Mutex = ({} : Mutex);
	try {
		var _stop = new Chan<Bool>(0, () -> false);
		{
			var _a0 = _stop;
			__deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
		};
		Go.routine(() -> {
			var a = function():Void {
				while (true) {
					_mu.lock();
					stdgo.time.Time.sleep((("100000" : GoInt64) : stdgo.time.Time.Duration));
					_mu.unlock();
					Go.select([
						_stop.__get__() => {
							return;
						},
						{}
					]);
				};
			};
			a();
		});
		var _done = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
		Go.routine(() -> {
			var a = function():Void {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (10:GoInt), _i++, {
						stdgo.time.Time.sleep((("100000" : GoInt64) : stdgo.time.Time.Duration));
						_mu.lock();
						_mu.unlock();
					});
				};
				_done.__send__(true);
			};
			a();
		});
		Go.select([
			stdgo.time.Time.after((("10000000000" : GoInt64) : stdgo.time.Time.Duration)).__get__() => {
				_t.fatalf(Go.str("can\'t acquire Mutex in 10 seconds"));
			},
			_done.__get__() => {}
		]);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:structInit @:using(stdgo.sync_test.Sync_test.PaddedMutex_benchmarkMutexUncontended_0_static_extension) class PaddedMutex_benchmarkMutexUncontended_0 {
	@:embedded
	public var mutex:Mutex = ({} : Mutex);
	public var _pad:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...128) (0 : GoUInt8)]);

	public function new(?mutex:Mutex, ?_pad:GoArray<GoUInt8>) {
		if (mutex != null)
			this.mutex = mutex;
		if (_pad != null)
			this._pad = _pad;
	}

	@:embedded
	public function lock()
		null;

	@:embedded
	public function tryLock():Bool
		return false;

	@:embedded
	public function unlock()
		null;

	@:embedded
	public function _lockSlow()
		null;

	@:embedded
	public function _unlockSlow(__0:GoInt32)
		null;

	public function __copy__() {
		return new PaddedMutex_benchmarkMutexUncontended_0(mutex, _pad);
	}
}

function benchmarkMutexUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _mu:PaddedMutex_benchmarkMutexUncontended_0 = ({} : stdgo.sync_test.Sync_test.PaddedMutex_benchmarkMutexUncontended_0);
		while (_pb.next()) {
			_mu.lock();
			_mu.unlock();
		};
	});
}

function _benchmarkMutex(_b:Ref<stdgo.testing.Testing.B>, _slack:Bool, _work:Bool):Void {
	var _mu:Mutex = ({} : Mutex);
	if (_slack) {
		_b.setParallelism((10 : GoInt));
	};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _foo:GoInt = (0 : GoInt);
		while (_pb.next()) {
			_mu.lock();
			_mu.unlock();
			if (_work) {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (100:GoInt), _i++, {
						_foo = _foo * ((2 : GoInt));
						_foo = _foo / ((2 : GoInt));
					});
				};
			};
		};
		_foo;
	});
}

function benchmarkMutex(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkMutex(_b, false, false);
}

function benchmarkMutexSlack(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkMutex(_b, true, false);
}

function benchmarkMutexWork(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkMutex(_b, false, true);
}

function benchmarkMutexWorkSlack(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkMutex(_b, true, true);
}

function benchmarkMutexNoSpin(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _m:Mutex = ({} : Mutex);
	var _0:GoUInt64 = (0 : GoUInt64),
		_1:GoUInt64 = (0 : GoUInt64),
		_acc1:GoUInt64 = _1,
		_acc0:GoUInt64 = _0;
	_b.setParallelism((4 : GoInt));
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _c = new Chan<Bool>(0, () -> false);
		var _data:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0...4096) (0 : GoUInt64)]);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_pb.next(), _i++, {
				if (_i % (4 : GoInt) == ((0 : GoInt))) {
					_m.lock();
					_acc0 = _acc0 - (("100" : GoUInt64));
					_acc1 = _acc1 + (("100" : GoUInt64));
					_m.unlock();
				} else {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (_data.length), _i = _i + ((4 : GoInt)), {
							_data[_i]++;
						});
					};
					Go.routine(() -> {
						var a = function():Void {
							_c.__send__(true);
						};
						a();
					});
					_c.__get__();
				};
			});
		};
	});
}

function benchmarkMutexSpin(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _m:Mutex = ({} : Mutex);
	var _0:GoUInt64 = (0 : GoUInt64),
		_1:GoUInt64 = (0 : GoUInt64),
		_acc1:GoUInt64 = _1,
		_acc0:GoUInt64 = _0;
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _data:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0...16384) (0 : GoUInt64)]);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_pb.next(), _i++, {
				_m.lock();
				_acc0 = _acc0 - (("100" : GoUInt64));
				_acc1 = _acc1 + (("100" : GoUInt64));
				_m.unlock();
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (_data.length), _i = _i + ((4 : GoInt)), {
						_data[_i]++;
					});
				};
			});
		};
	});
}

function _run(_t:Ref<stdgo.testing.Testing.T>, _once:Ref<Once>, _o:Pointer<T_one>, _c:Chan<Bool>):Void {
	_once.do_(function():Void {
		_o.value.increment(_o);
	});
	{
		var _v:stdgo.sync_test.Sync_test.T_one = _o.value;
		if (_v != ((1 : stdgo.sync_test.Sync_test.T_one))) {
			_t.errorf(Go.str("once failed inside run: %d is not 1"), Go.toInterface(Go.asInterface(_v)));
		};
	};
	_c.__send__(true);
}

function testOnce(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _o = Go.pointer(((0 : GoInt) : stdgo.sync_test.Sync_test.T_one));
	var _once = ({} : Once);
	var _c = new Chan<Bool>(0, () -> false);
	{};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			Go.routine(() -> _run(_t, _once, _o, _c));
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_c.__get__();
		});
	};
	if (_o.value != ((1 : stdgo.sync_test.Sync_test.T_one))) {
		_t.errorf(Go.str("once failed outside run: %d is not 1"), Go.toInterface(Go.asInterface(_o.value)));
	};
}

function testOncePanic(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _once:Once = ({} : Once);
	{
		var a = function():Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					{
						var _r:AnyInterface = ({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						});
						if (_r == null) {
							_t.fatalf(Go.str("Once.Do did not panic"));
						};
					};
				};
				a();
			});
			try {
				_once.do_(function():Void {
					throw Go.toInterface(Go.str("failed"));
				});
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		a();
	};
	_once.do_(function():Void {
		_t.fatalf(Go.str("Once.Do called twice"));
	});
}

function benchmarkOnce(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _once:Once = ({} : Once);
	var _f:() -> Void = function():Void {};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			_once.do_(_f);
		};
	});
}

function testPool(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
		__deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
	};
	try {
		var _p:Pool = ({} : Pool);
		if (_p.get() != null) {
			_t.fatal(Go.toInterface(Go.str("expected empty")));
		};
		runtime_procPin();
		_p.put(Go.toInterface(Go.str("a")));
		_p.put(Go.toInterface(Go.str("b")));
		{
			var _g:AnyInterface = _p.get();
			if (Go.toInterface(_g) != (Go.toInterface(Go.str("a")))) {
				_t.fatalf(Go.str("got %#v; want a"), _g);
			};
		};
		{
			var _g:AnyInterface = _p.get();
			if (Go.toInterface(_g) != (Go.toInterface(Go.str("b")))) {
				_t.fatalf(Go.str("got %#v; want b"), _g);
			};
		};
		{
			var _g:AnyInterface = _p.get();
			if (_g != null) {
				_t.fatalf(Go.str("got %#v; want nil"), _g);
			};
		};
		runtime_procUnpin();
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (100:GoInt), _i++, {
				_p.put(Go.toInterface(Go.str("c")));
			});
		};
		stdgo.runtime.Runtime.gc();
		{
			var _g:AnyInterface = _p.get();
			if (Go.toInterface(_g) != (Go.toInterface(Go.str("c")))) {
				_t.fatalf(Go.str("got %#v; want c after GC"), _g);
			};
		};
		stdgo.runtime.Runtime.gc();
		{
			var _g:AnyInterface = _p.get();
			if (_g != null) {
				_t.fatalf(Go.str("got %#v; want nil after second GC"), _g);
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testPoolNew(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
		__deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
	};
	try {
		var _i:GoInt = (0 : GoInt);
		var _p:Pool = ({
			new_: function():AnyInterface {
				_i++;
				return Go.toInterface(_i);
			}
		} : Pool);
		{
			var _v:AnyInterface = _p.get();
			if (Go.toInterface(_v) != (Go.toInterface((1 : GoInt)))) {
				_t.fatalf(Go.str("got %v; want 1"), _v);
			};
		};
		{
			var _v:AnyInterface = _p.get();
			if (Go.toInterface(_v) != (Go.toInterface((2 : GoInt)))) {
				_t.fatalf(Go.str("got %v; want 2"), _v);
			};
		};
		runtime_procPin();
		_p.put(Go.toInterface((42 : GoInt)));
		{
			var _v:AnyInterface = _p.get();
			if (Go.toInterface(_v) != (Go.toInterface((42 : GoInt)))) {
				_t.fatalf(Go.str("got %v; want 42"), _v);
			};
		};
		runtime_procUnpin();
		{
			var _v:AnyInterface = _p.get();
			if (Go.toInterface(_v) != (Go.toInterface((3 : GoInt)))) {
				_t.fatalf(Go.str("got %v; want 3"), _v);
			};
		};
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

/**
	// Test that Pool does not hold pointers to previously cached resources.
**/
function testPoolGC(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testPool(_t, true);
}

/**
	// Test that Pool releases resources on GC.
**/
function testPoolRelease(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testPool(_t, false);
}

function _testPool(_t:Ref<stdgo.testing.Testing.T>, _drain:Bool):Void {
	stdgo.internal.Macro.controlFlow({
		var _p:Pool = ({} : Pool);
		{};
		@:label("loop") {
			var _try:GoInt = (0 : GoInt);
			Go.cfor(_try < (3:GoInt), _try++, {
				if ((_try == (1 : GoInt)) && stdgo.testing.Testing.short()) {
					break;
				};
				var _0:GoUInt32 = (0 : GoUInt32),
					_1:GoUInt32 = (0 : GoUInt32),
					_fin1:GoUInt32 = _1,
					_fin:GoUInt32 = _0;
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (100:GoInt), _i++, {
						var _v = Go.pointer(("" : GoString));
						stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_v), Go.toInterface(function(_vv:Pointer<GoString>):Void {
							stdgo.sync.atomic.Atomic.addUint32(Go.pointer(_fin), ("1" : GoUInt32));
						}));
						_p.put(Go.toInterface(_v));
					});
				};
				if (_drain) {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (100:GoInt), _i++, {
							_p.get();
						});
					};
				};
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (5:GoInt), _i++, {
						stdgo.runtime.Runtime.gc();
						stdgo.time.Time.sleep(((_i * (100 : GoInt)) +
							(10 : GoInt) : stdgo.time.Time.Duration) * (("1000000" : GoInt64) : stdgo.time.Time.Duration));
						{
							_fin1 = stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_fin));
							if (_fin1 >= ("99" : GoUInt32)) {
								continue;
							};
						};
					});
				};
				_t.fatalf(Go.str("only %v out of %v resources are finalized on try %v"), Go.toInterface(_fin1), Go.toInterface((100 : GoInt)),
					Go.toInterface(_try));
			});
		};
	});
}

function testPoolStress(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var n:GoInt = (1000000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		n = n / ((100 : GoInt));
	};
	var _p:Pool = ({} : Pool);
	var _done = new Chan<Bool>(0, () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			Go.routine(() -> {
				var a = function():Void {
					var _v:AnyInterface = Go.toInterface((0 : GoInt));
					{
						var _j:GoInt = (0 : GoInt);
						Go.cfor(_j < n, _j++, {
							if (_v == null) {
								_v = Go.toInterface((0 : GoInt));
							};
							_p.put(_v);
							_v = _p.get();
							if ((_v != null) && ((Go.typeAssert((_v : GoInt)) : GoInt) != (0 : GoInt))) {
								_t.errorf(Go.str("expect 0, got %v"), _v);
								break;
							};
						});
					};
					_done.__send__(true);
				};
				a();
			});
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_done.__get__();
		});
	};
}

function testPoolDequeue(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testPoolDequeue(_t, newPoolDequeue((16 : GoInt)));
}

function testPoolChain(_t:Ref<stdgo.testing.Testing.T>):Void {
	_testPoolDequeue(_t, newPoolChain());
}

function _testPoolDequeue(_t:Ref<stdgo.testing.Testing.T>, _d:PoolDequeue):Void {
	{};
	var n:GoInt = (2000000 : GoInt);
	if (stdgo.testing.Testing.short()) {
		n = (1000 : GoInt);
	};
	var _have = new Slice<GoInt32>((n : GoInt).toBasic(), 0, ...[for (i in 0...(n : GoInt).toBasic()) (0 : GoInt32)]);
	var _stop:GoInt32 = (0 : GoInt32);
	var _wg:WaitGroup = ({} : WaitGroup);
	var _record:GoInt->Void = function(_val:GoInt):Void {
		stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_have[_val]), (1 : GoInt32));
		if (_val == (n - (1 : GoInt))) {
			stdgo.sync.atomic.Atomic.storeInt32(Go.pointer(_stop), (1 : GoInt32));
		};
	};
	{
		var _i:GoInt = (1 : GoInt);
		Go.cfor(_i < (10:GoInt), _i++, {
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					var _fail:GoInt = (0 : GoInt);
					while (stdgo.sync.atomic.Atomic.loadInt32(Go.pointer(_stop)) == ((0 : GoInt32))) {
						var __tmp__ = _d.popTail(), _val:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
						if (_ok) {
							_fail = (0 : GoInt);
							_record((Go.typeAssert((_val : GoInt)) : GoInt));
						} else {
							{
								_fail++;
								if (_fail % (100 : GoInt) == ((0 : GoInt))) {
									stdgo.runtime.Runtime.gosched();
								};
							};
						};
					};
					_wg.done();
				};
				a();
			});
		});
	};
	var _nPopHead:GoInt = (0 : GoInt);
	_wg.add((1 : GoInt));
	Go.routine(() -> {
		var a = function():Void {
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < n, _j++, {
					while (!_d.pushHead(Go.toInterface(_j))) {
						stdgo.runtime.Runtime.gosched();
					};
					if (_j % (10 : GoInt) == ((0 : GoInt))) {
						var __tmp__ = _d.popHead(), _val:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
						if (_ok) {
							_nPopHead++;
							_record((Go.typeAssert((_val : GoInt)) : GoInt));
						};
					};
				});
			};
			_wg.done();
		};
		a();
	});
	_wg.wait_();
	for (_i => _count in _have) {
		if (_count != ((1 : GoInt32))) {
			_t.errorf(Go.str("expected have[%d] = 1, got %d"), Go.toInterface(_i), Go.toInterface(_count));
		};
	};
	if (!stdgo.testing.Testing.short() && (_nPopHead == (0 : GoInt))) {
		_t.errorf(Go.str("popHead never succeeded"));
	};
}

function benchmarkPool(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _p:Pool = ({} : Pool);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			_p.put(Go.toInterface((1 : GoInt)));
			_p.get();
		};
	});
}

function benchmarkPoolOverflow(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _p:Pool = ({} : Pool);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			{
				var _b:GoInt = (0 : GoInt);
				Go.cfor(_b < (100:GoInt), _b++, {
					_p.put(Go.toInterface((1 : GoInt)));
				});
			};
			{
				var _b:GoInt = (0 : GoInt);
				Go.cfor(_b < (100:GoInt), _b++, {
					_p.get();
				});
			};
		};
	});
}

/**
	// Simulate object starvation in order to force Ps to steal objects
	// from other Ps.
**/
function benchmarkPoolStarvation(_b:Ref<stdgo.testing.Testing.B>):Void {
	var _p:Pool = ({} : Pool);
	var _count:GoInt = (100 : GoInt);
	var _countStarved:GoInt = _count - ((_count : GoFloat32) * (0.33000001311302185 : GoFloat64) : GoInt);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			{
				var _b:GoInt = (0 : GoInt);
				Go.cfor(_b < _countStarved, _b++, {
					_p.put(Go.toInterface((1 : GoInt)));
				});
			};
			{
				var _b:GoInt = (0 : GoInt);
				Go.cfor(_b < _count, _b++, {
					_p.get();
				});
			};
		};
	});
}

function benchmarkPoolSTW(_b:Ref<stdgo.testing.Testing.B>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
		__deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
	};
	try {
		var _mstats:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
		var _pauses:Slice<GoUInt64> = (null : Slice<GoUInt64>);
		var _p:Pool = ({} : Pool);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < _b.n, _i++, {
				{};
				var _item:AnyInterface = Go.toInterface((42 : GoInt));
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (100000:GoInt), _i++, {
						_p.put(_item);
					});
				};
				stdgo.runtime.Runtime.gc();
				stdgo.runtime.Runtime.readMemStats((_mstats : Ref<stdgo.runtime.Runtime.MemStats>));
				_pauses = _pauses.__appendref__(_mstats.pauseNs[(_mstats.numGC + (("255" : GoUInt32) : GoUInt32)) % ("256" : GoUInt32)]);
			});
		};
		stdgo.sort.Sort.slice(Go.toInterface(_pauses), function(_i:GoInt, _j:GoInt):Bool {
			return _pauses[_i] < _pauses[_j];
		});
		var _total:GoUInt64 = (0 : GoUInt64);
		for (_0 => _ns in _pauses) {
			_total = _total + (_ns);
		};
		_b.reportMetric((_total : GoFloat64) / (_b.n : GoFloat64), Go.str("ns/op"));
		_b.reportMetric((_pauses[(_pauses.length * (95 : GoInt)) / (100 : GoInt)] : GoFloat64), Go.str("p95-ns/STW"));
		_b.reportMetric((_pauses[(_pauses.length * (50 : GoInt)) / (100 : GoInt)] : GoFloat64), Go.str("p50-ns/STW"));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkPoolExpensiveNew(_b:Ref<stdgo.testing.Testing.B>):Void {
	var __deferstack__:Array<Void->Void> = [];
	_globalSink = Go.toInterface(new Slice<GoUInt8>((8388608 : GoInt).toBasic(), 0, ...[for (i in 0...(8388608 : GoInt).toBasic()) (0 : GoUInt8)]));
	try {
		__deferstack__.unshift(() -> {
			var a = function():Void {
				_globalSink = (null : AnyInterface);
			};
			a();
		});
		var _p:Pool = ({} : Pool);
		var _nNew:GoUInt64 = (0 : GoUInt64);
		_p.new_ = function():AnyInterface {
			stdgo.sync.atomic.Atomic.addUint64(Go.pointer(_nNew), ("1" : GoUInt64));
			stdgo.time.Time.sleep((("1000000" : GoInt64) : stdgo.time.Time.Duration));
			return Go.toInterface((42 : GoInt));
		};
		var _0:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats),
			_1:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats),
			_mstats2:stdgo.runtime.Runtime.MemStats = _1,
			_mstats1:stdgo.runtime.Runtime.MemStats = _0;
		stdgo.runtime.Runtime.readMemStats((_mstats1 : Ref<stdgo.runtime.Runtime.MemStats>));
		_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
			var _items = new Slice<AnyInterface>((100 : GoInt).toBasic(), 0, ...[for (i in 0...(100 : GoInt).toBasic()) (null : AnyInterface)]);
			var _sink:Slice<GoByte> = (null : Slice<GoUInt8>);
			while (_pb.next()) {
				for (_i in 0..._items.length.toBasic()) {
					_items[_i] = _p.get();
					_sink = new Slice<GoUInt8>((32768 : GoInt).toBasic(), 0, ...[for (i in 0...(32768 : GoInt).toBasic()) (0 : GoUInt8)]);
				};
				for (_i => _v in _items) {
					_p.put(_v);
					_items[_i] = (null : AnyInterface);
				};
			};
			_sink;
		});
		stdgo.runtime.Runtime.readMemStats((_mstats2 : Ref<stdgo.runtime.Runtime.MemStats>));
		_b.reportMetric((_mstats2.numGC - _mstats1.numGC:GoFloat64) / (_b.n : GoFloat64), Go.str("GCs/op"));
		_b.reportMetric((_nNew : GoFloat64) / (_b.n : GoFloat64), Go.str("New/op"));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

@:structInit class PaddedSem_benchmarkSemaUncontended_0 {
	public var _sem:GoUInt32 = 0;
	public var _pad:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...32) (0 : GoUInt32)]);

	public function new(?_sem:GoUInt32, ?_pad:GoArray<GoUInt32>) {
		if (_sem != null)
			this._sem = _sem;
		if (_pad != null)
			this._pad = _pad;
	}

	public function __copy__() {
		return new PaddedSem_benchmarkSemaUncontended_0(_sem, _pad);
	}
}

function benchmarkSemaUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _sem = ({} : stdgo.sync_test.Sync_test.PaddedSem_benchmarkSemaUncontended_0);
		while (_pb.next()) {
			runtime_Semrelease(Go.pointer(_sem._sem), false, (0 : GoInt));
			runtime_Semacquire(Go.pointer(_sem._sem));
		};
	});
}

function _benchmarkSema(_b:Ref<stdgo.testing.Testing.B>, _block:Bool, _work:Bool):Void {
	var __deferstack__:Array<Void->Void> = [];
	if (_b.n == ((0 : GoInt))) {
		return;
	};
	try {
		var _sem:GoUInt32 = (("0" : GoUInt32) : GoUInt32);
		if (_block) {
			var _done = new Chan<Bool>(0, () -> false);
			Go.routine(() -> {
				var a = function():Void {
					{
						var _p:GoInt = (0 : GoInt);
						Go.cfor(_p < (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) / (2 : GoInt)), _p++, {
							runtime_Semacquire(Go.pointer(_sem));
						});
					};
					_done.__send__(true);
				};
				a();
			});
			__deferstack__.unshift(() -> {
				var a = function():Void {
					_done.__get__();
				};
				a();
			});
		};
		_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
			var _foo:GoInt = (0 : GoInt);
			while (_pb.next()) {
				runtime_Semrelease(Go.pointer(_sem), false, (0 : GoInt));
				if (_work) {
					{
						var _i:GoInt = (0 : GoInt);
						Go.cfor(_i < (100:GoInt), _i++, {
							_foo = _foo * ((2 : GoInt));
							_foo = _foo / ((2 : GoInt));
						});
					};
				};
				runtime_Semacquire(Go.pointer(_sem));
			};
			_foo;
			runtime_Semrelease(Go.pointer(_sem), false, (0 : GoInt));
		});
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function benchmarkSemaSyntNonblock(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSema(_b, false, false);
}

function benchmarkSemaSyntBlock(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSema(_b, true, false);
}

function benchmarkSemaWorkNonblock(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSema(_b, false, true);
}

function benchmarkSemaWorkBlock(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkSema(_b, true, true);
}

function _parallelReader(_m:Ref<RWMutex>, _clocked:Chan<Bool>, _cunlock:Chan<Bool>, _cdone:Chan<Bool>):Void {
	_m.rlock();
	_clocked.__send__(true);
	_cunlock.__get__();
	_m.runlock();
	_cdone.__send__(true);
}

function _doTestParallelReaders(_numReaders:GoInt, _gomaxprocs:GoInt):Void {
	stdgo.runtime.Runtime.gomaxprocs(_gomaxprocs);
	var _m:RWMutex = ({} : RWMutex);
	var _clocked = new Chan<Bool>(0, () -> false);
	var _cunlock = new Chan<Bool>(0, () -> false);
	var _cdone = new Chan<Bool>(0, () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _numReaders, _i++, {
			Go.routine(() -> _parallelReader((_m : Ref<RWMutex>), _clocked, _cunlock, _cdone));
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _numReaders, _i++, {
			_clocked.__get__();
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _numReaders, _i++, {
			_cunlock.__send__(true);
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _numReaders, _i++, {
			_cdone.__get__();
		});
	};
}

function testParallelReaders(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	{
		var _a0 = stdgo.runtime.Runtime.gomaxprocs((-1 : GoInt));
		__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
	};
	try {
		_doTestParallelReaders((1 : GoInt), (4 : GoInt));
		_doTestParallelReaders((3 : GoInt), (4 : GoInt));
		_doTestParallelReaders((4 : GoInt), (2 : GoInt));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function _reader(_rwm:Ref<RWMutex>, _num_iterations:GoInt, _activity:Pointer<GoInt32>, _cdone:Chan<Bool>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _num_iterations, _i++, {
			_rwm.rlock();
			var _n:GoInt32 = stdgo.sync.atomic.Atomic.addInt32(_activity, (1 : GoInt32));
			if ((_n < (1:GoInt32)) || (_n >= (10000 : GoInt32))) {
				_rwm.runlock();
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("wlock(%d)\n"), Go.toInterface(_n)));
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (100:GoInt), _i++, {});
			};
			stdgo.sync.atomic.Atomic.addInt32(_activity, (-1 : GoInt32));
			_rwm.runlock();
		});
	};
	_cdone.__send__(true);
}

function _writer(_rwm:Ref<RWMutex>, _num_iterations:GoInt, _activity:Pointer<GoInt32>, _cdone:Chan<Bool>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _num_iterations, _i++, {
			_rwm.lock();
			var _n:GoInt32 = stdgo.sync.atomic.Atomic.addInt32(_activity, (10000 : GoInt32));
			if (_n != ((10000 : GoInt32))) {
				_rwm.unlock();
				throw Go.toInterface(stdgo.fmt.Fmt.sprintf(Go.str("wlock(%d)\n"), Go.toInterface(_n)));
			};
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (100:GoInt), _i++, {});
			};
			stdgo.sync.atomic.Atomic.addInt32(_activity, (-10000 : GoInt32));
			_rwm.unlock();
		});
	};
	_cdone.__send__(true);
}

function hammerRWMutex(_gomaxprocs:GoInt, _numReaders:GoInt, _num_iterations:GoInt):Void {
	stdgo.runtime.Runtime.gomaxprocs(_gomaxprocs);
	var _activity:GoInt32 = (0 : GoInt32);
	var _rwm:RWMutex = ({} : RWMutex);
	var _cdone = new Chan<Bool>(0, () -> false);
	Go.routine(() -> _writer((_rwm : Ref<RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
	var _i:GoInt = (0 : GoInt);
	{
		_i = (0 : GoInt);
		Go.cfor(_i < (_numReaders / (2 : GoInt)), _i++, {
			Go.routine(() -> _reader((_rwm : Ref<RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
		});
	};
	Go.routine(() -> _writer((_rwm : Ref<RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
	Go.cfor(_i < _numReaders, _i++, {
		Go.routine(() -> _reader((_rwm : Ref<RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
	});
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < ((2 : GoInt) + _numReaders), _i++, {
			_cdone.__get__();
		});
	};
}

function testRWMutex(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	var _m:RWMutex = ({} : RWMutex);
	try {
		_m.lock();
		if (_m.tryLock()) {
			_t.fatalf(Go.str("TryLock succeeded with mutex locked"));
		};
		if (_m.tryRLock()) {
			_t.fatalf(Go.str("TryRLock succeeded with mutex locked"));
		};
		_m.unlock();
		if (!_m.tryLock()) {
			_t.fatalf(Go.str("TryLock failed with mutex unlocked"));
		};
		_m.unlock();
		if (!_m.tryRLock()) {
			_t.fatalf(Go.str("TryRLock failed with mutex unlocked"));
		};
		if (!_m.tryRLock()) {
			_t.fatalf(Go.str("TryRLock failed with mutex rlocked"));
		};
		if (_m.tryLock()) {
			_t.fatalf(Go.str("TryLock succeeded with mutex rlocked"));
		};
		_m.runlock();
		_m.runlock();
		{
			var _a0 = stdgo.runtime.Runtime.gomaxprocs((-1 : GoInt));
			__deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
		};
		var _n:GoInt = (1000 : GoInt);
		if (stdgo.testing.Testing.short()) {
			_n = (5 : GoInt);
		};
		hammerRWMutex((1 : GoInt), (1 : GoInt), _n);
		hammerRWMutex((1 : GoInt), (3 : GoInt), _n);
		hammerRWMutex((1 : GoInt), (10 : GoInt), _n);
		hammerRWMutex((4 : GoInt), (1 : GoInt), _n);
		hammerRWMutex((4 : GoInt), (3 : GoInt), _n);
		hammerRWMutex((4 : GoInt), (10 : GoInt), _n);
		hammerRWMutex((10 : GoInt), (1 : GoInt), _n);
		hammerRWMutex((10 : GoInt), (3 : GoInt), _n);
		hammerRWMutex((10 : GoInt), (10 : GoInt), _n);
		hammerRWMutex((10 : GoInt), (5 : GoInt), _n);
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRLocker(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _wl:RWMutex = ({} : RWMutex);
	var _rl:Locker = (null : Locker);
	var _wlocked = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
	var _rlocked = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
	_rl = _wl.rlocker();
	var _n:GoInt = (10 : GoInt);
	Go.routine(() -> {
		var a = function():Void {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _n, _i++, {
					_rl.lock();
					_rl.lock();
					_rlocked.__send__(true);
					_wl.lock();
					_wlocked.__send__(true);
				});
			};
		};
		a();
	});
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			_rlocked.__get__();
			_rl.unlock();
			Go.select([
				_wlocked.__get__() => {
					_t.fatal(Go.toInterface(Go.str("RLocker() didn\'t read-lock it")));
				},
				{}
			]);
			_rl.unlock();
			_wlocked.__get__();
			Go.select([
				_rlocked.__get__() => {
					_t.fatal(Go.toInterface(Go.str("RLocker() didn\'t respect the write lock")));
				},
				{}
			]);
			_wl.unlock();
		});
	};
}

@:structInit @:using(stdgo.sync_test.Sync_test.PaddedRWMutex_benchmarkRWMutexUncontended_0_static_extension) class PaddedRWMutex_benchmarkRWMutexUncontended_0 {
	@:embedded
	public var rwmutex:RWMutex = ({} : RWMutex);
	public var _pad:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0...32) (0 : GoUInt32)]);

	public function new(?rwmutex:RWMutex, ?_pad:GoArray<GoUInt32>) {
		if (rwmutex != null)
			this.rwmutex = rwmutex;
		if (_pad != null)
			this._pad = _pad;
	}

	@:embedded
	public function lock()
		null;

	@:embedded
	public function rlock()
		null;

	@:embedded
	public function rlocker():Locker
		return (null : Locker);

	@:embedded
	public function runlock()
		null;

	@:embedded
	public function tryLock():Bool
		return false;

	@:embedded
	public function tryRLock():Bool
		return false;

	@:embedded
	public function unlock()
		null;

	@:embedded
	public function _rUnlockSlow(__0:GoInt32)
		null;

	public function __copy__() {
		return new PaddedRWMutex_benchmarkRWMutexUncontended_0(rwmutex, _pad);
	}
}

function benchmarkRWMutexUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _rwm:PaddedRWMutex_benchmarkRWMutexUncontended_0 = ({} : stdgo.sync_test.Sync_test.PaddedRWMutex_benchmarkRWMutexUncontended_0);
		while (_pb.next()) {
			_rwm.rlock();
			_rwm.rlock();
			_rwm.runlock();
			_rwm.runlock();
			_rwm.lock();
			_rwm.unlock();
		};
	});
}

function _benchmarkRWMutex(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt, _writeRatio:GoInt):Void {
	var _rwm:RWMutex = ({} : RWMutex);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _foo:GoInt = (0 : GoInt);
		while (_pb.next()) {
			_foo++;
			if (_foo % _writeRatio == ((0 : GoInt))) {
				_rwm.lock();
				_rwm.unlock();
			} else {
				_rwm.rlock();
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i != (_localWork), _i = _i + ((1 : GoInt)), {
						_foo = _foo * ((2 : GoInt));
						_foo = _foo / ((2 : GoInt));
					});
				};
				_rwm.runlock();
			};
		};
		_foo;
	});
}

function benchmarkRWMutexWrite100(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkRWMutex(_b, (0 : GoInt), (100 : GoInt));
}

function benchmarkRWMutexWrite10(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkRWMutex(_b, (0 : GoInt), (10 : GoInt));
}

function benchmarkRWMutexWorkWrite100(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkRWMutex(_b, (100 : GoInt), (100 : GoInt));
}

function benchmarkRWMutexWorkWrite10(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkRWMutex(_b, (100 : GoInt), (10 : GoInt));
}

function _testWaitGroup(_t:Ref<stdgo.testing.Testing.T>, _wg1:Ref<WaitGroup>, _wg2:Ref<WaitGroup>):Void {
	var _n:GoInt = (16 : GoInt);
	_wg1.add(_n);
	_wg2.add(_n);
	var _exited = new Chan<Bool>((_n : GoInt).toBasic(), () -> false);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i != (_n), _i++, {
			Go.routine(() -> {
				var a = function():Void {
					_wg1.done();
					_wg2.wait_();
					_exited.__send__(true);
				};
				a();
			});
		});
	};
	_wg1.wait_();
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i != (_n), _i++, {
			Go.select([
				_exited.__get__() => {
					_t.fatal(Go.toInterface(Go.str("WaitGroup released group too soon")));
				},
				{}
			]);
			_wg2.done();
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i != (_n), _i++, {
			_exited.__get__();
		});
	};
}

function testWaitGroup(_t:Ref<stdgo.testing.Testing.T>):Void {
	var _wg1 = ((new WaitGroup() : WaitGroup) : Ref<WaitGroup>);
	var _wg2 = ((new WaitGroup() : WaitGroup) : Ref<WaitGroup>);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i != ((8 : GoInt)), _i++, {
			_testWaitGroup(_t, _wg1, _wg2);
		});
	};
}

function testWaitGroupMisuse(_t:Ref<stdgo.testing.Testing.T>):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			var _err:AnyInterface = ({
				final r = Go.recover_exception;
				Go.recover_exception = null;
				r;
			});
			if (Go.toInterface(_err) != (Go.toInterface(Go.str("sync: negative WaitGroup counter")))) {
				_t.fatalf(Go.str("Unexpected panic: %#v"), _err);
			};
		};
		a();
	});
	try {
		var _wg = ((new WaitGroup() : WaitGroup) : Ref<WaitGroup>);
		_wg.add((1 : GoInt));
		_wg.done();
		_wg.done();
		_t.fatal(Go.toInterface(Go.str("Should panic")));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testWaitGroupRace(_t:Ref<stdgo.testing.Testing.T>):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			var _wg = ((new WaitGroup() : WaitGroup) : Ref<WaitGroup>);
			var _n = Go.pointer((0 : GoInt32));
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					stdgo.sync.atomic.Atomic.addInt32(_n, (1 : GoInt32));
					_wg.done();
				};
				a();
			});
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					stdgo.sync.atomic.Atomic.addInt32(_n, (1 : GoInt32));
					_wg.done();
				};
				a();
			});
			_wg.wait_();
			if (stdgo.sync.atomic.Atomic.loadInt32(_n) != ((2 : GoInt32))) {
				_t.fatal(Go.toInterface(Go.str("Spurious wakeup from Wait")));
			};
		});
	};
}

@:structInit class X_testWaitGroupAlign_0 {
	public var _x:GoUInt8 = 0;
	public var _wg:WaitGroup = ({} : WaitGroup);

	public function new(?_x:GoUInt8, ?_wg:WaitGroup) {
		if (_x != null)
			this._x = _x;
		if (_wg != null)
			this._wg = _wg;
	}

	public function __copy__() {
		return new X_testWaitGroupAlign_0(_x, _wg);
	}
}

function testWaitGroupAlign(_t:Ref<stdgo.testing.Testing.T>):Void {
	{};
	var _x:X_testWaitGroupAlign_0 = ({} : stdgo.sync_test.Sync_test.X_testWaitGroupAlign_0);
	_x._wg.add((1 : GoInt));
	Go.routine(() -> {
		var a = function(_x:Ref<X_testWaitGroupAlign_0>):Void {
			_x._wg.done();
		};
		a((_x : Ref<stdgo.sync_test.Sync_test.X_testWaitGroupAlign_0>));
	});
	_x._wg.wait_();
}

@:structInit @:using(stdgo.sync_test.Sync_test.PaddedWaitGroup_benchmarkWaitGroupUncontended_0_static_extension) class PaddedWaitGroup_benchmarkWaitGroupUncontended_0 {
	@:embedded
	public var waitGroup:WaitGroup = ({} : WaitGroup);
	public var _pad:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...128) (0 : GoUInt8)]);

	public function new(?waitGroup:WaitGroup, ?_pad:GoArray<GoUInt8>) {
		if (waitGroup != null)
			this.waitGroup = waitGroup;
		if (_pad != null)
			this._pad = _pad;
	}

	@:embedded
	public function add(__0:GoInt)
		null;

	@:embedded
	public function done()
		null;

	@:embedded
	public function wait_()
		null;

	@:embedded
	public function _state():{var _0:Pointer<GoUInt64>; var _1:Pointer<GoUInt32>;}
		return null;

	public function __copy__() {
		return new PaddedWaitGroup_benchmarkWaitGroupUncontended_0(waitGroup, _pad);
	}
}

function benchmarkWaitGroupUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
	{};
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _wg:PaddedWaitGroup_benchmarkWaitGroupUncontended_0 = ({} : stdgo.sync_test.Sync_test.PaddedWaitGroup_benchmarkWaitGroupUncontended_0);
		while (_pb.next()) {
			_wg.add((1 : GoInt));
			_wg.done();
			_wg.wait_();
		};
	});
}

function _benchmarkWaitGroupAddDone(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt):Void {
	var _wg:WaitGroup = ({} : WaitGroup);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _foo:GoInt = (0 : GoInt);
		while (_pb.next()) {
			_wg.add((1 : GoInt));
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _localWork, _i++, {
					_foo = _foo * ((2 : GoInt));
					_foo = _foo / ((2 : GoInt));
				});
			};
			_wg.done();
		};
		_foo;
	});
}

function benchmarkWaitGroupAddDone(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkWaitGroupAddDone(_b, (0 : GoInt));
}

function benchmarkWaitGroupAddDoneWork(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkWaitGroupAddDone(_b, (100 : GoInt));
}

function _benchmarkWaitGroupWait(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt):Void {
	var _wg:WaitGroup = ({} : WaitGroup);
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		var _foo:GoInt = (0 : GoInt);
		while (_pb.next()) {
			_wg.wait_();
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < _localWork, _i++, {
					_foo = _foo * ((2 : GoInt));
					_foo = _foo / ((2 : GoInt));
				});
			};
		};
		_foo;
	});
}

function benchmarkWaitGroupWait(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkWaitGroupWait(_b, (0 : GoInt));
}

function benchmarkWaitGroupWaitWork(_b:Ref<stdgo.testing.Testing.B>):Void {
	_benchmarkWaitGroupWait(_b, (100 : GoInt));
}

function benchmarkWaitGroupActuallyWait(_b:Ref<stdgo.testing.Testing.B>):Void {
	_b.reportAllocs();
	_b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
		while (_pb.next()) {
			var _wg:WaitGroup = ({} : WaitGroup);
			_wg.add((1 : GoInt));
			Go.routine(() -> {
				var a = function():Void {
					_wg.done();
				};
				a();
			});
			_wg.wait_();
		};
	});
}

@:keep var _ = {
	try {
		if ((stdgo.os.Os.args.length == (3 : GoInt)) && (stdgo.os.Os.args[(1 : GoInt)] == Go.str("TESTMISUSE"))) {
			for (_0 => _test in _misuseTests) {
				if (_test._name == (stdgo.os.Os.args[(2 : GoInt)])) {
					{
						var a = function():Void {
							var __deferstack__:Array<Void->Void> = [];
							__deferstack__.unshift(() -> @:implicitReturn throw "__return__");
							try {
								_test._f();
								for (defer in __deferstack__) {
									defer();
								};
								{
									for (defer in __deferstack__) {
										defer();
									};
									if (Go.recover_exception != null)
										throw Go.recover_exception;
									throw "__return__";
								};
							} catch (__exception__) {
								if (!(__exception__.native is AnyInterfaceData))
									throw __exception__;
								Go.recover_exception = __exception__.native;
								for (defer in __deferstack__) {
									defer();
								};
								if (Go.recover_exception != null)
									throw Go.recover_exception;
								throw "__return__";
							};
						};
						a();
					};
					stdgo.fmt.Fmt.printf(Go.str("test completed\n"));
					Sys.exit((0 : GoInt));
				};
			};
			stdgo.fmt.Fmt.printf(Go.str("unknown test\n"));
			Sys.exit((0 : GoInt));
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};

private class T_httpPkg_asInterface {
	@:keep
	public function get(_url:GoString):Void
		__self__.value.get(_url);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_httpPkg>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.T_httpPkg_asInterface) class T_httpPkg_static_extension {
	@:keep
	static public function get(_:T_httpPkg, _url:GoString):Void {}
}

class RWMutexMap_asInterface {
	@:keep
	public function range(_f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void
		__self__.value.range(_f);

	@:keep
	public function delete(_key:AnyInterface):Void
		__self__.value.delete(_key);

	@:keep
	public function loadAndDelete(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadAndDelete(_key);

	@:keep
	public function loadOrStore(_key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadOrStore(_key, _value);

	@:keep
	public function store(_key:AnyInterface, _value:AnyInterface):Void
		__self__.value.store(_key, _value);

	@:keep
	public function load(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.load(_key);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<RWMutexMap>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.RWMutexMap_asInterface) class RWMutexMap_static_extension {
	@:keep
	static public function range(_m:Ref<RWMutexMap>, _f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void {
		_m._mu.rlock();
		var _keys = new Slice<AnyInterface>((0 : GoInt).toBasic(), (_m._dirty.length), ...[for (i in 0...(0 : GoInt).toBasic()) (null : AnyInterface)]);
		for (_k => _ in _m._dirty) {
			_keys = _keys.__appendref__(_k);
		};
		_m._mu.runlock();
		for (_0 => _k in _keys) {
			var __tmp__ = _m.load(_k),
				_v:AnyInterface = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (!_ok) {
				continue;
			};
			if (!_f(_k, _v)) {
				break;
			};
		};
	}

	@:keep
	static public function delete(_m:Ref<RWMutexMap>, _key:AnyInterface):Void {
		_m._mu.lock();
		if (_m._dirty != null)
			_m._dirty.__remove__(_key);
		_m._mu.unlock();
	}

	@:keep
	static public function loadAndDelete(_m:Ref<RWMutexMap>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _value:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
		_m._mu.lock();
		{
			var __tmp__ = (_m._dirty != null
				&& _m._dirty.__exists__(_key) ? {value: _m._dirty[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_value = __tmp__.value;
			_loaded = __tmp__.ok;
		};
		if (!_loaded) {
			_m._mu.unlock();
			return {_0: (null : AnyInterface), _1: false};
		};
		if (_m._dirty != null)
			_m._dirty.__remove__(_key);
		_m._mu.unlock();
		return {_0: _value, _1: _loaded};
	}

	@:keep
	static public function loadOrStore(_m:Ref<RWMutexMap>, _key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _actual:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
		_m._mu.lock();
		{
			var __tmp__ = (_m._dirty != null
				&& _m._dirty.__exists__(_key) ? {value: _m._dirty[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_actual = __tmp__.value;
			_loaded = __tmp__.ok;
		};
		if (!_loaded) {
			_actual = _value;
			if (_m._dirty == null) {
				_m._dirty = (new GoObjectMap<AnyInterface,
					AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({
					get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])
				},
					{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])}))) : GoMap<AnyInterface, AnyInterface>);
			};
			_m._dirty[_key] = _value;
		};
		_m._mu.unlock();
		return {_0: _actual, _1: _loaded};
	}

	@:keep
	static public function store(_m:Ref<RWMutexMap>, _key:AnyInterface, _value:AnyInterface):Void {
		_m._mu.lock();
		if (_m._dirty == null) {
			_m._dirty = (new GoObjectMap<AnyInterface,
				AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
					stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])},
				{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])}))) : GoMap<AnyInterface, AnyInterface>);
		};
		_m._dirty[_key] = _value;
		_m._mu.unlock();
	}

	@:keep
	static public function load(_m:Ref<RWMutexMap>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _value:AnyInterface = (null : AnyInterface), _ok:Bool = false;
		_m._mu.rlock();
		{
			var __tmp__ = (_m._dirty != null
				&& _m._dirty.__exists__(_key) ? {value: _m._dirty[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_value = __tmp__.value;
			_ok = __tmp__.ok;
		};
		_m._mu.runlock();
		return {_0: _value, _1: _ok};
	}
}

class DeepCopyMap_asInterface {
	@:keep
	public function _dirty():GoMap<AnyInterface, AnyInterface>
		return __self__.value._dirty();

	@:keep
	public function range(_f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void
		__self__.value.range(_f);

	@:keep
	public function delete(_key:AnyInterface):Void
		__self__.value.delete(_key);

	@:keep
	public function loadAndDelete(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadAndDelete(_key);

	@:keep
	public function loadOrStore(_key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.loadOrStore(_key, _value);

	@:keep
	public function store(_key:AnyInterface, _value:AnyInterface):Void
		__self__.value.store(_key, _value);

	@:keep
	public function load(_key:AnyInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value.load(_key);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<DeepCopyMap>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.DeepCopyMap_asInterface) class DeepCopyMap_static_extension {
	@:keep
	static public function _dirty(_m:Ref<DeepCopyMap>):GoMap<AnyInterface, AnyInterface> {
		var __tmp__ = try {
			{value: (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok: true};
		} catch (_) {
			{value: (null : GoMap<AnyInterface, AnyInterface>), ok: false};
		}, _clean = __tmp__.value, _0 = __tmp__.ok;
		var _dirty = (new GoObjectMap<AnyInterface,
			AnyInterface>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({get: () ->
				stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])},
			{get: () -> stdgo.internal.reflect.Reflect.GoType.interfaceType(true, [])}))) : GoMap<AnyInterface, AnyInterface>);
		for (_k => _v in _clean) {
			_dirty[_k] = _v;
		};
		return _dirty;
	}

	@:keep
	static public function range(_m:Ref<DeepCopyMap>, _f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void {
		var __tmp__ = try {
			{value: (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok: true};
		} catch (_) {
			{value: (null : GoMap<AnyInterface, AnyInterface>), ok: false};
		}, _clean = __tmp__.value, _0 = __tmp__.ok;
		for (_k => _v in _clean) {
			if (!_f(_k, _v)) {
				break;
			};
		};
	}

	@:keep
	static public function delete(_m:Ref<DeepCopyMap>, _key:AnyInterface):Void {
		_m._mu.lock();
		var _dirty = _m._dirty();
		if (_dirty != null)
			_dirty.__remove__(_key);
		_m._clean.store(Go.toInterface(_dirty));
		_m._mu.unlock();
	}

	@:keep
	static public function loadAndDelete(_m:Ref<DeepCopyMap>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _value:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
		_m._mu.lock();
		var _dirty = _m._dirty();
		{
			var __tmp__ = (_dirty != null
				&& _dirty.__exists__(_key) ? {value: _dirty[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_value = __tmp__.value;
			_loaded = __tmp__.ok;
		};
		if (_dirty != null)
			_dirty.__remove__(_key);
		_m._clean.store(Go.toInterface(_dirty));
		_m._mu.unlock();
		return {_0: _value, _1: _loaded};
	}

	@:keep
	static public function loadOrStore(_m:Ref<DeepCopyMap>, _key:AnyInterface, _value:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _actual:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
		var __tmp__ = try {
			{value: (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok: true};
		} catch (_) {
			{value: (null : GoMap<AnyInterface, AnyInterface>), ok: false};
		}, _clean = __tmp__.value, _0 = __tmp__.ok;
		{
			var __tmp__ = (_clean != null
				&& _clean.__exists__(_key) ? {value: _clean[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_actual = __tmp__.value;
			_loaded = __tmp__.ok;
		};
		if (_loaded) {
			return {_0: _actual, _1: _loaded};
		};
		_m._mu.lock();
		{
			var __tmp__ = try {
				{value: (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok: true};
			} catch (_) {
				{value: (null : GoMap<AnyInterface, AnyInterface>), ok: false};
			};
			_clean = __tmp__.value;
		};
		{
			var __tmp__ = (_clean != null
				&& _clean.__exists__(_key) ? {value: _clean[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_actual = __tmp__.value;
			_loaded = __tmp__.ok;
		};
		if (!_loaded) {
			var _dirty = _m._dirty();
			_dirty[_key] = _value;
			_actual = _value;
			_m._clean.store(Go.toInterface(_dirty));
		};
		_m._mu.unlock();
		return {_0: _actual, _1: _loaded};
	}

	@:keep
	static public function store(_m:Ref<DeepCopyMap>, _key:AnyInterface, _value:AnyInterface):Void {
		_m._mu.lock();
		var _dirty = _m._dirty();
		_dirty[_key] = _value;
		_m._clean.store(Go.toInterface(_dirty));
		_m._mu.unlock();
	}

	@:keep
	static public function load(_m:Ref<DeepCopyMap>, _key:AnyInterface):{var _0:AnyInterface; var _1:Bool;} {
		var _value:AnyInterface = (null : AnyInterface), _ok:Bool = false;
		var __tmp__ = try {
			{value: (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok: true};
		} catch (_) {
			{value: (null : GoMap<AnyInterface, AnyInterface>), ok: false};
		}, _clean = __tmp__.value, _0 = __tmp__.ok;
		{
			var __tmp__ = (_clean != null
				&& _clean.__exists__(_key) ? {value: _clean[_key], ok: true} : {value: (null : AnyInterface), ok: false});
			_value = __tmp__.value;
			_ok = __tmp__.ok;
		};
		return {_0: _value, _1: _ok};
	}
}

private class T_mapCall_asInterface {
	@:keep
	public function generate(_r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value
		return __self__.value.generate(_r, _size);

	@:keep
	public function _apply(_m:T_mapInterface):{var _0:AnyInterface; var _1:Bool;}
		return __self__.value._apply(_m);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_mapCall>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.T_mapCall_asInterface) class T_mapCall_static_extension {
	@:keep
	static public function generate(_:T_mapCall, _r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
		var _c:stdgo.sync_test.Sync_test.T_mapCall = ({_op: _mapOps[stdgo.math.rand.Rand.intn((_mapOps.length))],
			_k: _randValue(_r)} : stdgo.sync_test.Sync_test.T_mapCall);
		if (_c._op == (Go.str("Store")) || _c._op == (Go.str("LoadOrStore"))) {
			_c._v = _randValue(_r);
		};
		return
			(stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_c))) == null ? null : stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_c)))
			.__copy__());
	}

	@:keep
	static public function _apply(_c:T_mapCall, _m:T_mapInterface):{var _0:AnyInterface; var _1:Bool;} {
		if (_c._op == (Go.str("Load"))) {
			return _m.load(_c._k);
		} else if (_c._op == (Go.str("Store"))) {
			_m.store(_c._k, _c._v);
			return {_0: (null : AnyInterface), _1: false};
		} else if (_c._op == (Go.str("LoadOrStore"))) {
			return _m.loadOrStore(_c._k, _c._v);
		} else if (_c._op == (Go.str("LoadAndDelete"))) {
			return _m.loadAndDelete(_c._k);
		} else if (_c._op == (Go.str("Delete"))) {
			_m.delete(_c._k);
			return {_0: (null : AnyInterface), _1: false};
		} else {
			throw Go.toInterface(Go.str("invalid mapOp"));
		};
	}
}

private class T_one_asInterface {
	@:keep
	@:pointer
	public function increment():Void
		__self__.value.increment(__self__);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_one>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.T_one_asInterface) class T_one_static_extension {
	@:keep
	@:pointer
	static public function increment(____:T_one, _o:Pointer<T_one>):Void {
		_o.value++;
	}
}

class PaddedMutex_benchmarkMutexUncontended_0_asInterface {
	@:embedded
	public function _unlockSlow(__0:GoInt32):Void
		__self__.value._unlockSlow(__0);

	@:embedded
	public function _lockSlow():Void
		__self__.value._lockSlow();

	@:embedded
	public function unlock():Void
		__self__.value.unlock();

	@:embedded
	public function tryLock():Bool
		return __self__.value.tryLock();

	@:embedded
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<PaddedMutex_benchmarkMutexUncontended_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.PaddedMutex_benchmarkMutexUncontended_0_asInterface) class PaddedMutex_benchmarkMutexUncontended_0_static_extension {
	@:embedded
	public static function _unlockSlow(__self__:PaddedMutex_benchmarkMutexUncontended_0, __0:GoInt32)
		__self__._unlockSlow(__0);

	@:embedded
	public static function _lockSlow(__self__:PaddedMutex_benchmarkMutexUncontended_0)
		__self__._lockSlow();

	@:embedded
	public static function unlock(__self__:PaddedMutex_benchmarkMutexUncontended_0)
		__self__.unlock();

	@:embedded
	public static function tryLock(__self__:PaddedMutex_benchmarkMutexUncontended_0):Bool
		return __self__.tryLock();

	@:embedded
	public static function lock(__self__:PaddedMutex_benchmarkMutexUncontended_0)
		__self__.lock();
}

class PaddedRWMutex_benchmarkRWMutexUncontended_0_asInterface {
	@:embedded
	public function _rUnlockSlow(__0:GoInt32):Void
		__self__.value._rUnlockSlow(__0);

	@:embedded
	public function unlock():Void
		__self__.value.unlock();

	@:embedded
	public function tryRLock():Bool
		return __self__.value.tryRLock();

	@:embedded
	public function tryLock():Bool
		return __self__.value.tryLock();

	@:embedded
	public function runlock():Void
		__self__.value.runlock();

	@:embedded
	public function rlocker():Locker
		return __self__.value.rlocker();

	@:embedded
	public function rlock():Void
		__self__.value.rlock();

	@:embedded
	public function lock():Void
		__self__.value.lock();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<PaddedRWMutex_benchmarkRWMutexUncontended_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.PaddedRWMutex_benchmarkRWMutexUncontended_0_asInterface) class PaddedRWMutex_benchmarkRWMutexUncontended_0_static_extension {
	@:embedded
	public static function _rUnlockSlow(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0, __0:GoInt32)
		__self__._rUnlockSlow(__0);

	@:embedded
	public static function unlock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0)
		__self__.unlock();

	@:embedded
	public static function tryRLock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0):Bool
		return __self__.tryRLock();

	@:embedded
	public static function tryLock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0):Bool
		return __self__.tryLock();

	@:embedded
	public static function runlock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0)
		__self__.runlock();

	@:embedded
	public static function rlocker(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0):Locker
		return __self__.rlocker();

	@:embedded
	public static function rlock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0)
		__self__.rlock();

	@:embedded
	public static function lock(__self__:PaddedRWMutex_benchmarkRWMutexUncontended_0)
		__self__.lock();
}

class PaddedWaitGroup_benchmarkWaitGroupUncontended_0_asInterface {
	@:embedded
	public function _state():{var _0:Pointer<GoUInt64>; var _1:Pointer<GoUInt32>;}
		return __self__.value._state();

	@:embedded
	public function wait_():Void
		__self__.value.wait_();

	@:embedded
	public function done():Void
		__self__.value.done();

	@:embedded
	public function add(__0:GoInt):Void
		__self__.value.add(__0);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<PaddedWaitGroup_benchmarkWaitGroupUncontended_0>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.sync_test.Sync_test.PaddedWaitGroup_benchmarkWaitGroupUncontended_0_asInterface) class PaddedWaitGroup_benchmarkWaitGroupUncontended_0_static_extension {
	@:embedded
	public static function _state(__self__:PaddedWaitGroup_benchmarkWaitGroupUncontended_0):{var _0:Pointer<GoUInt64>; var _1:Pointer<GoUInt32>;}
		return __self__._state();

	@:embedded
	public static function wait_(__self__:PaddedWaitGroup_benchmarkWaitGroupUncontended_0)
		__self__.wait_();

	@:embedded
	public static function done(__self__:PaddedWaitGroup_benchmarkWaitGroupUncontended_0)
		__self__.done();

	@:embedded
	public static function add(__self__:PaddedWaitGroup_benchmarkWaitGroupUncontended_0, __0:GoInt)
		__self__.add(__0);
}
