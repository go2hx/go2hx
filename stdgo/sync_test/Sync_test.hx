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
import stdgo.sync.Sync;
/**
    
    
    
**/
private var _bufPool = ({ new_ : function():AnyInterface {
        return Go.toInterface(Go.asInterface(_new(stdgo.bytes.Bytes.buffer)));
    } } : stdgo.sync.Sync.Pool);
/**
    
    
    
**/
private var _mapOps = (new GoArray<stdgo.sync_test.Sync_test.T_mapOp>((("Load" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Store" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("LoadOrStore" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("LoadAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Delete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Swap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("CompareAndSwap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("CompareAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp)) : GoArray<stdgo.sync_test.Sync_test.T_mapOp>);
/**
    
    
    
**/
private var _misuseTests = (new Slice<T__struct_2>(8, 8, ({ _name : ("Mutex.Unlock" : GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("Mutex.Unlock2" : GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock2" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock3" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock2" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.lock();
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock3" : GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.runlock();
        _mu.runlock();
    } } : T__struct_2)) : Slice<T__struct_2>);
/**
    
    
    
**/
private var _http : T_httpPkg = ({} : stdgo.sync_test.Sync_test.T_httpPkg);
/**
    
    
    
**/
private var __2 : T_mapInterface = Go.asInterface((Go.setRef((new RWMutexMap() : RWMutexMap)) : Ref<stdgo.sync_test.Sync_test.RWMutexMap>));
/**
    
    
    
**/
private var __3 : T_mapInterface = Go.asInterface((Go.setRef((new DeepCopyMap() : DeepCopyMap)) : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>));
/**
    
    
    
**/
private final _opLoad = ((("Load" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opStore = ((("Store" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opLoadOrStore = ((("LoadOrStore" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opLoadAndDelete = ((("LoadAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opDelete = ((("Delete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opSwap = ((("Swap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opCompareAndSwap = ((("CompareAndSwap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private final _opCompareAndDelete = ((("CompareAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
private var _globalSink : AnyInterface = (null : AnyInterface);
/**
    // mapInterface is the interface Map implements.
    
    
**/
private typedef T_mapInterface = StructType & {
    /**
        
        
        
    **/
    public dynamic function load(_0:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function store(_key:AnyInterface, _value:AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function loadOrStore(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function loadAndDelete(_key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function delete(_0:AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function swap(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function compareAndSwap(_key:AnyInterface, _old:AnyInterface, _new:AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function compareAndDelete(_key:AnyInterface, _old:AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function range(_0:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.sync_test.Sync_test.T_httpPkg_static_extension) class T_httpPkg {
    public function new() {}
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_httpPkg();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_bench {
    public var _setup : (Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public var _perG : (Ref<stdgo.testing.Testing.B>, Ref<stdgo.testing.Testing.PB>, GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public function new(?_setup:(Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void, ?_perG:(Ref<stdgo.testing.Testing.B>, Ref<stdgo.testing.Testing.PB>, GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void) {
        if (_setup != null) this._setup = _setup;
        if (_perG != null) this._perG = _perG;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_bench(_setup, _perG);
    }
}
/**
    // RWMutexMap is an implementation of mapInterface using a sync.RWMutex.
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.RWMutexMap_static_extension) class RWMutexMap {
    public var _mu : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _dirty : GoMap<AnyInterface, AnyInterface> = (null : GoMap<AnyInterface, AnyInterface>);
    public function new(?_mu:stdgo.sync.Sync.RWMutex, ?_dirty:GoMap<AnyInterface, AnyInterface>) {
        if (_mu != null) this._mu = _mu;
        if (_dirty != null) this._dirty = _dirty;
    }
    public function __underlying__() return Go.toInterface(this);
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
    public var _mu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _clean : stdgo.sync.atomic.Atomic.Value = ({} : stdgo.sync.atomic.Atomic.Value);
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_clean:stdgo.sync.atomic.Atomic.Value) {
        if (_mu != null) this._mu = _mu;
        if (_clean != null) this._clean = _clean;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new DeepCopyMap(_mu, _clean);
    }
}
/**
    // mapCall is a quick.Generator for calls on mapInterface.
    
    
**/
@:structInit @:private @:using(stdgo.sync_test.Sync_test.T_mapCall_static_extension) class T_mapCall {
    public var _op : stdgo.sync_test.Sync_test.T_mapOp = (("" : GoString) : stdgo.sync_test.Sync_test.T_mapOp);
    public var _k : AnyInterface = (null : AnyInterface);
    public var _v : AnyInterface = (null : AnyInterface);
    public function new(?_op:stdgo.sync_test.Sync_test.T_mapOp, ?_k:AnyInterface, ?_v:AnyInterface) {
        if (_op != null) this._op = _op;
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_mapCall(_op, _k, _v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_mapResult {
    public var _value : AnyInterface = (null : AnyInterface);
    public var _ok : Bool = false;
    public function new(?_value:AnyInterface, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_mapResult(_value, _ok);
    }
}
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.sync_test.Sync_test.T__struct_1_static_extension) private typedef T__struct_1 = {};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.sync_test.Sync_test.T__struct_2_static_extension) private typedef T__struct_2 = {
    public var _name : GoString;
    public var _f : () -> Void;
};
@:named private typedef T_mapOp = GoString;
@:named @:using(stdgo.sync_test.Sync_test.T_one_static_extension) private typedef T_one = GoInt;
function testCondSignal(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(Go.asInterface((Go.setRef(_m) : Ref<stdgo.sync.Sync.Mutex>)));
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
            Go.select([_awake.__get__() => {
                _t.fatal(Go.toInterface(("goroutine not asleep" : GoString)));
            }, {}]);
            _m.lock();
            _c.signal();
            _m.unlock();
            _awake.__get__();
            Go.select([_awake.__get__() => {
                _t.fatal(Go.toInterface(("too many goroutines awake" : GoString)));
            }, {}]);
            _n--;
        };
        _c.signal();
    }
function testCondSignalGenerations(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(Go.asInterface((Go.setRef(_m) : Ref<stdgo.sync.Sync.Mutex>)));
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
                        _t.fatalf(("wrong goroutine woke up: want %d, got %d" : GoString), Go.toInterface(_i - (1 : GoInt)), Go.toInterface(_a));
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
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(Go.asInterface((Go.setRef(_m) : Ref<stdgo.sync.Sync.Mutex>)));
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
                Go.select([_awake.__get__() => {
                    _t.fatal(Go.toInterface(("goroutine not asleep" : GoString)));
                }, {}]);
                _m.lock();
                _c.broadcast();
                _m.unlock();
                var _seen = new Slice<Bool>((_n : GoInt).toBasic(), 0);
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < _n, _i++, {
                        var _g:GoInt = _awake.__get__();
                        if (_seen[(_g : GoInt)]) {
                            _t.fatal(Go.toInterface(("goroutine woke up twice" : GoString)));
                        };
                        _seen[(_g : GoInt)] = true;
                    });
                };
            });
        };
        Go.select([_running.__get__() => {
            _t.fatal(Go.toInterface(("goroutine did not exit" : GoString)));
        }, {}]);
        _c.broadcast();
    }
function testRace(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _x:GoInt = (0 : GoInt);
        var _c = newCond(Go.asInterface((Go.setRef((new Mutex() : Mutex)) : Ref<stdgo.sync.Sync.Mutex>)));
        var _done = new Chan<Bool>(0, () -> false);
        Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                _x = (1 : GoInt);
                _c.wait_();
                if (_x != ((2 : GoInt))) {
                    _t.error(Go.toInterface(("want 2" : GoString)));
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
                            _t.error(Go.toInterface(("want 3" : GoString)));
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
            Go.cfor(_iters < (1000 : GoInt), _iters++, {
                var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
                var _cond = newCond(Go.asInterface((Go.setRef(_m) : Ref<stdgo.sync.Sync.Mutex>)));
                var _ch = new Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
                Go.routine(() -> {
                    var a = function():Void {
                        _m.lock();
                        _ch.__send__(({  } : T__struct_1));
                        _cond.wait_();
                        _m.unlock();
                        _ch.__send__(({  } : T__struct_1));
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
                Go.select([stdgo.time.Time.after((2000000000i64 : stdgo.time.Time.Duration)).__get__() => {
                    _t.fatalf(("First waiter didn\'t get broadcast." : GoString));
                }, _ch.__get__() => {}]);
                _m.lock();
                _done = true;
                _m.unlock();
                _cond.broadcast();
            });
        };
    }
function testCondCopy(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if ((_err == null) || ((Go.typeAssert((_err : GoString)) : GoString) != ("sync.Cond is copied" : GoString))) {
                        _t.fatalf(("got %v, expect sync.Cond is copied" : GoString), _err);
                    };
                };
                a();
            });
            var _c:stdgo.sync.Sync.Cond = ({ l : Go.asInterface((Go.setRef((new Mutex() : Mutex)) : Ref<stdgo.sync.Sync.Mutex>)) } : Cond);
            _c.signal();
            var _c2:Cond = ({} : stdgo.sync.Sync.Cond);
            stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((Go.setRef(_c2) : Ref<stdgo.sync.Sync.Cond>)))).elem().set(stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface((Go.setRef(_c) : Ref<stdgo.sync.Sync.Cond>)))).elem()?.__copy__());
            _c2.signal();
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
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
private function _benchmarkCond(_b:Ref<stdgo.testing.Testing.B>, _waiters:GoInt):Void {
        var _c = newCond(Go.asInterface((Go.setRef((new Mutex() : Mutex)) : Ref<stdgo.sync.Sync.Mutex>)));
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
private function _timeNow():stdgo.time.Time.Time {
        return stdgo.time.Time.unix((1136214245i64 : GoInt64), (0i64 : GoInt64))?.__copy__();
    }
function log(_w:stdgo.io.Io.Writer, _key:GoString, _val:GoString):Void {
        var _b = (Go.typeAssert((_bufPool.get() : Ref<stdgo.bytes.Bytes.Buffer>)) : Ref<stdgo.bytes.Bytes.Buffer>);
        _b.reset();
        _b.writeString(_timeNow().utc().format(("2006-01-02T15:04:05Z07:00" : GoString)));
        _b.writeByte((32 : GoUInt8));
        _b.writeString(_key);
        _b.writeByte((61 : GoUInt8));
        _b.writeString(_val);
        _w.write(_b.bytes());
        _bufPool.put(Go.toInterface(Go.asInterface(_b)));
    }
function examplePool():Void {
        log(Go.asInterface(stdgo.os.Os.stdout), ("path" : GoString), ("/search?q=flowers" : GoString));
    }
/**
    // This example fetches several URLs concurrently,
    // using a WaitGroup to block until all the fetches are complete.
**/
function exampleWaitGroup():Void {
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _urls:Slice<GoString> = (new Slice<GoString>(3, 3, ("http://www.golang.org/" : GoString), ("http://www.google.com/" : GoString), ("http://www.example.com/" : GoString)) : Slice<GoString>);
        for (__0 => _url in _urls) {
            _wg.add((1 : GoInt));
            Go.routine(() -> {
                var a = function(_url:GoString):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        _http.get(_url);
                        for (defer in __deferstack__) {
                            defer();
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (Go.recover_exception != null) throw Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is AnyInterfaceData)) {
                            exe = Go.toInterface(__exception__.message);
                        };
                        Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return;
                    };
                };
                a(_url);
            });
        };
        _wg.wait_();
    }
function exampleOnce():Void {
        var _once:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
        var _onceBody:() -> Void = function():Void {
            stdgo.fmt.Fmt.println(Go.toInterface(("Only once" : GoString)));
        };
        var _done = new Chan<Bool>(0, () -> false);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
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
            Go.cfor(_i < (10 : GoInt), _i++, {
                _done.__get__();
            });
        };
    }
private function _benchMap(_b:Ref<stdgo.testing.Testing.B>, _bench:T_bench):Void {
        for (__0 => _m in (new GoArray<stdgo.sync_test.Sync_test.T_mapInterface>(Go.asInterface((Go.setRef((new DeepCopyMap() : DeepCopyMap)) : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>)), Go.asInterface((Go.setRef((new RWMutexMap() : RWMutexMap)) : Ref<stdgo.sync_test.Sync_test.RWMutexMap>)), Go.asInterface((Go.setRef((new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_)) : Ref<stdgo.sync.Sync.Map_>))) : GoArray<stdgo.sync_test.Sync_test.T_mapInterface>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("%T" : GoString), Go.toInterface(_m)), function(_b:Ref<stdgo.testing.Testing.B>):Void {
                _m = (Go.typeAssert((stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(Go.toInterface(_m)).elem()).interface_() : T_mapInterface)) : T_mapInterface);
                if (_bench._setup != null) {
                    _bench._setup(_b, _m);
                };
                _b.resetTimer();
                var _i:GoInt64 = (0 : GoInt64);
                _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
                    var _id:GoInt = (stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_i), (1i64 : GoInt64)) - (1i64 : GoInt64) : GoInt);
                    _bench._perG(_b, _pb, _id * _b.n, _m);
                });
            });
        };
    }
function benchmarkLoadMostlyHits(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1023 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2046 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1023 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.load(Go.toInterface(_i % (1024 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkLoadMostlyMisses(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.load(Go.toInterface(_i % (1024 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkLoadOrStoreBalanced(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (128 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (256 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (128 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _j:GoInt = _i % (256 : GoInt);
                if (_j < (128 : GoInt)) {
                    {
                        var __tmp__ = _m.loadOrStore(Go.toInterface(_j), Go.toInterface(_i)), __0:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _b.fatalf(("unexpected miss for %v" : GoString), Go.toInterface(_j));
                        };
                    };
                } else {
                    {
                        var __tmp__ = _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i)), _v:AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                        if (_loaded) {
                            _b.fatalf(("failed to store %v: existing value %v" : GoString), Go.toInterface(_i), _v);
                        };
                    };
                };
            });
        } } : T_bench));
    }
function benchmarkLoadOrStoreUnique(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
            });
        } } : T_bench));
    }
function benchmarkLoadOrStoreCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkLoadAndDeleteBalanced(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (128 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (256 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (128 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _j:GoInt = _i % (256 : GoInt);
                if (_j < (128 : GoInt)) {
                    _m.loadAndDelete(Go.toInterface(_j));
                } else {
                    _m.loadAndDelete(Go.toInterface(_i));
                };
            });
        } } : T_bench));
    }
function benchmarkLoadAndDeleteUnique(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.loadAndDelete(Go.toInterface(_i));
            });
        } } : T_bench));
    }
function benchmarkLoadAndDeleteCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                {
                    var __tmp__ = _m.loadAndDelete(Go.toInterface((0 : GoInt))), __0:AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _m.store(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
                    };
                };
            });
        } } : T_bench));
    }
function benchmarkRange(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1024 : GoInt), _i++, {
                    _m.store(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.range(function(__0:AnyInterface, __1:AnyInterface):Bool {
                    return true;
                });
            });
        } } : T_bench));
    }
/**
    // BenchmarkAdversarialAlloc tests performance when we store a new value
    // immediately whenever the map is promoted to clean and otherwise load a
    // unique, missing key.
    //
    // This forces the Load calls to always acquire the map's mutex.
**/
function benchmarkAdversarialAlloc(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            var __0:GoInt64 = (0 : GoInt64), __1:GoInt64 = (0 : GoInt64), _loadsSinceStore:GoInt64 = __1, _stores:GoInt64 = __0;
            Go.cfor(_pb.next(), _i++, {
                _m.load(Go.toInterface(_i));
                {
                    _loadsSinceStore++;
                    if (_loadsSinceStore > _stores) {
                        _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_stores));
                        _loadsSinceStore = (0i64 : GoInt64);
                        _stores++;
                    };
                };
            });
        } } : T_bench));
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
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1024 : GoInt), _i++, {
                    _m.store(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.load(Go.toInterface(_i));
                if (_i % (1024 : GoInt) == ((0 : GoInt))) {
                    _m.range(function(_k:AnyInterface, __0:AnyInterface):Bool {
                        _m.delete(_k);
                        return false;
                    });
                    _m.store(Go.toInterface(_i), Go.toInterface(_i));
                };
            });
        } } : T_bench));
    }
function benchmarkDeleteCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.delete(Go.toInterface((0 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkSwapCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.swap(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkSwapMostlyHits(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1023 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2046 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1023 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                if ((_i % (1024 : GoInt)) < (1023 : GoInt)) {
                    var _v:GoInt = _i % (1024 : GoInt);
                    _m.swap(Go.toInterface(_v), Go.toInterface(_v));
                } else {
                    _m.swap(Go.toInterface(_i), Go.toInterface(_i));
                    _m.delete(Go.toInterface(_i));
                };
            });
        } } : T_bench));
    }
function benchmarkSwapMostlyMisses(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                if ((_i % (1024 : GoInt)) < (1 : GoInt)) {
                    var _v:GoInt = _i % (1024 : GoInt);
                    _m.swap(Go.toInterface(_v), Go.toInterface(_v));
                } else {
                    _m.swap(Go.toInterface(_i), Go.toInterface(_i));
                    _m.delete(Go.toInterface(_i));
                };
            });
        } } : T_bench));
    }
function benchmarkCompareAndSwapCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            while (_pb.next()) {
                if (_m.compareAndSwap(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)))) {
                    _m.compareAndSwap(Go.toInterface((0 : GoInt)), Go.toInterface((42 : GoInt)), Go.toInterface((0 : GoInt)));
                };
            };
        } } : T_bench));
    }
function benchmarkCompareAndSwapNoExistingKey(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndSwap(Go.toInterface(_i), Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)))) {
                    _m.delete(Go.toInterface(_i));
                };
            });
        } } : T_bench));
    }
function benchmarkCompareAndSwapValueNotEqual(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.store(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                _m.compareAndSwap(Go.toInterface((0 : GoInt)), Go.toInterface((1 : GoInt)), Go.toInterface((2 : GoInt)));
            });
        } } : T_bench));
    }
function benchmarkCompareAndSwapMostlyHits(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1023 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2046 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1023 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _v:GoInt = _i;
                if ((_i % (1024 : GoInt)) < (1023 : GoInt)) {
                    _v = _i % (1024 : GoInt);
                };
                _m.compareAndSwap(Go.toInterface(_v), Go.toInterface(_v), Go.toInterface(_v));
            });
        } } : T_bench));
    }
function benchmarkCompareAndSwapMostlyMisses(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _v:GoInt = _i;
                if ((_i % (1024 : GoInt)) < (1 : GoInt)) {
                    _v = _i % (1024 : GoInt);
                };
                _m.compareAndSwap(Go.toInterface(_v), Go.toInterface(_v), Go.toInterface(_v));
            });
        } } : T_bench));
    }
function benchmarkCompareAndDeleteCollision(_b:Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndDelete(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)))) {
                    _m.store(Go.toInterface((0 : GoInt)), Go.toInterface((0 : GoInt)));
                };
            });
        } } : T_bench));
    }
function benchmarkCompareAndDeleteMostlyHits(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_m) : Ref<DeepCopyMap>)) : Ref<DeepCopyMap>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), ok : false };
                }, __0 = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _b.skip(Go.toInterface(("DeepCopyMap has quadratic running time." : GoString)));
                };
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1023 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2046 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1023 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _v:GoInt = _i;
                if ((_i % (1024 : GoInt)) < (1023 : GoInt)) {
                    _v = _i % (1024 : GoInt);
                };
                if (_m.compareAndDelete(Go.toInterface(_v), Go.toInterface(_v))) {
                    _m.store(Go.toInterface(_v), Go.toInterface(_v));
                };
            });
        } } : T_bench));
    }
function benchmarkCompareAndDeleteMostlyMisses(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__0:Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (1 : GoInt), _i++, {
                    _m.loadOrStore(Go.toInterface(_i), Go.toInterface(_i));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (2 : GoInt), _i++, {
                    _m.load(Go.toInterface(_i % (1 : GoInt)));
                });
            };
        }, _perG : function(_b:Ref<stdgo.testing.Testing.B>, _pb:Ref<stdgo.testing.Testing.PB>, _i:GoInt, _m:T_mapInterface):Void {
            Go.cfor(_pb.next(), _i++, {
                var _v:GoInt = _i;
                if ((_i % (1024 : GoInt)) < (1 : GoInt)) {
                    _v = _i % (1024 : GoInt);
                };
                if (_m.compareAndDelete(Go.toInterface(_v), Go.toInterface(_v))) {
                    _m.store(Go.toInterface(_v), Go.toInterface(_v));
                };
            });
        } } : T_bench));
    }
private function _randValue(_r:Ref<stdgo.math.rand.Rand.Rand>):AnyInterface {
        var _b = new Slice<GoUInt8>((_r.intn((4 : GoInt)) : GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _b.length.toBasic()) {
            _b[(_i : GoInt)] = (97 : GoUInt8) + (stdgo.math.rand.Rand.intn((26 : GoInt)) : GoByte);
        };
        return Go.toInterface((_b : GoString));
    }
private function _applyCalls(_m:T_mapInterface, _calls:Slice<T_mapCall>):{ var _0 : Slice<T_mapResult>; var _1 : GoMap<AnyInterface, AnyInterface>; } {
        var _results:Slice<T_mapResult> = (null : Slice<stdgo.sync_test.Sync_test.T_mapResult>), _final:GoMap<AnyInterface, AnyInterface> = (null : GoMap<AnyInterface, AnyInterface>);
        for (__0 => _c in _calls) {
            var __tmp__ = _c._apply(_m), _v:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            _results = (_results.__append__((new T_mapResult(_v, _ok) : T_mapResult)));
        };
        _final = ({
            final x = new GoAnyInterfaceMap<AnyInterface>();
            x.__defaultValue__ = () -> (null : AnyInterface);
            @:mergeBlock {};
            cast x;
        } : GoMap<AnyInterface, AnyInterface>);
        _m.range(function(_k:AnyInterface, _v:AnyInterface):Bool {
            _final[_k] = _v;
            return true;
        });
        return { _0 : _results, _1 : _final };
    }
private function _applyMap(_calls:Slice<T_mapCall>):{ var _0 : Slice<T_mapResult>; var _1 : GoMap<AnyInterface, AnyInterface>; } {
        return _applyCalls(Go.asInterface(_new(stdgo.sync.Sync.map)), _calls);
    }
private function _applyRWMutexMap(_calls:Slice<T_mapCall>):{ var _0 : Slice<T_mapResult>; var _1 : GoMap<AnyInterface, AnyInterface>; } {
        return _applyCalls(Go.asInterface(_new(RWMutexMap_static_extension)), _calls);
    }
private function _applyDeepCopyMap(_calls:Slice<T_mapCall>):{ var _0 : Slice<T_mapResult>; var _1 : GoMap<AnyInterface, AnyInterface>; } {
        return _applyCalls(Go.asInterface(_new(DeepCopyMap_static_extension)), _calls);
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
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _m = _new(stdgo.sync.Sync.map);
            {
                var _n:GoInt64 = (1i64 : GoInt64);
                Go.cfor(_n <= (1024i64 : GoInt64), _n++, {
                    _m.store(Go.toInterface(_n), Go.toInterface((_n : GoInt64)));
                });
            };
            var _done = new Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
            var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_done != null) _done.__close__();
                    _wg.wait_();
                };
                a();
            });
            {
                var _g:GoInt64 = (stdgo.runtime.Runtime.gomaxprocs((0 : GoInt)) : GoInt64);
                Go.cfor(_g > (0i64 : GoInt64), _g--, {
                    var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_g));
                    _wg.add((1 : GoInt));
                    Go.routine(() -> {
                        var a = function(_g:GoInt64):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                {
                                    var _i:GoInt64 = (0i64 : GoInt64);
                                    Go.cfor(true, _i++, {
                                        Go.select([_done.__get__() => {
                                            {
                                                for (defer in __deferstack__) {
                                                    defer();
                                                };
                                                return;
                                            };
                                        }, {}]);
                                        {
                                            var _n:GoInt64 = (1i64 : GoInt64);
                                            Go.cfor(_n < (1024i64 : GoInt64), _n++, {
                                                if (_r.int63n((1024i64 : GoInt64)) == ((0i64 : GoInt64))) {
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
                                    if (Go.recover_exception != null) throw Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is AnyInterfaceData)) {
                                    exe = Go.toInterface(__exception__.message);
                                };
                                Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (Go.recover_exception != null) throw Go.recover_exception;
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
                    var _seen = ({
                        final x = new stdgo.GoMap.GoInt64Map<Bool>();
                        x.__defaultValue__ = () -> false;
                        @:mergeBlock {};
                        x;
                    } : GoMap<GoInt64, Bool>);
                    _m.range(function(_ki:AnyInterface, _vi:AnyInterface):Bool {
                        var __0:GoInt64 = (Go.typeAssert((_ki : GoInt64)) : GoInt64), __1:GoInt64 = (Go.typeAssert((_vi : GoInt64)) : GoInt64), _v:GoInt64 = __1, _k:GoInt64 = __0;
                        if (_v % _k != ((0i64 : GoInt64))) {
                            _t.fatalf(("while Storing multiples of %v, Range saw value %v" : GoString), Go.toInterface(_k), Go.toInterface(_v));
                        };
                        if (_seen[_k]) {
                            _t.fatalf(("Range visited key %v twice" : GoString), Go.toInterface(_k));
                        };
                        _seen[_k] = true;
                        return true;
                    });
                    if ((_seen.length) != ((1024 : GoInt))) {
                        _t.fatalf(("Range visited %v elements of %v-element Map" : GoString), Go.toInterface((_seen.length)), Go.toInterface((1024 : GoInt)));
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testIssue40999(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m:stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
        _m.store((null : AnyInterface), Go.toInterface(({  } : T__struct_1)));
        var _finalized:GoUInt32 = (0 : GoUInt32);
        while (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_finalized)) == ((0u32 : GoUInt32))) {
            var _p = _new(_int);
            stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_p), Go.toInterface(function(_0:Pointer<GoInt>):Void {
                stdgo.sync.atomic.Atomic.addUint32(Go.pointer(_finalized), (1u32 : GoUInt32));
            }));
            _m.store(Go.toInterface(_p), Go.toInterface(({  } : T__struct_1)));
            _m.delete(Go.toInterface(_p));
            stdgo.runtime.Runtime.gc();
        };
    }
function testMapRangeNestedCall(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m:stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
        for (_i => _v in (new GoArray<GoString>(("hello" : GoString), ("world" : GoString), ("Go" : GoString)) : GoArray<GoString>)) {
            _m.store(Go.toInterface(_i), Go.toInterface(_v));
        };
        _m.range(function(_key:AnyInterface, _value:AnyInterface):Bool {
            _m.range(function(_key:AnyInterface, _value:AnyInterface):Bool {
                {
                    var __tmp__ = _m.load(_key), _v:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok || !stdgo.reflect.Reflect.deepEqual(_v, _value)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %+v want %+v" : GoString), _v, _value);
                    };
                };
                {
                    var __tmp__ = _m.loadOrStore(Go.toInterface((42 : GoInt)), Go.toInterface(("dummy" : GoString))), __0:AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _t.fatalf(("Nested Range loads unexpected value, want store a new value" : GoString));
                    };
                };
                var _val:GoString = ("sync.Map" : GoString);
                _m.store(Go.toInterface((42 : GoInt)), Go.toInterface(_val));
                {
                    var __tmp__ = _m.loadAndDelete(Go.toInterface((42 : GoInt))), _v:AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (!_loaded || !stdgo.reflect.Reflect.deepEqual(_v, Go.toInterface(_val))) {
                        _t.fatalf(("Nested Range loads unexpected value, got %v, want %v" : GoString), _v, Go.toInterface(_val));
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
            _t.fatalf(("Unexpected sync.Map size, got %v want %v" : GoString), Go.toInterface(_length), Go.toInterface((0 : GoInt)));
        };
    }
function testCompareAndSwap_NonExistingKey(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _m = (Go.setRef((new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_)) : Ref<stdgo.sync.Sync.Map_>);
        if (_m.compareAndSwap(Go.toInterface(Go.asInterface(_m)), (null : AnyInterface), Go.toInterface((42 : GoInt)))) {
            _t.fatalf(("CompareAndSwap on an non-existing key succeeded" : GoString));
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
        var _s = _new(_uint32);
        _s.value = (1u32 : GoUInt32);
        var _c = new Chan<Bool>(0, () -> false);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                Go.routine(() -> hammerSemaphore(_s, (1000 : GoInt), _c));
            });
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                _c.__get__();
            });
        };
    }
function benchmarkUncontendedSemaphore(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _s = _new(_uint32);
        _s.value = (1u32 : GoUInt32);
        hammerSemaphore(_s, _b.n, new Chan<Bool>((2 : GoInt).toBasic(), () -> false));
    }
function benchmarkContendedSemaphore(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b.stopTimer();
            var _s = _new(_uint32);
            _s.value = (1u32 : GoUInt32);
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
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
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _n:GoInt = stdgo.runtime.Runtime.setMutexProfileFraction((1 : GoInt));
                if (_n != ((0 : GoInt))) {
                    _t.logf(("got mutexrate %d expected 0" : GoString), Go.toInterface(_n));
                };
            };
            {
                var _a0 = (0 : GoInt);
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.setMutexProfileFraction(_a0));
            };
            var _m = _new(mutex);
            _m.lock();
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex locked" : GoString));
            };
            _m.unlock();
            if (!_m.tryLock()) {
                _t.fatalf(("TryLock failed with mutex unlocked" : GoString));
            };
            _m.unlock();
            var _c = new Chan<Bool>(0, () -> false);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (10 : GoInt), _i++, {
                    Go.routine(() -> hammerMutex(_m, (1000 : GoInt), _c));
                });
            };
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (10 : GoInt), _i++, {
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testMutexMisuse(_t:Ref<stdgo.testing.Testing.T>):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(Go.asInterface(_t));
        for (__0 => _test in _misuseTests) {
            var __tmp__ = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : GoInt)], ("TESTMISUSE" : GoString), _test._name).combinedOutput(), _out:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err == null) || !stdgo.strings.Strings.contains((_out : GoString), ("unlocked" : GoString))) {
                _t.errorf(("%s: did not find failure with message about unlocked lock: %s\n%s\n" : GoString), Go.toInterface(_test._name), Go.toInterface(_err), Go.toInterface(_out));
            };
        };
    }
function testMutexFairness(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
            var _stop = new Chan<Bool>(0, () -> false);
            {
                var _a0 = _stop;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            Go.routine(() -> {
                var a = function():Void {
                    while (true) {
                        _mu.lock();
                        stdgo.time.Time.sleep((100000i64 : stdgo.time.Time.Duration));
                        _mu.unlock();
                        Go.select([_stop.__get__() => {
                            return;
                        }, {}]);
                    };
                };
                a();
            });
            var _done = new Chan<Bool>((1 : GoInt).toBasic(), () -> false);
            Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (10 : GoInt), _i++, {
                            stdgo.time.Time.sleep((100000i64 : stdgo.time.Time.Duration));
                            _mu.lock();
                            _mu.unlock();
                        });
                    };
                    _done.__send__(true);
                };
                a();
            });
            Go.select([stdgo.time.Time.after((10000000000i64 : stdgo.time.Time.Duration)).__get__() => {
                _t.fatalf(("can\'t acquire Mutex in 10 seconds" : GoString));
            }, _done.__get__() => {}]);
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_0___localname___PaddedMutex_static_extension) class T_benchmarkMutexUncontended_0___localname___PaddedMutex {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _pad : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) (0 : GoUInt8)]);
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_pad:GoArray<GoUInt8>) {
        if (mutex != null) this.mutex = mutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function lock() mutex.lock();
    @:embedded
    public function tryLock():Bool return mutex.tryLock();
    @:embedded
    public function unlock() mutex.unlock();
    @:embedded
    public function _lockSlow() mutex._lockSlow();
    @:embedded
    public function _unlockSlow(__0:GoInt32) mutex._unlockSlow(__0);
    public function __copy__() {
        return new T_benchmarkMutexUncontended_0___localname___PaddedMutex(mutex, _pad);
    }
}
function benchmarkMutexUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _mu:T_benchmarkMutexUncontended_0___localname___PaddedMutex = ({} : stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_0___localname___PaddedMutex);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
            };
        });
    }
private function _benchmarkMutex(_b:Ref<stdgo.testing.Testing.B>, _slack:Bool, _work:Bool):Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
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
                        Go.cfor(_i < (100 : GoInt), _i++, {
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
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _acc1:GoUInt64 = __1, _acc0:GoUInt64 = __0;
        _b.setParallelism((4 : GoInt));
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _c = new Chan<Bool>(0, () -> false);
            var _data:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 4096) (0 : GoUInt64)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_pb.next(), _i++, {
                    if (_i % (4 : GoInt) == ((0 : GoInt))) {
                        _m.lock();
                        _acc0 = _acc0 - ((100i64 : GoUInt64));
                        _acc1 = _acc1 + ((100i64 : GoUInt64));
                        _m.unlock();
                    } else {
                        {
                            var _i:GoInt = (0 : GoInt);
                            Go.cfor(_i < (_data.length), _i = _i + ((4 : GoInt)), {
                                _data[(_i : GoInt)]++;
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
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var __0:GoUInt64 = (0 : GoUInt64), __1:GoUInt64 = (0 : GoUInt64), _acc1:GoUInt64 = __1, _acc0:GoUInt64 = __0;
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _data:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 16384) (0 : GoUInt64)]);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_pb.next(), _i++, {
                    _m.lock();
                    _acc0 = _acc0 - ((100i64 : GoUInt64));
                    _acc1 = _acc1 + ((100i64 : GoUInt64));
                    _m.unlock();
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (_data.length), _i = _i + ((4 : GoInt)), {
                            _data[(_i : GoInt)]++;
                        });
                    };
                });
            };
        });
    }
private function _run(_t:Ref<stdgo.testing.Testing.T>, _once:Ref<Once>, _o:Pointer<T_one>, _c:Chan<Bool>):Void {
        _once.do_(function():Void {
            _o.value.increment(_o);
        });
        {
            var _v:stdgo.sync_test.Sync_test.T_one = _o.value;
            if (_v != ((1 : stdgo.sync_test.Sync_test.T_one))) {
                _t.errorf(("once failed inside run: %d is not 1" : GoString), Go.toInterface(Go.asInterface(_v)));
            };
        };
        _c.__send__(true);
    }
function testOnce(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _o = _new(_one);
        var _once = _new(once);
        var _c = new Chan<Bool>(0, () -> false);
        {};
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                Go.routine(() -> _run(_t, _once, _o, _c));
            });
        };
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
                _c.__get__();
            });
        };
        if (_o.value != ((1 : stdgo.sync_test.Sync_test.T_one))) {
            _t.errorf(("once failed outside run: %d is not 1" : GoString), Go.toInterface(Go.asInterface(_o.value)));
        };
    }
function testOncePanic(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _once:Once = ({} : stdgo.sync.Sync.Once);
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _r:AnyInterface = ({
                                    final r = Go.recover_exception;
                                    Go.recover_exception = null;
                                    r;
                                });
                                if (_r == null) {
                                    _t.fatalf(("Once.Do did not panic" : GoString));
                                };
                            };
                        };
                        a();
                    });
                    _once.do_(function():Void {
                        throw Go.toInterface(("failed" : GoString));
                    });
                    for (defer in __deferstack__) {
                        defer();
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (Go.recover_exception != null) throw Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is AnyInterfaceData)) {
                        exe = Go.toInterface(__exception__.message);
                    };
                    Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return;
                };
            };
            a();
        };
        _once.do_(function():Void {
            _t.fatalf(("Once.Do called twice" : GoString));
        });
    }
function benchmarkOnce(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _once:Once = ({} : stdgo.sync.Sync.Once);
        var _f:() -> Void = function():Void {};
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _once.do_(_f);
            };
        });
    }
function testPool(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            if (_p.get() != null) {
                _t.fatal(Go.toInterface(("expected empty" : GoString)));
            };
            runtime_procPin();
            _p.put(Go.toInterface(("a" : GoString)));
            _p.put(Go.toInterface(("b" : GoString)));
            {
                var _g:AnyInterface = _p.get();
                if (_g != (Go.toInterface(("a" : GoString)))) {
                    _t.fatalf(("got %#v; want a" : GoString), _g);
                };
            };
            {
                var _g:AnyInterface = _p.get();
                if (_g != (Go.toInterface(("b" : GoString)))) {
                    _t.fatalf(("got %#v; want b" : GoString), _g);
                };
            };
            {
                var _g:AnyInterface = _p.get();
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil" : GoString), _g);
                };
            };
            runtime_procUnpin();
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < (100 : GoInt), _i++, {
                    _p.put(Go.toInterface(("c" : GoString)));
                });
            };
            stdgo.runtime.Runtime.gc();
            {
                var _g:AnyInterface = _p.get();
                if (_g != (Go.toInterface(("c" : GoString)))) {
                    _t.fatalf(("got %#v; want c after GC" : GoString), _g);
                };
            };
            stdgo.runtime.Runtime.gc();
            {
                var _g:AnyInterface = _p.get();
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil after second GC" : GoString), _g);
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testPoolNew(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _i:GoInt = (0 : GoInt);
            var _p:stdgo.sync.Sync.Pool = ({ new_ : function():AnyInterface {
                _i++;
                return Go.toInterface(_i);
            } } : Pool);
            {
                var _v:AnyInterface = _p.get();
                if (_v != (Go.toInterface((1 : GoInt)))) {
                    _t.fatalf(("got %v; want 1" : GoString), _v);
                };
            };
            {
                var _v:AnyInterface = _p.get();
                if (_v != (Go.toInterface((2 : GoInt)))) {
                    _t.fatalf(("got %v; want 2" : GoString), _v);
                };
            };
            runtime_procPin();
            _p.put(Go.toInterface((42 : GoInt)));
            {
                var _v:AnyInterface = _p.get();
                if (_v != (Go.toInterface((42 : GoInt)))) {
                    _t.fatalf(("got %v; want 42" : GoString), _v);
                };
            };
            runtime_procUnpin();
            {
                var _v:AnyInterface = _p.get();
                if (_v != (Go.toInterface((3 : GoInt)))) {
                    _t.fatalf(("got %v; want 3" : GoString), _v);
                };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
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
private function _testPool(_t:Ref<stdgo.testing.Testing.T>, _drain:Bool):Void {
        stdgo.internal.Macro.controlFlow({
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            {};
            @:label("loop") {
                var _try:GoInt = (0 : GoInt);
                Go.cfor(_try < (3 : GoInt), _try++, {
                    if ((_try == (1 : GoInt)) && stdgo.testing.Testing.short()) {
                        break;
                    };
                    var __0:GoUInt32 = (0 : GoUInt32), __1:GoUInt32 = (0 : GoUInt32), _fin1:GoUInt32 = __1, _fin:GoUInt32 = __0;
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (100 : GoInt), _i++, {
                            var _v = _new(_string);
                            stdgo.runtime.Runtime.setFinalizer(Go.toInterface(_v), Go.toInterface(function(_vv:Pointer<GoString>):Void {
                                stdgo.sync.atomic.Atomic.addUint32(Go.pointer(_fin), (1u32 : GoUInt32));
                            }));
                            _p.put(Go.toInterface(_v));
                        });
                    };
                    if (_drain) {
                        {
                            var _i:GoInt = (0 : GoInt);
                            Go.cfor(_i < (100 : GoInt), _i++, {
                                _p.get();
                            });
                        };
                    };
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (5 : GoInt), _i++, {
                            stdgo.runtime.Runtime.gc();
                            stdgo.time.Time.sleep(((_i * (100 : GoInt)) + (10 : GoInt) : stdgo.time.Time.Duration) * (1000000i64 : stdgo.time.Time.Duration));
                            {
                                _fin1 = stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_fin));
                                if (_fin1 >= (99u32 : GoUInt32)) {
                                    @:jump("loop") continue;
                                };
                            };
                        });
                    };
                    _t.fatalf(("only %v out of %v resources are finalized on try %v" : GoString), Go.toInterface(_fin1), Go.toInterface((100 : GoInt)), Go.toInterface(_try));
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
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        var _done = new Chan<Bool>(0, () -> false);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
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
                                    _t.errorf(("expect 0, got %v" : GoString), _v);
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
            Go.cfor(_i < (10 : GoInt), _i++, {
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
private function _testPoolDequeue(_t:Ref<stdgo.testing.Testing.T>, _d:PoolDequeue):Void {
        {};
        var n:GoInt = (2000000 : GoInt);
        if (stdgo.testing.Testing.short()) {
            n = (1000 : GoInt);
        };
        var _have = new Slice<GoInt32>((n : GoInt).toBasic(), 0).__setNumber32__();
        var _stop:GoInt32 = (0 : GoInt32);
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _record:GoInt -> Void = function(_val:GoInt):Void {
            stdgo.sync.atomic.Atomic.addInt32(Go.pointer(_have[(_val : GoInt)]), (1 : GoInt32));
            if (_val == (n - (1 : GoInt))) {
                stdgo.sync.atomic.Atomic.storeInt32(Go.pointer(_stop), (1 : GoInt32));
            };
        };
        {
            var _i:GoInt = (1 : GoInt);
            Go.cfor(_i < (10 : GoInt), _i++, {
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
                _t.errorf(("expected have[%d] = 1, got %d" : GoString), Go.toInterface(_i), Go.toInterface(_count));
            };
        };
        if (!stdgo.testing.Testing.short() && (_nPopHead == (0 : GoInt))) {
            _t.errorf(("popHead never succeeded" : GoString));
        };
    }
function benchmarkPool(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _p.put(Go.toInterface((1 : GoInt)));
                _p.get();
            };
        });
    }
function benchmarkPoolOverflow(_b:Ref<stdgo.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _b:GoInt = (0 : GoInt);
                    Go.cfor(_b < (100 : GoInt), _b++, {
                        _p.put(Go.toInterface((1 : GoInt)));
                    });
                };
                {
                    var _b:GoInt = (0 : GoInt);
                    Go.cfor(_b < (100 : GoInt), _b++, {
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
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
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
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _mstats:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
            var _pauses:Slice<GoUInt64> = (null : Slice<GoUInt64>);
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            {
                var _i:GoInt = (0 : GoInt);
                Go.cfor(_i < _b.n, _i++, {
                    {};
                    var _item:AnyInterface = Go.toInterface((42 : GoInt));
                    {
                        var _i:GoInt = (0 : GoInt);
                        Go.cfor(_i < (100000 : GoInt), _i++, {
                            _p.put(_item);
                        });
                    };
                    stdgo.runtime.Runtime.gc();
                    stdgo.runtime.Runtime.readMemStats((Go.setRef(_mstats) : Ref<stdgo.runtime.Runtime.MemStats>));
                    _pauses = (_pauses.__append__(_mstats.pauseNs[((_mstats.numGC + (255u32 : GoUInt32)) % (256u32 : GoUInt32) : GoInt)]));
                });
            };
            stdgo.sort.Sort.slice(Go.toInterface(_pauses), function(_i:GoInt, _j:GoInt):Bool {
                return _pauses[(_i : GoInt)] < _pauses[(_j : GoInt)];
            });
            var _total:GoUInt64 = (0 : GoUInt64);
            for (__8 => _ns in _pauses) {
                _total = _total + (_ns);
            };
            _b.reportMetric((_total : GoFloat64) / (_b.n : GoFloat64), ("ns/op" : GoString));
            _b.reportMetric((_pauses[((_pauses.length * (95 : GoInt)) / (100 : GoInt) : GoInt)] : GoFloat64), ("p95-ns/STW" : GoString));
            _b.reportMetric((_pauses[((_pauses.length * (50 : GoInt)) / (100 : GoInt) : GoInt)] : GoFloat64), ("p50-ns/STW" : GoString));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function benchmarkPoolExpensiveNew(_b:Ref<stdgo.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _globalSink = Go.toInterface(new Slice<GoUInt8>((8388608 : GoInt).toBasic(), 0).__setNumber32__());
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _globalSink = (null : AnyInterface);
                };
                a();
            });
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            var _nNew:GoUInt64 = (0 : GoUInt64);
            _p.new_ = function():AnyInterface {
                stdgo.sync.atomic.Atomic.addUint64(Go.pointer(_nNew), (1i64 : GoUInt64));
                stdgo.time.Time.sleep((1000000i64 : stdgo.time.Time.Duration));
                return Go.toInterface((42 : GoInt));
            };
            var __0:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats), __1:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats), _mstats2:stdgo.runtime.Runtime.MemStats = __1, _mstats1:stdgo.runtime.Runtime.MemStats = __0;
            stdgo.runtime.Runtime.readMemStats((Go.setRef(_mstats1) : Ref<stdgo.runtime.Runtime.MemStats>));
            _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
                var _items = new Slice<AnyInterface>((100 : GoInt).toBasic(), 0);
                var _sink:Slice<GoByte> = (null : Slice<GoUInt8>);
                while (_pb.next()) {
                    for (_i in 0 ... _items.length.toBasic()) {
                        _items[(_i : GoInt)] = _p.get();
                        _sink = new Slice<GoUInt8>((32768 : GoInt).toBasic(), 0).__setNumber32__();
                    };
                    for (_i => _v in _items) {
                        _p.put(_v);
                        _items[(_i : GoInt)] = (null : AnyInterface);
                    };
                };
                _sink;
            });
            stdgo.runtime.Runtime.readMemStats((Go.setRef(_mstats2) : Ref<stdgo.runtime.Runtime.MemStats>));
            _b.reportMetric((_mstats2.numGC - _mstats1.numGC : GoFloat64) / (_b.n : GoFloat64), ("GCs/op" : GoString));
            _b.reportMetric((_nNew : GoFloat64) / (_b.n : GoFloat64), ("New/op" : GoString));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit class T_benchmarkSemaUncontended_0___localname___PaddedSem {
    public var _sem : GoUInt32 = 0;
    public var _pad : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 32) (0 : GoUInt32)]);
    public function new(?_sem:GoUInt32, ?_pad:GoArray<GoUInt32>) {
        if (_sem != null) this._sem = _sem;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkSemaUncontended_0___localname___PaddedSem(_sem, _pad);
    }
}
function benchmarkSemaUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _sem = _new(paddedSem);
            while (_pb.next()) {
                runtime_Semrelease(Go.pointer(_sem._sem), false, (0 : GoInt));
                runtime_Semacquire(Go.pointer(_sem._sem));
            };
        });
    }
private function _benchmarkSema(_b:Ref<stdgo.testing.Testing.B>, _block:Bool, _work:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_b.n == ((0 : GoInt))) {
                return;
            };
            var _sem:GoUInt32 = (0u32 : GoUInt32);
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
                            Go.cfor(_i < (100 : GoInt), _i++, {
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
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
private function _parallelReader(_m:Ref<RWMutex>, _clocked:Chan<Bool>, _cunlock:Chan<Bool>, _cdone:Chan<Bool>):Void {
        _m.rlock();
        _clocked.__send__(true);
        _cunlock.__get__();
        _m.runlock();
        _cdone.__send__(true);
    }
private function _doTestParallelReaders(_numReaders:GoInt, _gomaxprocs:GoInt):Void {
        stdgo.runtime.Runtime.gomaxprocs(_gomaxprocs);
        var _m:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _clocked = new Chan<Bool>(0, () -> false);
        var _cunlock = new Chan<Bool>(0, () -> false);
        var _cdone = new Chan<Bool>(0, () -> false);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _numReaders, _i++, {
                Go.routine(() -> _parallelReader((Go.setRef(_m) : Ref<stdgo.sync.Sync.RWMutex>), _clocked, _cunlock, _cdone));
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
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((-1 : GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
private function _reader(_rwm:Ref<RWMutex>, _num_iterations:GoInt, _activity:Pointer<GoInt32>, _cdone:Chan<Bool>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _num_iterations, _i++, {
                _rwm.rlock();
                var _n:GoInt32 = stdgo.sync.atomic.Atomic.addInt32(_activity, (1 : GoInt32));
                if ((_n < (1 : GoInt32)) || (_n >= (10000 : GoInt32))) {
                    _rwm.runlock();
                    throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("wlock(%d)\n" : GoString), Go.toInterface(_n)));
                };
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (100 : GoInt), _i++, {});
                };
                stdgo.sync.atomic.Atomic.addInt32(_activity, (-1 : GoInt32));
                _rwm.runlock();
            });
        };
        _cdone.__send__(true);
    }
private function _writer(_rwm:Ref<RWMutex>, _num_iterations:GoInt, _activity:Pointer<GoInt32>, _cdone:Chan<Bool>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < _num_iterations, _i++, {
                _rwm.lock();
                var _n:GoInt32 = stdgo.sync.atomic.Atomic.addInt32(_activity, (10000 : GoInt32));
                if (_n != ((10000 : GoInt32))) {
                    _rwm.unlock();
                    throw Go.toInterface(stdgo.fmt.Fmt.sprintf(("wlock(%d)\n" : GoString), Go.toInterface(_n)));
                };
                {
                    var _i:GoInt = (0 : GoInt);
                    Go.cfor(_i < (100 : GoInt), _i++, {});
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
        var _rwm:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _cdone = new Chan<Bool>(0, () -> false);
        Go.routine(() -> _writer((Go.setRef(_rwm) : Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
        var _i:GoInt = (0 : GoInt);
        {
            _i = (0 : GoInt);
            Go.cfor(_i < (_numReaders / (2 : GoInt)), _i++, {
                Go.routine(() -> _reader((Go.setRef(_rwm) : Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
            });
        };
        Go.routine(() -> _writer((Go.setRef(_rwm) : Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
        Go.cfor(_i < _numReaders, _i++, {
            Go.routine(() -> _reader((Go.setRef(_rwm) : Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, Go.pointer(_activity), _cdone));
        });
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < ((2 : GoInt) + _numReaders), _i++, {
                _cdone.__get__();
            });
        };
    }
function testRWMutex(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _m:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
            _m.lock();
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex locked" : GoString));
            };
            if (_m.tryRLock()) {
                _t.fatalf(("TryRLock succeeded with mutex locked" : GoString));
            };
            _m.unlock();
            if (!_m.tryLock()) {
                _t.fatalf(("TryLock failed with mutex unlocked" : GoString));
            };
            _m.unlock();
            if (!_m.tryRLock()) {
                _t.fatalf(("TryRLock failed with mutex unlocked" : GoString));
            };
            if (!_m.tryRLock()) {
                _t.fatalf(("TryRLock failed with mutex rlocked" : GoString));
            };
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex rlocked" : GoString));
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
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testRLocker(_t:Ref<stdgo.testing.Testing.T>):Void {
        var _wl:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _rl:Locker = (null : stdgo.sync.Sync.Locker);
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
                Go.select([_wlocked.__get__() => {
                    _t.fatal(Go.toInterface(("RLocker() didn\'t read-lock it" : GoString)));
                }, {}]);
                _rl.unlock();
                _wlocked.__get__();
                Go.select([_rlocked.__get__() => {
                    _t.fatal(Go.toInterface(("RLocker() didn\'t respect the write lock" : GoString)));
                }, {}]);
                _wl.unlock();
            });
        };
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex_static_extension) class T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex {
    @:embedded
    public var rwmutex : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _pad : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 32) (0 : GoUInt32)]);
    public function new(?rwmutex:stdgo.sync.Sync.RWMutex, ?_pad:GoArray<GoUInt32>) {
        if (rwmutex != null) this.rwmutex = rwmutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function lock() rwmutex.lock();
    @:embedded
    public function rlock() rwmutex.rlock();
    @:embedded
    public function rlocker():stdgo.sync.Sync.Locker return rwmutex.rlocker();
    @:embedded
    public function runlock() rwmutex.runlock();
    @:embedded
    public function tryLock():Bool return rwmutex.tryLock();
    @:embedded
    public function tryRLock():Bool return rwmutex.tryRLock();
    @:embedded
    public function unlock() rwmutex.unlock();
    @:embedded
    public function _rUnlockSlow(__0:GoInt32) rwmutex._rUnlockSlow(__0);
    public function __copy__() {
        return new T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex(rwmutex, _pad);
    }
}
function benchmarkRWMutexUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _rwm:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex = ({} : stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex);
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
private function _benchmarkRWMutex(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt, _writeRatio:GoInt):Void {
        var _rwm:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
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
private function _testWaitGroup(_t:Ref<stdgo.testing.Testing.T>, _wg1:Ref<WaitGroup>, _wg2:Ref<WaitGroup>):Void {
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
                Go.select([_exited.__get__() => {
                    _t.fatal(Go.toInterface(("WaitGroup released group too soon" : GoString)));
                }, {}]);
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
        var _wg1 = (Go.setRef((new WaitGroup() : WaitGroup)) : Ref<stdgo.sync.Sync.WaitGroup>);
        var _wg2 = (Go.setRef((new WaitGroup() : WaitGroup)) : Ref<stdgo.sync.Sync.WaitGroup>);
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i != ((8 : GoInt)), _i++, {
                _testWaitGroup(_t, _wg1, _wg2);
            });
        };
    }
function testWaitGroupMisuse(_t:Ref<stdgo.testing.Testing.T>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:AnyInterface = ({
                        final r = Go.recover_exception;
                        Go.recover_exception = null;
                        r;
                    });
                    if (_err != (Go.toInterface(("sync: negative WaitGroup counter" : GoString)))) {
                        _t.fatalf(("Unexpected panic: %#v" : GoString), _err);
                    };
                };
                a();
            });
            var _wg = (Go.setRef((new WaitGroup() : WaitGroup)) : Ref<stdgo.sync.Sync.WaitGroup>);
            _wg.add((1 : GoInt));
            _wg.done();
            _wg.done();
            _t.fatal(Go.toInterface(("Should panic" : GoString)));
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
function testWaitGroupRace(_t:Ref<stdgo.testing.Testing.T>):Void {
        {
            var _i:GoInt = (0 : GoInt);
            Go.cfor(_i < (1000 : GoInt), _i++, {
                var _wg = (Go.setRef((new WaitGroup() : WaitGroup)) : Ref<stdgo.sync.Sync.WaitGroup>);
                var _n = _new(_int32);
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
                    _t.fatal(Go.toInterface(("Spurious wakeup from Wait" : GoString)));
                };
            });
        };
    }
/**
    
    
    
**/
@:structInit class T_testWaitGroupAlign_0___localname___X {
    public var _x : GoUInt8 = 0;
    public var _wg : stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
    public function new(?_x:GoUInt8, ?_wg:stdgo.sync.Sync.WaitGroup) {
        if (_x != null) this._x = _x;
        if (_wg != null) this._wg = _wg;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_testWaitGroupAlign_0___localname___X(_x, _wg);
    }
}
function testWaitGroupAlign(_t:Ref<stdgo.testing.Testing.T>):Void {
        {};
        var _x:T_testWaitGroupAlign_0___localname___X = ({} : stdgo.sync_test.Sync_test.T_testWaitGroupAlign_0___localname___X);
        _x._wg.add((1 : GoInt));
        Go.routine(() -> {
            var a = function(_x:Ref<T_testWaitGroupAlign_0___localname___X>):Void {
                _x._wg.done();
            };
            a((Go.setRef(_x) : Ref<stdgo.sync_test.Sync_test.T_testWaitGroupAlign_0___localname___X>));
        });
        _x._wg.wait_();
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup_static_extension) class T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup {
    @:embedded
    public var waitGroup : stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
    public var _pad : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) (0 : GoUInt8)]);
    public function new(?waitGroup:stdgo.sync.Sync.WaitGroup, ?_pad:GoArray<GoUInt8>) {
        if (waitGroup != null) this.waitGroup = waitGroup;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return Go.toInterface(this);
    @:embedded
    public function add(__0:GoInt) waitGroup.add(__0);
    @:embedded
    public function done() waitGroup.done();
    @:embedded
    public function wait_() waitGroup.wait_();
    public function __copy__() {
        return new T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup(waitGroup, _pad);
    }
}
function benchmarkWaitGroupUncontended(_b:Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:Ref<stdgo.testing.Testing.PB>):Void {
            var _wg:T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup = ({} : stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup);
            while (_pb.next()) {
                _wg.add((1 : GoInt));
                _wg.done();
                _wg.wait_();
            };
        });
    }
private function _benchmarkWaitGroupAddDone(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
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
private function _benchmarkWaitGroupWait(_b:Ref<stdgo.testing.Testing.B>, _localWork:GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
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
                var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
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
            if ((stdgo.os.Os.args.length == (3 : GoInt)) && (stdgo.os.Os.args[(1 : GoInt)] == ("TESTMISUSE" : GoString))) {
                for (__0 => _test in _misuseTests) {
                    if (_test._name == (stdgo.os.Os.args[((2 : GoInt) : GoInt)])) {
                        {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> @:implicitReturn throw "__return__");
                                    _test._f();
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (Go.recover_exception != null) throw Go.recover_exception;
                                        throw "__return__";
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is AnyInterfaceData)) {
                                        exe = Go.toInterface(__exception__.message);
                                    };
                                    Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (Go.recover_exception != null) throw Go.recover_exception;
                                    throw "__return__";
                                };
                            };
                            a();
                        };
                        stdgo.fmt.Fmt.printf(("test completed\n" : GoString));
                        Sys.exit((0 : GoInt));
                    };
                };
                stdgo.fmt.Fmt.printf(("unknown test\n" : GoString));
                Sys.exit((0 : GoInt));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_httpPkg_asInterface {
    @:keep
    public dynamic function get(_url:GoString):Void __self__.value.get(_url);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_httpPkg>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_httpPkg_asInterface) class T_httpPkg_static_extension {
    @:keep
    static public function get( _:T_httpPkg, _url:GoString):Void {}
}
class RWMutexMap_asInterface {
    @:keep
    public dynamic function range(_f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:AnyInterface, _old:AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:AnyInterface, _old:AnyInterface, _new:AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:AnyInterface, _value:AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<RWMutexMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.RWMutexMap_asInterface) class RWMutexMap_static_extension {
    @:keep
    static public function range( _m:Ref<RWMutexMap>, _f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void {
        _m._mu.rlock();
        var _keys = new Slice<AnyInterface>((0 : GoInt).toBasic(), (_m._dirty.length));
        for (_k => _ in _m._dirty) {
            _keys = (_keys.__append__(_k));
        };
        _m._mu.runlock();
        for (__16 => _k in _keys) {
            var __tmp__ = _m.load(_k), _v:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:Ref<RWMutexMap>, _key:AnyInterface, _old:AnyInterface):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted:Bool = false;
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            if (_m._dirty == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _value:AnyInterface = __tmp__.value, _loaded:Bool = __tmp__.ok;
            if (_loaded && (_value == _old)) {
                if (_m._dirty != null) _m._dirty.remove(_key);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _deleted;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _deleted;
        };
    }
    @:keep
    static public function compareAndSwap( _m:Ref<RWMutexMap>, _key:AnyInterface, _old:AnyInterface, _new:AnyInterface):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped:Bool = false;
        try {
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            if (_m._dirty == null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return false;
                };
            };
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _value:AnyInterface = __tmp__.value, _loaded:Bool = __tmp__.ok;
            if (_loaded && (_value == _old)) {
                _m._dirty[_key] = _new;
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _swapped;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _swapped;
        };
    }
    @:keep
    static public function delete( _m:Ref<RWMutexMap>, _key:AnyInterface):Void {
        _m._mu.lock();
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:Ref<RWMutexMap>, _key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _value:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _value = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        if (!_loaded) {
            _m._mu.unlock();
            return { _0 : (null : AnyInterface), _1 : false };
        };
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:Ref<RWMutexMap>, _key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _previous:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new GoAnyInterfaceMap<AnyInterface>();
                x.__defaultValue__ = () -> (null : AnyInterface);
                @:mergeBlock {};
                cast x;
            } : GoMap<AnyInterface, AnyInterface>);
        };
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _previous = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:Ref<RWMutexMap>, _key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _actual:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _actual = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        if (!_loaded) {
            _actual = _value;
            if (_m._dirty == null) {
                _m._dirty = ({
                    final x = new GoAnyInterfaceMap<AnyInterface>();
                    x.__defaultValue__ = () -> (null : AnyInterface);
                    @:mergeBlock {};
                    cast x;
                } : GoMap<AnyInterface, AnyInterface>);
            };
            _m._dirty[_key] = _value;
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:Ref<RWMutexMap>, _key:AnyInterface, _value:AnyInterface):Void {
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new GoAnyInterfaceMap<AnyInterface>();
                x.__defaultValue__ = () -> (null : AnyInterface);
                @:mergeBlock {};
                cast x;
            } : GoMap<AnyInterface, AnyInterface>);
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:Ref<RWMutexMap>, _key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _value:AnyInterface = (null : AnyInterface), _ok:Bool = false;
        _m._mu.rlock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { value : _m._dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _value = __tmp__.value;
            _ok = __tmp__.ok;
        };
        _m._mu.runlock();
        return { _0 : _value, _1 : _ok };
    }
}
class DeepCopyMap_asInterface {
    @:keep
    public dynamic function _dirty():GoMap<AnyInterface, AnyInterface> return __self__.value._dirty();
    @:keep
    public dynamic function range(_f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:AnyInterface, _old:AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:AnyInterface, _old:AnyInterface, _new:AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:AnyInterface, _value:AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<DeepCopyMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.DeepCopyMap_asInterface) class DeepCopyMap_static_extension {
    @:keep
    static public function _dirty( _m:Ref<DeepCopyMap>):GoMap<AnyInterface, AnyInterface> {
        var __tmp__ = try {
            { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
        } catch(_) {
            { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
        }, _clean = __tmp__.value, __0 = __tmp__.ok;
        var _dirty = ({
            final x = new GoAnyInterfaceMap<AnyInterface>();
            x.__defaultValue__ = () -> (null : AnyInterface);
            @:mergeBlock {};
            cast x;
        } : GoMap<AnyInterface, AnyInterface>);
        for (_k => _v in _clean) {
            _dirty[_k] = _v;
        };
        return _dirty;
    }
    @:keep
    static public function range( _m:Ref<DeepCopyMap>, _f:(_key:AnyInterface, _value:AnyInterface) -> Bool):Void {
        var __tmp__ = try {
            { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
        } catch(_) {
            { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
        }, _clean = __tmp__.value, __0 = __tmp__.ok;
        for (_k => _v in _clean) {
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:Ref<DeepCopyMap>, _key:AnyInterface, _old:AnyInterface):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted:Bool = false;
        try {
            var __tmp__ = try {
                { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
            } catch(_) {
                { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
            }, _clean = __tmp__.value, __0 = __tmp__.ok;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { value : _clean[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _previous:AnyInterface = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok || (_previous != _old)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { value : _dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _value:AnyInterface = __tmp__.value, _loaded:Bool = __tmp__.ok;
            if (_loaded && (_value == _old)) {
                if (_dirty != null) _dirty.remove(_key);
                _m._clean.store(Go.toInterface(_dirty));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _deleted;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _deleted;
        };
    }
    @:keep
    static public function compareAndSwap( _m:Ref<DeepCopyMap>, _key:AnyInterface, _old:AnyInterface, _new:AnyInterface):Bool {
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped:Bool = false;
        try {
            var __tmp__ = try {
                { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
            } catch(_) {
                { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
            }, _clean = __tmp__.value, __0 = __tmp__.ok;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { value : _clean[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _previous:AnyInterface = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (!_ok || (_previous != _old)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { value : _dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false }), _value:AnyInterface = __tmp__.value, _loaded:Bool = __tmp__.ok;
            if (_loaded && (_value == _old)) {
                _dirty[_key] = _new;
                _m._clean.store(Go.toInterface(_dirty));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return true;
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return false;
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return _swapped;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is AnyInterfaceData)) {
                exe = Go.toInterface(__exception__.message);
            };
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return _swapped;
        };
    }
    @:keep
    static public function delete( _m:Ref<DeepCopyMap>, _key:AnyInterface):Void {
        _m._mu.lock();
        var _dirty = _m._dirty();
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:Ref<DeepCopyMap>, _key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _value:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { value : _dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _value = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:Ref<DeepCopyMap>, _key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _previous:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { value : _dirty[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _previous = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        _dirty[_key] = _value;
        _m._clean.store(Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:Ref<DeepCopyMap>, _key:AnyInterface, _value:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _actual:AnyInterface = (null : AnyInterface), _loaded:Bool = false;
        var __tmp__ = try {
            { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
        } catch(_) {
            { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
        }, _clean = __tmp__.value, __0 = __tmp__.ok;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { value : _clean[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _actual = __tmp__.value;
            _loaded = __tmp__.ok;
        };
        if (_loaded) {
            return { _0 : _actual, _1 : _loaded };
        };
        _m._mu.lock();
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
            } catch(_) {
                { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
            };
            _clean = __tmp__.value;
        };
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { value : _clean[_key], ok : true } : { value : (null : AnyInterface), ok : false });
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
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:Ref<DeepCopyMap>, _key:AnyInterface, _value:AnyInterface):Void {
        _m._mu.lock();
        var _dirty = _m._dirty();
        _dirty[_key] = _value;
        _m._clean.store(Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:Ref<DeepCopyMap>, _key:AnyInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        var _value:AnyInterface = (null : AnyInterface), _ok:Bool = false;
        var __tmp__ = try {
            { value : (Go.typeAssert((_m._clean.load() : GoMap<AnyInterface, AnyInterface>)) : GoMap<AnyInterface, AnyInterface>), ok : true };
        } catch(_) {
            { value : (null : GoMap<AnyInterface, AnyInterface>), ok : false };
        }, _clean = __tmp__.value, __0 = __tmp__.ok;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { value : _clean[_key], ok : true } : { value : (null : AnyInterface), ok : false });
            _value = __tmp__.value;
            _ok = __tmp__.ok;
        };
        return { _0 : _value, _1 : _ok };
    }
}
class T_mapCall_asInterface {
    @:keep
    public dynamic function generate(_r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_r, _size);
    @:keep
    public dynamic function _apply(_m:T_mapInterface):{ var _0 : AnyInterface; var _1 : Bool; } return __self__.value._apply(_m);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_mapCall>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_mapCall_asInterface) class T_mapCall_static_extension {
    @:keep
    static public function generate( _:T_mapCall, _r:Ref<stdgo.math.rand.Rand.Rand>, _size:GoInt):stdgo.reflect.Reflect.Value {
        var _c:stdgo.sync_test.Sync_test.T_mapCall = ({ _op : _mapOps[(stdgo.math.rand.Rand.intn((_mapOps.length)) : GoInt)], _k : _randValue(_r) } : T_mapCall);
        {
            final __value__ = _c._op;
            if (__value__ == ((("Store" : GoString) : stdgo.sync_test.Sync_test.T_mapOp)) || __value__ == ((("LoadOrStore" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _c._v = _randValue(_r);
            };
        };
        return stdgo.reflect.Reflect.valueOf(Go.toInterface(Go.asInterface(_c)))?.__copy__();
    }
    @:keep
    static public function _apply( _c:T_mapCall, _m:T_mapInterface):{ var _0 : AnyInterface; var _1 : Bool; } {
        {
            final __value__ = _c._op;
            if (__value__ == ((("Load" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.load(_c._k);
            } else if (__value__ == ((("Store" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _m.store(_c._k, _c._v);
                return { _0 : (null : AnyInterface), _1 : false };
            } else if (__value__ == ((("LoadOrStore" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.loadOrStore(_c._k, _c._v);
            } else if (__value__ == ((("LoadAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.loadAndDelete(_c._k);
            } else if (__value__ == ((("Delete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _m.delete(_c._k);
                return { _0 : (null : AnyInterface), _1 : false };
            } else if (__value__ == ((("Swap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.swap(_c._k, _c._v);
            } else if (__value__ == ((("CompareAndSwap" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndSwap(_c._k, _c._v, Go.toInterface(stdgo.math.rand.Rand.int_()))) {
                    _m.delete(_c._k);
                    return { _0 : _c._v, _1 : true };
                };
                return { _0 : (null : AnyInterface), _1 : false };
            } else if (__value__ == ((("CompareAndDelete" : GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndDelete(_c._k, _c._v)) {
                    {
                        var __tmp__ = _m.load(_c._k), __0:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (null : AnyInterface), _1 : true };
                        };
                    };
                };
                return { _0 : (null : AnyInterface), _1 : false };
            } else {
                throw Go.toInterface(("invalid mapOp" : GoString));
            };
        };
    }
}
class T_one_asInterface {
    @:keep
    @:pointer
    public dynamic function increment():Void __self__.value.increment(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_one>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_one_asInterface) class T_one_static_extension {
    @:keep
    @:pointer
    static public function increment(____:T_one,  _o:Pointer<T_one>):Void {
        _o.value++;
    }
}
class T_benchmarkMutexUncontended_0___localname___PaddedMutex_asInterface {
    @:embedded
    public dynamic function _unlockSlow(__0:GoInt32):Void __self__.value._unlockSlow(__0);
    @:embedded
    public dynamic function _lockSlow():Void __self__.value._lockSlow();
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_benchmarkMutexUncontended_0___localname___PaddedMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_0___localname___PaddedMutex_asInterface) class T_benchmarkMutexUncontended_0___localname___PaddedMutex_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T_benchmarkMutexUncontended_0___localname___PaddedMutex, __0:GoInt32) __self__._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:T_benchmarkMutexUncontended_0___localname___PaddedMutex) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_benchmarkMutexUncontended_0___localname___PaddedMutex) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkMutexUncontended_0___localname___PaddedMutex):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_benchmarkMutexUncontended_0___localname___PaddedMutex) __self__.lock();
}
class T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex_asInterface {
    @:embedded
    public dynamic function _rUnlockSlow(__0:GoInt32):Void __self__.value._rUnlockSlow(__0);
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryRLock():Bool return __self__.value.tryRLock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function runlock():Void __self__.value.runlock();
    @:embedded
    public dynamic function rlocker():stdgo.sync.Sync.Locker return __self__.value.rlocker();
    @:embedded
    public dynamic function rlock():Void __self__.value.rlock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex_asInterface) class T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex_static_extension {
    @:embedded
    public static function _rUnlockSlow( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex, __0:GoInt32) __self__._rUnlockSlow(__0);
    @:embedded
    public static function unlock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex) __self__.unlock();
    @:embedded
    public static function tryRLock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex):Bool return __self__.tryRLock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex):Bool return __self__.tryLock();
    @:embedded
    public static function runlock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex) __self__.runlock();
    @:embedded
    public static function rlocker( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex):stdgo.sync.Sync.Locker return __self__.rlocker();
    @:embedded
    public static function rlock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex) __self__.rlock();
    @:embedded
    public static function lock( __self__:T_benchmarkRWMutexUncontended_0___localname___PaddedRWMutex) __self__.lock();
}
class T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup_asInterface {
    @:embedded
    public dynamic function wait_():Void __self__.value.wait_();
    @:embedded
    public dynamic function done():Void __self__.value.done();
    @:embedded
    public dynamic function add(__0:GoInt):Void __self__.value.add(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup_asInterface) class T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup_static_extension {
    @:embedded
    public static function wait_( __self__:T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup) __self__.wait_();
    @:embedded
    public static function done( __self__:T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup) __self__.done();
    @:embedded
    public static function add( __self__:T_benchmarkWaitGroupUncontended_0___localname___PaddedWaitGroup, __0:GoInt) __self__.add(__0);
}
