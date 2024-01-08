package stdgo.sync_test;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
import stdgo.sync.Sync;
/**
    
    
    
**/
var _bufPool : stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_new(stdgo.bytes.Bytes.buffer)));
    } } : stdgo.sync.Sync.Pool);
/**
    
    
    
**/
var _mapOps : stdgo.GoArray<stdgo.sync_test.Sync_test.T_mapOp> = (new stdgo.GoArray<stdgo.sync_test.Sync_test.T_mapOp>((("Load" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Store" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("LoadOrStore" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("LoadAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Delete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("Swap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("CompareAndSwap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp), (("CompareAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp)) : stdgo.GoArray<stdgo.sync_test.Sync_test.T_mapOp>);
/**
    
    
    
**/
var _misuseTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(8, 8, ({ _name : ("Mutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("Mutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock3" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock2" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.lock();
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock3" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.runlock();
        _mu.runlock();
    } } : T__struct_2)) : stdgo.Slice<T__struct_2>);
/**
    
    
    
**/
var _onceFunc : () -> Void = stdgo.sync.Sync.onceFunc(function():Void {});
/**
    
    
    
**/
var _onceValue : () -> stdgo.StdGoTypes.GoInt = stdgo.sync.Sync.onceValue((0 : stdgo.StdGoTypes.GoInt), function():stdgo.StdGoTypes.GoInt {
        return (42 : stdgo.StdGoTypes.GoInt);
    });
/**
    
    
    
**/
var _http : T_httpPkg = ({} : stdgo.sync_test.Sync_test.T_httpPkg);
/**
    
    
    
**/
var __2 : stdgo.sync_test.Sync_test.T_mapInterface = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync_test.Sync_test.RWMutexMap() : stdgo.sync_test.Sync_test.RWMutexMap)) : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.RWMutexMap>));
/**
    
    
    
**/
var __3 : stdgo.sync_test.Sync_test.T_mapInterface = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync_test.Sync_test.DeepCopyMap() : stdgo.sync_test.Sync_test.DeepCopyMap)) : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>));
/**
    
    
    
**/
final _opLoad : stdgo.sync_test.Sync_test.T_mapOp = ((("Load" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opStore : stdgo.sync_test.Sync_test.T_mapOp = ((("Store" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opLoadOrStore : stdgo.sync_test.Sync_test.T_mapOp = ((("LoadOrStore" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opLoadAndDelete : stdgo.sync_test.Sync_test.T_mapOp = ((("LoadAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opDelete : stdgo.sync_test.Sync_test.T_mapOp = ((("Delete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opSwap : stdgo.sync_test.Sync_test.T_mapOp = ((("Swap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opCompareAndSwap : stdgo.sync_test.Sync_test.T_mapOp = ((("CompareAndSwap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
final _opCompareAndDelete : stdgo.sync_test.Sync_test.T_mapOp = ((("CompareAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp) : T_mapOp);
/**
    
    
    
**/
var _onceFuncOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _onceValueOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
/**
    
    
    
**/
var _onceValueValue : stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
/**
    
    
    
**/
var _globalSink : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
/**
    // mapInterface is the interface Map implements.
    
    
**/
typedef T_mapInterface = stdgo.StdGoTypes.StructType & {
    /**
        
        
        
    **/
    public dynamic function load(_0:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function store(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function loadOrStore(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function loadAndDelete(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function delete(_0:stdgo.StdGoTypes.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function swap(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function compareAndSwap(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function compareAndDelete(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function range(_0:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void;
};
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.sync_test.Sync_test.T_httpPkg_static_extension) class T_httpPkg {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_httpPkg();
    }
}
/**
    
    
    
**/
@:structInit @:private class T_bench {
    public var _setup : (stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public var _perG : (stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, stdgo.StdGoTypes.GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public function new(?_setup:(stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, stdgo.sync_test.Sync_test.T_mapInterface) -> Void, ?_perG:(stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, stdgo.StdGoTypes.GoInt, stdgo.sync_test.Sync_test.T_mapInterface) -> Void) {
        if (_setup != null) this._setup = _setup;
        if (_perG != null) this._perG = _perG;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bench(_setup, _perG);
    }
}
/**
    // RWMutexMap is an implementation of mapInterface using a sync.RWMutex.
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.RWMutexMap_static_extension) class RWMutexMap {
    public var _mu : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _dirty : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
    public function new(?_mu:stdgo.sync.Sync.RWMutex, ?_dirty:stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>) {
        if (_mu != null) this._mu = _mu;
        if (_dirty != null) this._dirty = _dirty;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _clean : stdgo.sync.atomic_.Atomic_.Value = ({} : stdgo.sync.atomic_.Atomic_.Value);
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_clean:stdgo.sync.atomic_.Atomic_.Value) {
        if (_mu != null) this._mu = _mu;
        if (_clean != null) this._clean = _clean;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeepCopyMap(_mu, _clean);
    }
}
/**
    // mapCall is a quick.Generator for calls on mapInterface.
    
    
**/
@:structInit @:private @:using(stdgo.sync_test.Sync_test.T_mapCall_static_extension) class T_mapCall {
    public var _op : stdgo.sync_test.Sync_test.T_mapOp = (("" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp);
    public var _k : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _v : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public function new(?_op:stdgo.sync_test.Sync_test.T_mapOp, ?_k:stdgo.StdGoTypes.AnyInterface, ?_v:stdgo.StdGoTypes.AnyInterface) {
        if (_op != null) this._op = _op;
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapCall(_op, _k, _v);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_mapResult {
    public var _value : stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_value:stdgo.StdGoTypes.AnyInterface, ?_ok:Bool) {
        if (_value != null) this._value = _value;
        if (_ok != null) this._ok = _ok;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapResult(_value, _ok);
    }
}
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.sync_test.Sync_test.T__struct_1_static_extension) typedef T__struct_1 = {};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.sync_test.Sync_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _f : () -> Void;
};
@:named typedef T_mapOp = stdgo.GoString;
@:named @:using(stdgo.sync_test.Sync_test.T_one_static_extension) typedef T_one = stdgo.StdGoTypes.GoInt;
function testCondSignal(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
        var _n:stdgo.StdGoTypes.GoInt = (2 : stdgo.StdGoTypes.GoInt);
        var _running = new stdgo.Chan<Bool>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        var _awake = new stdgo.Chan<Bool>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                stdgo.Go.routine(() -> {
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
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _running.__get__();
            });
        };
        while (_n > (0 : stdgo.StdGoTypes.GoInt)) {
            {
                var __select__ = true;
                while (__select__) {
                    if (_awake != null && _awake.__isGet__()) {
                        __select__ = false;
                        {
                            _awake.__get__();
                            {
                                _t.fatal(stdgo.Go.toInterface(("goroutine not asleep" : stdgo.GoString)));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo.internal.Async.tick();
                };
            };
            _m.lock();
            _c.signal();
            _m.unlock();
            _awake.__get__();
            {
                var __select__ = true;
                while (__select__) {
                    if (_awake != null && _awake.__isGet__()) {
                        __select__ = false;
                        {
                            _awake.__get__();
                            {
                                _t.fatal(stdgo.Go.toInterface(("too many goroutines awake" : stdgo.GoString)));
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo.internal.Async.tick();
                };
            };
            _n--;
        };
        _c.signal();
    }
function testCondSignalGenerations(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
        var _n:stdgo.StdGoTypes.GoInt = (100 : stdgo.StdGoTypes.GoInt);
        var _running = new stdgo.Chan<Bool>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        var _awake = new stdgo.Chan<stdgo.StdGoTypes.GoInt>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> (0 : stdgo.StdGoTypes.GoInt));
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.StdGoTypes.GoInt):Void {
                        _m.lock();
                        _running.__send__(true);
                        _c.wait_();
                        _awake.__send__(_i);
                        _m.unlock();
                    };
                    a(_i);
                });
                if (_i > (0 : stdgo.StdGoTypes.GoInt)) {
                    var _a:stdgo.StdGoTypes.GoInt = _awake.__get__();
                    if (_a != (_i - (1 : stdgo.StdGoTypes.GoInt))) {
                        _t.fatalf(("wrong goroutine woke up: want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_i - (1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_a));
                    };
                };
                _running.__get__();
                _m.lock();
                _c.signal();
                _m.unlock();
            });
        };
    }
function testCondBroadcast(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
        var _n:stdgo.StdGoTypes.GoInt = (200 : stdgo.StdGoTypes.GoInt);
        var _running = new stdgo.Chan<stdgo.StdGoTypes.GoInt>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> (0 : stdgo.StdGoTypes.GoInt));
        var _awake = new stdgo.Chan<stdgo.StdGoTypes.GoInt>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> (0 : stdgo.StdGoTypes.GoInt));
        var _exit:Bool = false;
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_g:stdgo.StdGoTypes.GoInt):Void {
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
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _n, _i++, {
                        _running.__get__();
                    });
                };
                if (_i == (_n - (1 : stdgo.StdGoTypes.GoInt))) {
                    _m.lock();
                    _exit = true;
                    _m.unlock();
                };
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_awake != null && _awake.__isGet__()) {
                            __select__ = false;
                            {
                                _awake.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("goroutine not asleep" : stdgo.GoString)));
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo.internal.Async.tick();
                    };
                };
                _m.lock();
                _c.broadcast();
                _m.unlock();
                var _seen = new stdgo.Slice<Bool>((_n : stdgo.StdGoTypes.GoInt).toBasic(), 0);
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _n, _i++, {
                        var _g:stdgo.StdGoTypes.GoInt = _awake.__get__();
                        if (_seen[(_g : stdgo.StdGoTypes.GoInt)]) {
                            _t.fatal(stdgo.Go.toInterface(("goroutine woke up twice" : stdgo.GoString)));
                        };
                        _seen[(_g : stdgo.StdGoTypes.GoInt)] = true;
                    });
                };
            });
        };
        {
            var __select__ = true;
            while (__select__) {
                if (_running != null && _running.__isGet__()) {
                    __select__ = false;
                    {
                        _running.__get__();
                        {
                            _t.fatal(stdgo.Go.toInterface(("goroutine did not exit" : stdgo.GoString)));
                        };
                    };
                } else {
                    __select__ = false;
                    {};
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo.internal.Async.tick();
            };
        };
        _c.broadcast();
    }
function testRace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _x:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync.Sync.Mutex() : stdgo.sync.Sync.Mutex)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
        var _done = new stdgo.Chan<Bool>(0, () -> false);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                _x = (1 : stdgo.StdGoTypes.GoInt);
                _c.wait_();
                if (_x != ((2 : stdgo.StdGoTypes.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("want 2" : stdgo.GoString)));
                };
                _x = (3 : stdgo.StdGoTypes.GoInt);
                _c.signal();
                _c.l.unlock();
                _done.__send__(true);
            };
            a();
        });
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                while (true) {
                    if (_x == ((1 : stdgo.StdGoTypes.GoInt))) {
                        _x = (2 : stdgo.StdGoTypes.GoInt);
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
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                while (true) {
                    if (_x == ((2 : stdgo.StdGoTypes.GoInt))) {
                        _c.wait_();
                        if (_x != ((3 : stdgo.StdGoTypes.GoInt))) {
                            _t.error(stdgo.Go.toInterface(("want 3" : stdgo.GoString)));
                        };
                        break;
                    };
                    if (_x == ((3 : stdgo.StdGoTypes.GoInt))) {
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
function testCondSignalStealing(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _iters:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_iters < (1000 : stdgo.StdGoTypes.GoInt), _iters++, {
                var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
                var _cond = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
                var _ch = new stdgo.Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
                stdgo.Go.routine(() -> {
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
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _cond.broadcast();
                    };
                    a();
                });
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _m.lock();
                        while (!_done) {
                            _cond.wait_();
                        };
                        _m.unlock();
                    };
                    a();
                });
                _ch.__get__();
                _m.lock();
                _done = true;
                _m.unlock();
                _cond.broadcast();
            });
        };
    }
function testCondCopy(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.StdGoTypes.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    if ((_err == null) || ((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString) != ("sync.Cond is copied" : stdgo.GoString))) {
                        _t.fatalf(("got %v, expect sync.Cond is copied" : stdgo.GoString), _err);
                    };
                };
                a();
            });
            var _c:stdgo.sync.Sync.Cond = ({ l : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync.Sync.Mutex() : stdgo.sync.Sync.Mutex)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)) } : stdgo.sync.Sync.Cond);
            _c.signal();
            var _c2:Cond = ({} : stdgo.sync.Sync.Cond);
            stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c2) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Cond>)))).elem().set(stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Cond>)))).elem()?.__copy__());
            _c2.signal();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkCond1(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (1 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkCond2(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (2 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkCond4(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (4 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkCond8(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (8 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkCond16(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (16 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkCond32(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkCond(_b, (32 : stdgo.StdGoTypes.GoInt));
    }
function _benchmarkCond(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _waiters:stdgo.StdGoTypes.GoInt):Void {
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync.Sync.Mutex() : stdgo.sync.Sync.Mutex)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Mutex>)));
        var _done = new stdgo.Chan<Bool>(0, () -> false);
        var _id:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            var _routine:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_routine < (_waiters + (1 : stdgo.StdGoTypes.GoInt)), _routine++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < _b.n, _i++, {
                                _c.l.lock();
                                if (_id == ((-1 : stdgo.StdGoTypes.GoInt))) {
                                    _c.l.unlock();
                                    break;
                                };
                                _id++;
                                if (_id == (_waiters + (1 : stdgo.StdGoTypes.GoInt))) {
                                    _id = (0 : stdgo.StdGoTypes.GoInt);
                                    _c.broadcast();
                                } else {
                                    _c.wait_();
                                };
                                _c.l.unlock();
                            });
                        };
                        _c.l.lock();
                        _id = (-1 : stdgo.StdGoTypes.GoInt);
                        _c.broadcast();
                        _c.l.unlock();
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _routine:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_routine < (_waiters + (1 : stdgo.StdGoTypes.GoInt)), _routine++, {
                _done.__get__();
            });
        };
    }
/**
    // timeNow is a fake version of time.Now for tests.
**/
function _timeNow():stdgo.time.Time.Time {
        return stdgo.time.Time.unix((1136214245i64 : stdgo.StdGoTypes.GoInt64), (0i64 : stdgo.StdGoTypes.GoInt64))?.__copy__();
    }
function log(_w:stdgo.io.Io.Writer, _key:stdgo.GoString, _val:stdgo.GoString):Void {
        var _b = (stdgo.Go.typeAssert((_bufPool.get() : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        _b.reset();
        _b.writeString(_timeNow().utc().format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__());
        _b.writeByte((32 : stdgo.StdGoTypes.GoUInt8));
        _b.writeString(_key?.__copy__());
        _b.writeByte((61 : stdgo.StdGoTypes.GoUInt8));
        _b.writeString(_val?.__copy__());
        _w.write(_b.bytes());
        _bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
function examplePool():Void {
        log(stdgo.Go.asInterface(stdgo.os.Os.stdout), ("path" : stdgo.GoString), ("/search?q=flowers" : stdgo.GoString));
    }
/**
    // This example fetches several URLs concurrently,
    // using a WaitGroup to block until all the fetches are complete.
**/
function exampleWaitGroup():Void {
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _urls:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ("http://www.golang.org/" : stdgo.GoString), ("http://www.google.com/" : stdgo.GoString), ("http://www.example.com/" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>);
        for (__4 => _url in _urls) {
            _wg.add((1 : stdgo.StdGoTypes.GoInt));
            stdgo.Go.routine(() -> {
                var a = function(_url:stdgo.GoString):Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> _wg.done());
                        _http.get(_url?.__copy__());
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a(_url?.__copy__());
            });
        };
        _wg.wait_();
    }
function exampleOnce():Void {
        var _once:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
        var _onceBody:() -> Void = function():Void {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Only once" : stdgo.GoString)));
        };
        var _done = new stdgo.Chan<Bool>(0, () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        _once.do_(_onceBody);
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _done.__get__();
            });
        };
    }
function _benchMap(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _bench:T_bench):Void {
        for (__4 => _m in (new stdgo.GoArray<stdgo.sync_test.Sync_test.T_mapInterface>(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync_test.Sync_test.DeepCopyMap() : stdgo.sync_test.Sync_test.DeepCopyMap)) : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync_test.Sync_test.RWMutexMap() : stdgo.sync_test.Sync_test.RWMutexMap)) : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.RWMutexMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Map_>))) : stdgo.GoArray<stdgo.sync_test.Sync_test.T_mapInterface>)) {
            _b.run(stdgo.fmt.Fmt.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_m))?.__copy__(), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
                _m = (stdgo.Go.typeAssert((stdgo.reflect.Reflect.new_(stdgo.reflect.Reflect.typeOf(stdgo.Go.toInterface(_m)).elem()).interface_() : T_mapInterface)) : T_mapInterface);
                if (_bench._setup != null) {
                    _bench._setup(_b, _m);
                };
                _b.resetTimer();
                var _i:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64);
                _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
                    var _id:stdgo.StdGoTypes.GoInt = (stdgo.sync.atomic_.Atomic_.addInt64(stdgo.Go.pointer(_i), (1i64 : stdgo.StdGoTypes.GoInt64)) - (1i64 : stdgo.StdGoTypes.GoInt64) : stdgo.StdGoTypes.GoInt);
                    _bench._perG(_b, _pb, _id * _b.n, _m);
                });
            });
        };
    }
function benchmarkLoadMostlyHits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1023 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2046 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1023 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i % (1024 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadMostlyMisses(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i % (1024 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreBalanced(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (128 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (128 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _j:stdgo.StdGoTypes.GoInt = _i % (256 : stdgo.StdGoTypes.GoInt);
                if (_j < (128 : stdgo.StdGoTypes.GoInt)) {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i)), __4:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _b.fatalf(("unexpected miss for %v" : stdgo.GoString), stdgo.Go.toInterface(_j));
                        };
                    };
                } else {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i)), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                        if (_loaded) {
                            _b.fatalf(("failed to store %v: existing value %v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v);
                        };
                    };
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreUnique(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteBalanced(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (128 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (256 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (128 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _j:stdgo.StdGoTypes.GoInt = _i % (256 : stdgo.StdGoTypes.GoInt);
                if (_j < (128 : stdgo.StdGoTypes.GoInt)) {
                    _m.loadAndDelete(stdgo.Go.toInterface(_j));
                } else {
                    _m.loadAndDelete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteUnique(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadAndDelete(stdgo.Go.toInterface(_i));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt))), __4:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _m.store(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
                    };
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkRange(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1024 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.range(function(__4:stdgo.StdGoTypes.AnyInterface, __5:stdgo.StdGoTypes.AnyInterface):Bool {
                    return true;
                });
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
/**
    // BenchmarkAdversarialAlloc tests performance when we store a new value
    // immediately whenever the map is promoted to clean and otherwise load a
    // unique, missing key.
    //
    // This forces the Load calls to always acquire the map's mutex.
**/
function benchmarkAdversarialAlloc(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            var __0:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), __1:stdgo.StdGoTypes.GoInt64 = (0 : stdgo.StdGoTypes.GoInt64), _loadsSinceStore:stdgo.StdGoTypes.GoInt64 = __1, _stores:stdgo.StdGoTypes.GoInt64 = __0;
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i));
                {
                    _loadsSinceStore++;
                    if (_loadsSinceStore > _stores) {
                        _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_stores));
                        _loadsSinceStore = (0i64 : stdgo.StdGoTypes.GoInt64);
                        _stores++;
                    };
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
/**
    // BenchmarkAdversarialDelete tests performance when we periodically delete
    // one key and add a different one in a large map.
    //
    // This forces the Load calls to always acquire the map's mutex and periodically
    // makes a full copy of the map despite changing only one entry.
**/
function benchmarkAdversarialDelete(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1024 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i));
                if (_i % (1024 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _m.range(function(_k:stdgo.StdGoTypes.AnyInterface, __4:stdgo.StdGoTypes.AnyInterface):Bool {
                        _m.delete(_k);
                        return false;
                    });
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkDeleteCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.delete(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.swap(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapMostlyHits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1023 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2046 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1023 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1023 : stdgo.StdGoTypes.GoInt)) {
                    var _v:stdgo.StdGoTypes.GoInt = _i % (1024 : stdgo.StdGoTypes.GoInt);
                    _m.swap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                } else {
                    _m.swap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapMostlyMisses(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1 : stdgo.StdGoTypes.GoInt)) {
                    var _v:stdgo.StdGoTypes.GoInt = _i % (1024 : stdgo.StdGoTypes.GoInt);
                    _m.swap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                } else {
                    _m.swap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            while (_pb.next()) {
                if (_m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)))) {
                    _m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
                };
            };
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapNoExistingKey(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndSwap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)))) {
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapValueNotEqual(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.store(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoInt)));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapMostlyHits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1023 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2046 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1023 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v:stdgo.StdGoTypes.GoInt = _i;
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1023 : stdgo.StdGoTypes.GoInt)) {
                    _v = _i % (1024 : stdgo.StdGoTypes.GoInt);
                };
                _m.compareAndSwap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapMostlyMisses(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v:stdgo.StdGoTypes.GoInt = _i;
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1 : stdgo.StdGoTypes.GoInt)) {
                    _v = _i % (1024 : stdgo.StdGoTypes.GoInt);
                };
                _m.compareAndSwap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteCollision(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndDelete(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)))) {
                    _m.store(stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteMostlyHits(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.StdGoTypes.Ref<DeepCopyMap>)) : stdgo.StdGoTypes.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1023 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2046 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1023 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v:stdgo.StdGoTypes.GoInt = _i;
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1023 : stdgo.StdGoTypes.GoInt)) {
                    _v = _i % (1024 : stdgo.StdGoTypes.GoInt);
                };
                if (_m.compareAndDelete(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v))) {
                    _m.store(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteMostlyMisses(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (1 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                    _m.load(stdgo.Go.toInterface(_i % (1 : stdgo.StdGoTypes.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>, _i:stdgo.StdGoTypes.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v:stdgo.StdGoTypes.GoInt = _i;
                if ((_i % (1024 : stdgo.StdGoTypes.GoInt)) < (1 : stdgo.StdGoTypes.GoInt)) {
                    _v = _i % (1024 : stdgo.StdGoTypes.GoInt);
                };
                if (_m.compareAndDelete(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v))) {
                    _m.store(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                };
            });
        } } : stdgo.sync_test.Sync_test.T_bench));
    }
function _randValue(_r:stdgo.StdGoTypes.Ref<stdgo.math.rand.Rand.Rand>):stdgo.StdGoTypes.AnyInterface {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((_r.intn((4 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (_i in 0 ... _b.length.toBasic()) {
            _b[(_i : stdgo.StdGoTypes.GoInt)] = (97 : stdgo.StdGoTypes.GoUInt8) + (stdgo.math.rand.Rand.intn((26 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoByte);
        };
        return stdgo.Go.toInterface((_b : stdgo.GoString));
    }
function _applyCalls(_m:T_mapInterface, _calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>; } {
        var _results:stdgo.Slice<T_mapResult> = (null : stdgo.Slice<stdgo.sync_test.Sync_test.T_mapResult>), _final:stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface> = (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
        for (__4 => _c in _calls) {
            var __tmp__ = _c._apply(_m), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            _results = (_results.__append__((new stdgo.sync_test.Sync_test.T_mapResult(_v, _ok) : stdgo.sync_test.Sync_test.T_mapResult)));
        };
        _final = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
        _m.range(function(_k:stdgo.StdGoTypes.AnyInterface, _v:stdgo.StdGoTypes.AnyInterface):Bool {
            _final[_k] = _v;
            return true;
        });
        return { _0 : _results, _1 : _final };
    }
function _applyMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(stdgo.sync.Sync.map_)), _calls);
    }
function _applyRWMutexMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(RWMutexMap_static_extension)), _calls);
    }
function _applyDeepCopyMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(DeepCopyMap_static_extension)), _calls);
    }
function testMapMatchesRWMutex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), stdgo.Go.toInterface(_applyRWMutexMap), null);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
function testMapMatchesDeepCopy(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _err:stdgo.Error = stdgo.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), stdgo.Go.toInterface(_applyDeepCopyMap), null);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
function testConcurrentRange(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _m = _new(stdgo.sync.Sync.map_);
            {
                var _n:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
                stdgo.Go.cfor(_n <= (1024i64 : stdgo.StdGoTypes.GoInt64), _n++, {
                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_n : stdgo.StdGoTypes.GoInt64)));
                });
            };
            var _done = new stdgo.Chan<T_httpPkg>(0, () -> ({} : T_httpPkg));
            var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_done != null) _done.__close__();
                    _wg.wait_();
                };
                a();
            });
            {
                var _g:stdgo.StdGoTypes.GoInt64 = (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt64);
                stdgo.Go.cfor(_g > (0i64 : stdgo.StdGoTypes.GoInt64), _g--, {
                    var _r = stdgo.math.rand.Rand.new_(stdgo.math.rand.Rand.newSource(_g));
                    _wg.add((1 : stdgo.StdGoTypes.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_g:stdgo.StdGoTypes.GoInt64):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                {
                                    var _i:stdgo.StdGoTypes.GoInt64 = (0i64 : stdgo.StdGoTypes.GoInt64);
                                    stdgo.Go.cfor(true, _i++, {
                                        {
                                            var __select__ = true;
                                            while (__select__) {
                                                if (_done != null && _done.__isGet__()) {
                                                    __select__ = false;
                                                    {
                                                        _done.__get__();
                                                        {
                                                            {
                                                                for (defer in __deferstack__) {
                                                                    defer();
                                                                };
                                                                return;
                                                            };
                                                        };
                                                    };
                                                } else {
                                                    __select__ = false;
                                                    {};
                                                };
                                                #if !js Sys.sleep(0.01) #else null #end;
                                                stdgo.internal.Async.tick();
                                            };
                                        };
                                        {
                                            var _n:stdgo.StdGoTypes.GoInt64 = (1i64 : stdgo.StdGoTypes.GoInt64);
                                            stdgo.Go.cfor(_n < (1024i64 : stdgo.StdGoTypes.GoInt64), _n++, {
                                                if (_r.int63n((1024i64 : stdgo.StdGoTypes.GoInt64)) == ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                                                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_n * _i) * _g));
                                                } else {
                                                    _m.load(stdgo.Go.toInterface(_n));
                                                };
                                            });
                                        };
                                    });
                                };
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            } catch(__exception__) {
                                var exe:Dynamic = __exception__.native;
                                if ((exe is haxe.ValueException)) exe = exe.value;
                                if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                    exe = stdgo.Go.toInterface(__exception__.message);
                                };
                                stdgo.Go.recover_exception = exe;
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        };
                        a(_g);
                    });
                });
            };
            var _iters:stdgo.StdGoTypes.GoInt = (1024 : stdgo.StdGoTypes.GoInt);
            if (stdgo.testing.Testing.short()) {
                _iters = (16 : stdgo.StdGoTypes.GoInt);
            };
            {
                var _n:stdgo.StdGoTypes.GoInt = _iters;
                stdgo.Go.cfor(_n > (0 : stdgo.StdGoTypes.GoInt), _n--, {
                    var _seen = ({
                        final x = new stdgo.GoMap.GoInt64Map<Bool>();
                        x.__defaultValue__ = () -> false;
                        @:mergeBlock {};
                        x;
                    } : stdgo.GoMap<stdgo.StdGoTypes.GoInt64, Bool>);
                    _m.range(function(_ki:stdgo.StdGoTypes.AnyInterface, _vi:stdgo.StdGoTypes.AnyInterface):Bool {
                        var __0:stdgo.StdGoTypes.GoInt64 = (stdgo.Go.typeAssert((_ki : stdgo.StdGoTypes.GoInt64)) : stdgo.StdGoTypes.GoInt64), __1:stdgo.StdGoTypes.GoInt64 = (stdgo.Go.typeAssert((_vi : stdgo.StdGoTypes.GoInt64)) : stdgo.StdGoTypes.GoInt64), _v:stdgo.StdGoTypes.GoInt64 = __1, _k:stdgo.StdGoTypes.GoInt64 = __0;
                        if (_v % _k != ((0i64 : stdgo.StdGoTypes.GoInt64))) {
                            _t.fatalf(("while Storing multiples of %v, Range saw value %v" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                        };
                        if ((_seen[_k] ?? false)) {
                            _t.fatalf(("Range visited key %v twice" : stdgo.GoString), stdgo.Go.toInterface(_k));
                        };
                        _seen[_k] = true;
                        return true;
                    });
                    if ((_seen.length) != ((1024 : stdgo.StdGoTypes.GoInt))) {
                        _t.fatalf(("Range visited %v elements of %v-element Map" : stdgo.GoString), stdgo.Go.toInterface((_seen.length)), stdgo.Go.toInterface((1024 : stdgo.StdGoTypes.GoInt)));
                    };
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testIssue40999(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m:stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
        _m.store((null : stdgo.StdGoTypes.AnyInterface), stdgo.Go.toInterface((new T_httpPkg() : T_httpPkg)));
        var _finalized:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32);
        while (stdgo.sync.atomic_.Atomic_.loadUint32(stdgo.Go.pointer(_finalized)) == ((0u32 : stdgo.StdGoTypes.GoUInt32))) {
            var _p = _new(_int);
            stdgo.runtime.Runtime.setFinalizer(stdgo.Go.toInterface(_p), stdgo.Go.toInterface(function(_0:stdgo.Pointer<stdgo.StdGoTypes.GoInt>):Void {
                stdgo.sync.atomic_.Atomic_.addUint32(stdgo.Go.pointer(_finalized), (1u32 : stdgo.StdGoTypes.GoUInt32));
            }));
            _m.store(stdgo.Go.toInterface(_p), stdgo.Go.toInterface((new T_httpPkg() : T_httpPkg)));
            _m.delete(stdgo.Go.toInterface(_p));
            stdgo.runtime.Runtime.gc();
        };
    }
function testMapRangeNestedCall(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m:stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
        for (_i => _v in (new stdgo.GoArray<stdgo.GoString>(("hello" : stdgo.GoString), ("world" : stdgo.GoString), ("Go" : stdgo.GoString)) : stdgo.GoArray<stdgo.GoString>)) {
            _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v));
        };
        _m.range(function(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Bool {
            _m.range(function(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Bool {
                {
                    var __tmp__ = _m.load(_key), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if (!_ok || !stdgo.reflect.Reflect.deepEqual(_v, _value)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %+v want %+v" : stdgo.GoString), _v, _value);
                    };
                };
                {
                    var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(("dummy" : stdgo.GoString))), __32:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _t.fatalf(("Nested Range loads unexpected value, want store a new value" : stdgo.GoString));
                    };
                };
                var _val:stdgo.GoString = ("sync.Map" : stdgo.GoString);
                _m.store(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_val));
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt))), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (!_loaded || !stdgo.reflect.Reflect.deepEqual(_v, stdgo.Go.toInterface(_val))) {
                        _t.fatalf(("Nested Range loads unexpected value, got %v, want %v" : stdgo.GoString), _v, stdgo.Go.toInterface(_val));
                    };
                };
                return true;
            });
            _m.delete(_key);
            return true;
        });
        var _length:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        _m.range(function(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Bool {
            _length++;
            return true;
        });
        if (_length != ((0 : stdgo.StdGoTypes.GoInt))) {
            _t.fatalf(("Unexpected sync.Map size, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_length), stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt)));
        };
    }
function testCompareAndSwap_NonExistingKey(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _m = (stdgo.Go.setRef((new stdgo.sync.Sync.Map_() : stdgo.sync.Sync.Map_)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.Map_>);
        if (_m.compareAndSwap(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), (null : stdgo.StdGoTypes.AnyInterface), stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)))) {
            _t.fatalf(("CompareAndSwap on an non-existing key succeeded" : stdgo.GoString));
        };
    }
function hammerSemaphore(_s:stdgo.Pointer<stdgo.StdGoTypes.GoUInt32>, _loops:stdgo.StdGoTypes.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _loops, _i++, {
                runtime_Semacquire(_s);
                runtime_Semrelease(_s, false, (0 : stdgo.StdGoTypes.GoInt));
            });
        };
        _cdone.__send__(true);
    }
function testSemaphore(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _s = _new(_uint32);
        _s.value = (1u32 : stdgo.StdGoTypes.GoUInt32);
        var _c = new stdgo.Chan<Bool>(0, () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> hammerSemaphore(_s, (1000 : stdgo.StdGoTypes.GoInt), _c));
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _c.__get__();
            });
        };
    }
function benchmarkUncontendedSemaphore(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _s = _new(_uint32);
        _s.value = (1u32 : stdgo.StdGoTypes.GoUInt32);
        hammerSemaphore(_s, _b.n, new stdgo.Chan<Bool>((2 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false));
    }
function benchmarkContendedSemaphore(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b.stopTimer();
            var _s = _new(_uint32);
            _s.value = (1u32 : stdgo.StdGoTypes.GoUInt32);
            var _c = new stdgo.Chan<Bool>(0, () -> false);
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((2 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            _b.startTimer();
            stdgo.Go.routine(() -> hammerSemaphore(_s, _b.n / (2 : stdgo.StdGoTypes.GoInt), _c));
            stdgo.Go.routine(() -> hammerSemaphore(_s, _b.n / (2 : stdgo.StdGoTypes.GoInt), _c));
            _c.__get__();
            _c.__get__();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function hammerMutex(_m:stdgo.StdGoTypes.Ref<Mutex>, _loops:stdgo.StdGoTypes.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _loops, _i++, {
                if (_i % (3 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
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
function testMutex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _n:stdgo.StdGoTypes.GoInt = stdgo.runtime.Runtime.setMutexProfileFraction((1 : stdgo.StdGoTypes.GoInt));
                if (_n != ((0 : stdgo.StdGoTypes.GoInt))) {
                    _t.logf(("got mutexrate %d expected 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
            {
                var _a0 = (0 : stdgo.StdGoTypes.GoInt);
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.setMutexProfileFraction(_a0));
            };
            var _m = _new(mutex);
            _m.lock();
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex locked" : stdgo.GoString));
            };
            _m.unlock();
            if (!_m.tryLock()) {
                _t.fatalf(("TryLock failed with mutex unlocked" : stdgo.GoString));
            };
            _m.unlock();
            var _c = new stdgo.Chan<Bool>(0, () -> false);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                    stdgo.Go.routine(() -> hammerMutex(_m, (1000 : stdgo.StdGoTypes.GoInt), _c));
                });
            };
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                    _c.__get__();
                });
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testMutexMisuse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        stdgo.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        for (__4 => _test in _misuseTests) {
            var __tmp__ = stdgo.os.exec.Exec.command(stdgo.os.Os.args[(0 : stdgo.StdGoTypes.GoInt)]?.__copy__(), ("TESTMISUSE" : stdgo.GoString), _test._name?.__copy__()).combinedOutput(), _out:stdgo.Slice<stdgo.StdGoTypes.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if ((_err == null) || !stdgo.strings.Strings.contains((_out : stdgo.GoString)?.__copy__(), ("unlocked" : stdgo.GoString))) {
                _t.errorf(("%s: did not find failure with message about unlocked lock: %s\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
    }
function testMutexFairness(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
            var _stop = new stdgo.Chan<Bool>(0, () -> false);
            {
                var _a0 = _stop;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    while (true) {
                        _mu.lock();
                        stdgo.time.Time.sleep((100000i64 : stdgo.time.Time.Duration));
                        _mu.unlock();
                        {
                            var __select__ = true;
                            while (__select__) {
                                if (_stop != null && _stop.__isGet__()) {
                                    __select__ = false;
                                    {
                                        _stop.__get__();
                                        {
                                            return;
                                        };
                                    };
                                } else {
                                    __select__ = false;
                                    {};
                                };
                                #if !js Sys.sleep(0.01) #else null #end;
                                stdgo.internal.Async.tick();
                            };
                        };
                    };
                };
                a();
            });
            var _done = new stdgo.Chan<Bool>((1 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                            stdgo.time.Time.sleep((100000i64 : stdgo.time.Time.Duration));
                            _mu.lock();
                            _mu.unlock();
                        });
                    };
                    _done.__send__(true);
                };
                a();
            });
            {
                var __select__ = true;
                while (__select__) {
                    if (_done != null && _done.__isGet__()) {
                        __select__ = false;
                        {
                            _done.__get__();
                            {};
                        };
                    } else if (stdgo.time.Time.after((10000000000i64 : stdgo.time.Time.Duration)) != null && stdgo.time.Time.after((10000000000i64 : stdgo.time.Time.Duration)).__isGet__()) {
                        __select__ = false;
                        {
                            stdgo.time.Time.after((10000000000i64 : stdgo.time.Time.Duration)).__get__();
                            {
                                _t.fatalf(("can\'t acquire Mutex in 10 seconds" : stdgo.GoString));
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo.internal.Async.tick();
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_29___localname___PaddedMutex_static_extension) class T_benchmarkMutexUncontended_29___localname___PaddedMutex {
    @:embedded
    public var mutex : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
    public var _pad : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?mutex:stdgo.sync.Sync.Mutex, ?_pad:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (mutex != null) this.mutex = mutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() mutex.lock();
    @:embedded
    public function tryLock():Bool return mutex.tryLock();
    @:embedded
    public function unlock() mutex.unlock();
    @:embedded
    public function _lockSlow() mutex._lockSlow();
    @:embedded
    public function _unlockSlow(__0:stdgo.StdGoTypes.GoInt32) mutex._unlockSlow(__0);
    public function __copy__() {
        return new T_benchmarkMutexUncontended_29___localname___PaddedMutex(mutex, _pad);
    }
}
function benchmarkMutexUncontended(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _mu:T_benchmarkMutexUncontended_29___localname___PaddedMutex = ({} : stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_29___localname___PaddedMutex);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
            };
        });
    }
function _benchmarkMutex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _slack:Bool, _work:Bool):Void {
        var _mu:Mutex = ({} : stdgo.sync.Sync.Mutex);
        if (_slack) {
            _b.setParallelism((10 : stdgo.StdGoTypes.GoInt));
        };
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _foo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
                if (_work) {
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                            _foo = _foo * ((2 : stdgo.StdGoTypes.GoInt));
                            _foo = _foo / ((2 : stdgo.StdGoTypes.GoInt));
                        });
                    };
                };
            };
            _foo;
        });
    }
function benchmarkMutex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkMutex(_b, false, false);
    }
function benchmarkMutexSlack(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkMutex(_b, true, false);
    }
function benchmarkMutexWork(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkMutex(_b, false, true);
    }
function benchmarkMutexWorkSlack(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkMutex(_b, true, true);
    }
function benchmarkMutexNoSpin(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var __0:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), __1:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), _acc1:stdgo.StdGoTypes.GoUInt64 = __1, _acc0:stdgo.StdGoTypes.GoUInt64 = __0;
        _b.setParallelism((4 : stdgo.StdGoTypes.GoInt));
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _c = new stdgo.Chan<Bool>(0, () -> false);
            var _data:stdgo.GoArray<stdgo.StdGoTypes.GoUInt64> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...[for (i in 0 ... 4096) (0 : stdgo.StdGoTypes.GoUInt64)]);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_pb.next(), _i++, {
                    if (_i % (4 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                        _m.lock();
                        _acc0 = _acc0 - ((100i64 : stdgo.StdGoTypes.GoUInt64));
                        _acc1 = _acc1 + ((100i64 : stdgo.StdGoTypes.GoUInt64));
                        _m.unlock();
                    } else {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < (_data.length), _i = _i + ((4 : stdgo.StdGoTypes.GoInt)), {
                                _data[(_i : stdgo.StdGoTypes.GoInt)]++;
                            });
                        };
                        stdgo.Go.routine(() -> {
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
function benchmarkMutexSpin(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _m:Mutex = ({} : stdgo.sync.Sync.Mutex);
        var __0:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), __1:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64), _acc1:stdgo.StdGoTypes.GoUInt64 = __1, _acc0:stdgo.StdGoTypes.GoUInt64 = __0;
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _data:stdgo.GoArray<stdgo.StdGoTypes.GoUInt64> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt64>(...[for (i in 0 ... 16384) (0 : stdgo.StdGoTypes.GoUInt64)]);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_pb.next(), _i++, {
                    _m.lock();
                    _acc0 = _acc0 - ((100i64 : stdgo.StdGoTypes.GoUInt64));
                    _acc1 = _acc1 + ((100i64 : stdgo.StdGoTypes.GoUInt64));
                    _m.unlock();
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (_data.length), _i = _i + ((4 : stdgo.StdGoTypes.GoInt)), {
                            _data[(_i : stdgo.StdGoTypes.GoInt)]++;
                        });
                    };
                });
            };
        });
    }
function _run(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _once:stdgo.StdGoTypes.Ref<Once>, _o:stdgo.Pointer<T_one>, _c:stdgo.Chan<Bool>):Void {
        _once.do_(function():Void {
            _o.value.increment(_o);
        });
        {
            var _v:stdgo.sync_test.Sync_test.T_one = _o.value;
            if (_v != ((1 : stdgo.sync_test.Sync_test.T_one))) {
                _t.errorf(("once failed inside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
            };
        };
        _c.__send__(true);
    }
function testOnce(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _o = _new(_one);
        var _once = _new(once);
        var _c = new stdgo.Chan<Bool>(0, () -> false);
        {};
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> _run(_t, _once, _o, _c));
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _c.__get__();
            });
        };
        if (_o.value != ((1 : stdgo.sync_test.Sync_test.T_one))) {
            _t.errorf(("once failed outside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_o.value)));
        };
    }
function testOncePanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _once:Once = ({} : stdgo.sync.Sync.Once);
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _r:stdgo.StdGoTypes.AnyInterface = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                                if (_r == null) {
                                    _t.fatalf(("Once.Do did not panic" : stdgo.GoString));
                                };
                            };
                        };
                        a();
                    });
                    _once.do_(function():Void {
                        throw stdgo.Go.toInterface(("failed" : stdgo.GoString));
                    });
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return;
                };
            };
            a();
        };
        _once.do_(function():Void {
            _t.fatalf(("Once.Do called twice" : stdgo.GoString));
        });
    }
function benchmarkOnce(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _once:Once = ({} : stdgo.sync.Sync.Once);
        var _f:() -> Void = function():Void {};
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _once.do_(_f);
            };
        });
    }
function testOnceFunc(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> Void = stdgo.sync.Sync.onceFunc(function():Void {
            _calls++;
        });
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : stdgo.StdGoTypes.GoInt), _f);
        if (_calls != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testOnceValue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> stdgo.StdGoTypes.GoInt = stdgo.sync.Sync.onceValue((0 : stdgo.StdGoTypes.GoInt), function():stdgo.StdGoTypes.GoInt {
            _calls++;
            return _calls;
        });
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : stdgo.StdGoTypes.GoInt), function():Void {
            _f();
        });
        var _value:stdgo.StdGoTypes.GoInt = _f();
        if (_calls != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_value != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want value==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_value));
        };
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testOnceValues(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } = stdgo.sync.Sync.onceValues((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), function():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } {
            _calls++;
            return { _0 : _calls, _1 : _calls + (1 : stdgo.StdGoTypes.GoInt) };
        });
        var _allocs:stdgo.StdGoTypes.GoFloat64 = stdgo.testing.Testing.allocsPerRun((10 : stdgo.StdGoTypes.GoInt), function():Void {
            _f();
        });
        var __tmp__ = _f(), _v1:stdgo.StdGoTypes.GoInt = __tmp__._0, _v2:stdgo.StdGoTypes.GoInt = __tmp__._1;
        if (_calls != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if ((_v1 != (1 : stdgo.StdGoTypes.GoInt)) || (_v2 != (2 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want v1==1 and v2==2, got %d and %d" : stdgo.GoString), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
        };
        if (_allocs != (0 : stdgo.StdGoTypes.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function _testOncePanicX(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _calls:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, _f:() -> Void):Void {
        _testOncePanicWith(_t, _calls, _f, function(_label:stdgo.GoString, _p:stdgo.StdGoTypes.AnyInterface):Void {
            if (_p != (stdgo.Go.toInterface(("x" : stdgo.GoString)))) {
                _t.fatalf(("%s: want panic %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), stdgo.Go.toInterface(("x" : stdgo.GoString)), _p);
            };
        });
    }
function _testOncePanicWith(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _calls:stdgo.Pointer<stdgo.StdGoTypes.GoInt>, _f:() -> Void, _check:(_label:stdgo.GoString, _p:stdgo.StdGoTypes.AnyInterface) -> Void):Void {
        for (__4 => _label in (new stdgo.Slice<stdgo.GoString>(2, 2, ("first time" : stdgo.GoString), ("second time" : stdgo.GoString)) : stdgo.Slice<stdgo.GoString>)) {
            var _p:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface);
            var _panicked:Bool = true;
            {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        __deferstack__.unshift(() -> {
                            var a = function():Void {
                                _p = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                });
                            };
                            a();
                        });
                        _f();
                        _panicked = false;
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            };
            if (!_panicked) {
                _t.fatalf(("%s: f did not panic" : stdgo.GoString), stdgo.Go.toInterface(_label));
            };
            _check(_label?.__copy__(), _p);
        };
        if (_calls.value != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls.value));
        };
    }
function testOnceFuncPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> Void = stdgo.sync.Sync.onceFunc(function():Void {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        });
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), _f);
    }
function testOnceValuePanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> stdgo.StdGoTypes.GoInt = stdgo.sync.Sync.onceValue((0 : stdgo.StdGoTypes.GoInt), function():stdgo.StdGoTypes.GoInt {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        });
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
function testOnceValuesPanic(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> { var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } = stdgo.sync.Sync.onceValues((0 : stdgo.StdGoTypes.GoInt), (0 : stdgo.StdGoTypes.GoInt), function():{ var _0 : stdgo.StdGoTypes.GoInt; var _1 : stdgo.StdGoTypes.GoInt; } {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        });
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
function testOnceFuncPanicNil(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> Void = stdgo.sync.Sync.onceFunc(function():Void {
            _calls++;
            throw (null : stdgo.StdGoTypes.AnyInterface);
        });
        _testOncePanicWith(_t, stdgo.Go.pointer(_calls), _f, function(_label:stdgo.GoString, _p:stdgo.StdGoTypes.AnyInterface):Void {
            {
                final __type__ = _p;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.StdGoTypes.Ref<stdgo.runtime.Runtime.PanicNilError>))) {
                    return;
                };
            };
            _t.fatalf(("%s: want nil panic, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), _p);
        });
    }
function testOnceFuncGoexit(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _calls:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        var _f:() -> Void = stdgo.sync.Sync.onceFunc(function():Void {
            _calls++;
            stdgo.runtime.Runtime.goexit();
        });
        var _wg:stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (2 : stdgo.StdGoTypes.GoInt), _i++, {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var __deferstack__:Array<Void -> Void> = [];
                        try {
                            __deferstack__.unshift(() -> _wg.done());
                            __deferstack__.unshift(() -> {
                                var a = function():Void {
                                    ({
                                        final r = stdgo.Go.recover_exception;
                                        stdgo.Go.recover_exception = null;
                                        r;
                                    });
                                };
                                a();
                            });
                            _f();
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                return;
                            };
                        } catch(__exception__) {
                            var exe:Dynamic = __exception__.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    };
                    a();
                });
                _wg.wait_();
            });
        };
        if (_calls != ((1 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
    }
function testOnceFuncPanicTraceback(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _f:() -> Void = stdgo.sync.Sync.onceFunc(_onceFuncPanic);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _p:stdgo.StdGoTypes.AnyInterface = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        });
                        if (_p != (stdgo.Go.toInterface(("x" : stdgo.GoString)))) {
                            _t.fatalf(("want panic %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(("x" : stdgo.GoString)), _p);
                        };
                    };
                    var _stack = stdgo.runtime.debug.Debug.stack();
                    var _want:stdgo.GoString = ("sync_test.onceFuncPanic" : stdgo.GoString);
                    if (!stdgo.bytes.Bytes.contains(_stack, (_want : stdgo.Slice<stdgo.StdGoTypes.GoByte>))) {
                        _t.fatalf(("want stack containing %v, got:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface((_stack : stdgo.GoString)));
                    };
                };
                a();
            });
            _f();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _onceFuncPanic():Void {
        throw stdgo.Go.toInterface(("x" : stdgo.GoString));
    }
function _doOnceFunc():Void {
        _onceFuncOnce.do_(function():Void {});
    }
function benchmarkOnceFunc(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    _doOnceFunc();
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    _onceFunc();
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            var _f:() -> Void = stdgo.sync.Sync.onceFunc(function():Void {});
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    _f();
                });
            };
        });
    }
function _doOnceValue():stdgo.StdGoTypes.GoInt {
        _onceValueOnce.do_(function():Void {
            _onceValueValue = (42 : stdgo.StdGoTypes.GoInt);
        });
        return _onceValueValue;
    }
function benchmarkOnceValue(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __0:stdgo.StdGoTypes.GoInt = (42 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _doOnceValue(), _got:stdgo.StdGoTypes.GoInt = __1, _want:stdgo.StdGoTypes.GoInt = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __0:stdgo.StdGoTypes.GoInt = (42 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _onceValue(), _got:stdgo.StdGoTypes.GoInt = __1, _want:stdgo.StdGoTypes.GoInt = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
            _b.reportAllocs();
            var _onceValue:() -> stdgo.StdGoTypes.GoInt = stdgo.sync.Sync.onceValue((0 : stdgo.StdGoTypes.GoInt), function():stdgo.StdGoTypes.GoInt {
                return (42 : stdgo.StdGoTypes.GoInt);
            });
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {
                        var __0:stdgo.StdGoTypes.GoInt = (42 : stdgo.StdGoTypes.GoInt), __1:stdgo.StdGoTypes.GoInt = _onceValue(), _got:stdgo.StdGoTypes.GoInt = __1, _want:stdgo.StdGoTypes.GoInt = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
    }
function testPool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            if (_p.get() != null) {
                _t.fatal(stdgo.Go.toInterface(("expected empty" : stdgo.GoString)));
            };
            runtime_procPin();
            _p.put(stdgo.Go.toInterface(("a" : stdgo.GoString)));
            _p.put(stdgo.Go.toInterface(("b" : stdgo.GoString)));
            {
                var _g:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_g != (stdgo.Go.toInterface(("a" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want a" : stdgo.GoString), _g);
                };
            };
            {
                var _g:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_g != (stdgo.Go.toInterface(("b" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want b" : stdgo.GoString), _g);
                };
            };
            {
                var _g:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil" : stdgo.GoString), _g);
                };
            };
            runtime_procUnpin();
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                    _p.put(stdgo.Go.toInterface(("c" : stdgo.GoString)));
                });
            };
            stdgo.runtime.Runtime.gc();
            {
                var _g:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_g != (stdgo.Go.toInterface(("c" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want c after GC" : stdgo.GoString), _g);
                };
            };
            stdgo.runtime.Runtime.gc();
            {
                var _g:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil after second GC" : stdgo.GoString), _g);
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testPoolNew(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            var _p:stdgo.sync.Sync.Pool = ({ new_ : function():stdgo.StdGoTypes.AnyInterface {
                _i++;
                return stdgo.Go.toInterface(_i);
            } } : stdgo.sync.Sync.Pool);
            {
                var _v:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_v != (stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)))) {
                    _t.fatalf(("got %v; want 1" : stdgo.GoString), _v);
                };
            };
            {
                var _v:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_v != (stdgo.Go.toInterface((2 : stdgo.StdGoTypes.GoInt)))) {
                    _t.fatalf(("got %v; want 2" : stdgo.GoString), _v);
                };
            };
            runtime_procPin();
            _p.put(stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)));
            {
                var _v:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_v != (stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt)))) {
                    _t.fatalf(("got %v; want 42" : stdgo.GoString), _v);
                };
            };
            runtime_procUnpin();
            {
                var _v:stdgo.StdGoTypes.AnyInterface = _p.get();
                if (_v != (stdgo.Go.toInterface((3 : stdgo.StdGoTypes.GoInt)))) {
                    _t.fatalf(("got %v; want 3" : stdgo.GoString), _v);
                };
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    // Test that Pool does not hold pointers to previously cached resources.
**/
function testPoolGC(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testPool(_t, true);
    }
/**
    // Test that Pool releases resources on GC.
**/
function testPoolRelease(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testPool(_t, false);
    }
function _testPool(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _drain:Bool):Void {
        stdgo.internal.Macro.controlFlow({
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            {};
            @:label("loop") {
                var _try:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_try < (3 : stdgo.StdGoTypes.GoInt), _try++, {
                    if ((_try == (1 : stdgo.StdGoTypes.GoInt)) && stdgo.testing.Testing.short()) {
                        break;
                    };
                    var __0:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), __1:stdgo.StdGoTypes.GoUInt32 = (0 : stdgo.StdGoTypes.GoUInt32), _fin1:stdgo.StdGoTypes.GoUInt32 = __1, _fin:stdgo.StdGoTypes.GoUInt32 = __0;
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                            var _v = _new(_string);
                            stdgo.runtime.Runtime.setFinalizer(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(function(_vv:stdgo.Pointer<stdgo.GoString>):Void {
                                stdgo.sync.atomic_.Atomic_.addUint32(stdgo.Go.pointer(_fin), (1u32 : stdgo.StdGoTypes.GoUInt32));
                            }));
                            _p.put(stdgo.Go.toInterface(_v));
                        });
                    };
                    if (_drain) {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                                _p.get();
                            });
                        };
                    };
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (5 : stdgo.StdGoTypes.GoInt), _i++, {
                            stdgo.runtime.Runtime.gc();
                            stdgo.time.Time.sleep(((_i * (100 : stdgo.StdGoTypes.GoInt)) + (10 : stdgo.StdGoTypes.GoInt) : stdgo.time.Time.Duration) * (1000000i64 : stdgo.time.Time.Duration));
                            {
                                _fin1 = stdgo.sync.atomic_.Atomic_.loadUint32(stdgo.Go.pointer(_fin));
                                if (_fin1 >= (99u32 : stdgo.StdGoTypes.GoUInt32)) {
                                    @:jump("loop") continue;
                                };
                            };
                        });
                    };
                    _t.fatalf(("only %v out of %v resources are finalized on try %v" : stdgo.GoString), stdgo.Go.toInterface(_fin1), stdgo.Go.toInterface((100 : stdgo.StdGoTypes.GoInt)), stdgo.Go.toInterface(_try));
                });
            };
        });
    }
function testPoolStress(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var n:stdgo.StdGoTypes.GoInt = (1000000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            n = n / ((100 : stdgo.StdGoTypes.GoInt));
        };
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        var _done = new stdgo.Chan<Bool>(0, () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _v:stdgo.StdGoTypes.AnyInterface = stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt));
                        {
                            var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_j < n, _j++, {
                                if (_v == null) {
                                    _v = stdgo.Go.toInterface((0 : stdgo.StdGoTypes.GoInt));
                                };
                                _p.put(_v);
                                _v = _p.get();
                                if ((_v != null) && ((stdgo.Go.typeAssert((_v : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt) != (0 : stdgo.StdGoTypes.GoInt))) {
                                    _t.errorf(("expect 0, got %v" : stdgo.GoString), _v);
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
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _done.__get__();
            });
        };
    }
function testPoolDequeue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testPoolDequeue(_t, newPoolDequeue((16 : stdgo.StdGoTypes.GoInt)));
    }
function testPoolChain(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        _testPoolDequeue(_t, newPoolChain());
    }
function _testPoolDequeue(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _d:PoolDequeue):Void {
        {};
        var n:stdgo.StdGoTypes.GoInt = (2000000 : stdgo.StdGoTypes.GoInt);
        if (stdgo.testing.Testing.short()) {
            n = (1000 : stdgo.StdGoTypes.GoInt);
        };
        var _have = new stdgo.Slice<stdgo.StdGoTypes.GoInt32>((n : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        var _stop:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        var _record:stdgo.StdGoTypes.GoInt -> Void = function(_val:stdgo.StdGoTypes.GoInt):Void {
            stdgo.sync.atomic_.Atomic_.addInt32(stdgo.Go.pointer(_have[(_val : stdgo.StdGoTypes.GoInt)]), (1 : stdgo.StdGoTypes.GoInt32));
            if (_val == (n - (1 : stdgo.StdGoTypes.GoInt))) {
                stdgo.sync.atomic_.Atomic_.storeInt32(stdgo.Go.pointer(_stop), (1 : stdgo.StdGoTypes.GoInt32));
            };
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (1 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (10 : stdgo.StdGoTypes.GoInt), _i++, {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _fail:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        while (stdgo.sync.atomic_.Atomic_.loadInt32(stdgo.Go.pointer(_stop)) == ((0 : stdgo.StdGoTypes.GoInt32))) {
                            var __tmp__ = _d.popTail(), _val:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _fail = (0 : stdgo.StdGoTypes.GoInt);
                                _record((stdgo.Go.typeAssert((_val : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt));
                            } else {
                                {
                                    _fail++;
                                    if (_fail % (100 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
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
        var _nPopHead:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        _wg.add((1 : stdgo.StdGoTypes.GoInt));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _j:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_j < n, _j++, {
                        while (!_d.pushHead(stdgo.Go.toInterface(_j))) {
                            stdgo.runtime.Runtime.gosched();
                        };
                        if (_j % (10 : stdgo.StdGoTypes.GoInt) == ((0 : stdgo.StdGoTypes.GoInt))) {
                            var __tmp__ = _d.popHead(), _val:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _nPopHead++;
                                _record((stdgo.Go.typeAssert((_val : stdgo.StdGoTypes.GoInt)) : stdgo.StdGoTypes.GoInt));
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
            if (_count != ((1 : stdgo.StdGoTypes.GoInt32))) {
                _t.errorf(("expected have[%d] = 1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_count));
            };
        };
        if (!stdgo.testing.Testing.short() && (_nPopHead == (0 : stdgo.StdGoTypes.GoInt))) {
            _t.errorf(("popHead never succeeded" : stdgo.GoString));
        };
    }
function benchmarkPool(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _p.put(stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)));
                _p.get();
            };
        });
    }
function benchmarkPoolOverflow(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_b < (100 : stdgo.StdGoTypes.GoInt), _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)));
                    });
                };
                {
                    var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_b < (100 : stdgo.StdGoTypes.GoInt), _b++, {
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
function benchmarkPoolStarvation(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo.sync.Sync.Pool);
        var _count:stdgo.StdGoTypes.GoInt = (100 : stdgo.StdGoTypes.GoInt);
        var _countStarved:stdgo.StdGoTypes.GoInt = _count - ((_count : stdgo.StdGoTypes.GoFloat32) * (0.33000001311302185 : stdgo.StdGoTypes.GoFloat64) : stdgo.StdGoTypes.GoInt);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_b < _countStarved, _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.StdGoTypes.GoInt)));
                    });
                };
                {
                    var _b:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_b < _count, _b++, {
                        _p.get();
                    });
                };
            };
        });
    }
function benchmarkPoolSTW(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.debug.Debug.setGCPercent((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _mstats:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats);
            var _pauses:stdgo.Slice<stdgo.StdGoTypes.GoUInt64> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>);
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            {
                var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                stdgo.Go.cfor(_i < _b.n, _i++, {
                    {};
                    var _item:stdgo.StdGoTypes.AnyInterface = stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt));
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i < (100000 : stdgo.StdGoTypes.GoInt), _i++, {
                            _p.put(_item);
                        });
                    };
                    stdgo.runtime.Runtime.gc();
                    stdgo.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats) : stdgo.StdGoTypes.Ref<stdgo.runtime.Runtime.MemStats>));
                    _pauses = (_pauses.__append__(_mstats.pauseNs[((_mstats.numGC + (255u32 : stdgo.StdGoTypes.GoUInt32)) % (256u32 : stdgo.StdGoTypes.GoUInt32) : stdgo.StdGoTypes.GoInt)]));
                });
            };
            stdgo.sort.Sort.slice(stdgo.Go.toInterface(_pauses), function(_i:stdgo.StdGoTypes.GoInt, _j:stdgo.StdGoTypes.GoInt):Bool {
                return _pauses[(_i : stdgo.StdGoTypes.GoInt)] < _pauses[(_j : stdgo.StdGoTypes.GoInt)];
            });
            var _total:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
            for (__12 => _ns in _pauses) {
                _total = _total + (_ns);
            };
            _b.reportMetric((_total : stdgo.StdGoTypes.GoFloat64) / (_b.n : stdgo.StdGoTypes.GoFloat64), ("ns/op" : stdgo.GoString));
            _b.reportMetric((_pauses[((_pauses.length * (95 : stdgo.StdGoTypes.GoInt)) / (100 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoFloat64), ("p95-ns/STW" : stdgo.GoString));
            _b.reportMetric((_pauses[((_pauses.length * (50 : stdgo.StdGoTypes.GoInt)) / (100 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)] : stdgo.StdGoTypes.GoFloat64), ("p50-ns/STW" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkPoolExpensiveNew(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _globalSink = stdgo.Go.toInterface(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((8388608 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__());
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _globalSink = (null : stdgo.StdGoTypes.AnyInterface);
                };
                a();
            });
            var _p:Pool = ({} : stdgo.sync.Sync.Pool);
            var _nNew:stdgo.StdGoTypes.GoUInt64 = (0 : stdgo.StdGoTypes.GoUInt64);
            _p.new_ = function():stdgo.StdGoTypes.AnyInterface {
                stdgo.sync.atomic_.Atomic_.addUint64(stdgo.Go.pointer(_nNew), (1i64 : stdgo.StdGoTypes.GoUInt64));
                stdgo.time.Time.sleep((1000000i64 : stdgo.time.Time.Duration));
                return stdgo.Go.toInterface((42 : stdgo.StdGoTypes.GoInt));
            };
            var __0:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats), __1:stdgo.runtime.Runtime.MemStats = ({} : stdgo.runtime.Runtime.MemStats), _mstats2:stdgo.runtime.Runtime.MemStats = __1, _mstats1:stdgo.runtime.Runtime.MemStats = __0;
            stdgo.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats1) : stdgo.StdGoTypes.Ref<stdgo.runtime.Runtime.MemStats>));
            _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
                var _items = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((100 : stdgo.StdGoTypes.GoInt).toBasic(), 0);
                var _sink:stdgo.Slice<stdgo.StdGoTypes.GoByte> = (null : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
                while (_pb.next()) {
                    for (_i in 0 ... _items.length.toBasic()) {
                        _items[(_i : stdgo.StdGoTypes.GoInt)] = _p.get();
                        _sink = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((32768 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
                    };
                    for (_i => _v in _items) {
                        _p.put(_v);
                        _items[(_i : stdgo.StdGoTypes.GoInt)] = (null : stdgo.StdGoTypes.AnyInterface);
                    };
                };
                _sink;
            });
            stdgo.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats2) : stdgo.StdGoTypes.Ref<stdgo.runtime.Runtime.MemStats>));
            _b.reportMetric((_mstats2.numGC - _mstats1.numGC : stdgo.StdGoTypes.GoFloat64) / (_b.n : stdgo.StdGoTypes.GoFloat64), ("GCs/op" : stdgo.GoString));
            _b.reportMetric((_nNew : stdgo.StdGoTypes.GoFloat64) / (_b.n : stdgo.StdGoTypes.GoFloat64), ("New/op" : stdgo.GoString));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
/**
    
    
    
**/
@:structInit class T_benchmarkSemaUncontended_30___localname___PaddedSem {
    public var _sem : stdgo.StdGoTypes.GoUInt32 = 0;
    public var _pad : stdgo.GoArray<stdgo.StdGoTypes.GoUInt32> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>(...[for (i in 0 ... 32) (0 : stdgo.StdGoTypes.GoUInt32)]);
    public function new(?_sem:stdgo.StdGoTypes.GoUInt32, ?_pad:stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>) {
        if (_sem != null) this._sem = _sem;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkSemaUncontended_30___localname___PaddedSem(_sem, _pad);
    }
}
function benchmarkSemaUncontended(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _sem = _new(paddedSem);
            while (_pb.next()) {
                runtime_Semrelease(stdgo.Go.pointer(_sem._sem), false, (0 : stdgo.StdGoTypes.GoInt));
                runtime_Semacquire(stdgo.Go.pointer(_sem._sem));
            };
        });
    }
function _benchmarkSema(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _block:Bool, _work:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_b.n == ((0 : stdgo.StdGoTypes.GoInt))) {
                return;
            };
            var _sem:stdgo.StdGoTypes.GoUInt32 = (0u32 : stdgo.StdGoTypes.GoUInt32);
            if (_block) {
                var _done = new stdgo.Chan<Bool>(0, () -> false);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _p:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_p < (stdgo.runtime.Runtime.gomaxprocs((0 : stdgo.StdGoTypes.GoInt)) / (2 : stdgo.StdGoTypes.GoInt)), _p++, {
                                runtime_Semacquire(stdgo.Go.pointer(_sem));
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
            _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
                var _foo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                while (_pb.next()) {
                    runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.StdGoTypes.GoInt));
                    if (_work) {
                        {
                            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                            stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {
                                _foo = _foo * ((2 : stdgo.StdGoTypes.GoInt));
                                _foo = _foo / ((2 : stdgo.StdGoTypes.GoInt));
                            });
                        };
                    };
                    runtime_Semacquire(stdgo.Go.pointer(_sem));
                };
                _foo;
                runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.StdGoTypes.GoInt));
            });
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function benchmarkSemaSyntNonblock(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSema(_b, false, false);
    }
function benchmarkSemaSyntBlock(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSema(_b, true, false);
    }
function benchmarkSemaWorkNonblock(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSema(_b, false, true);
    }
function benchmarkSemaWorkBlock(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkSema(_b, true, true);
    }
function _parallelReader(_m:stdgo.StdGoTypes.Ref<RWMutex>, _clocked:stdgo.Chan<Bool>, _cunlock:stdgo.Chan<Bool>, _cdone:stdgo.Chan<Bool>):Void {
        _m.rlock();
        _clocked.__send__(true);
        _cunlock.__get__();
        _m.runlock();
        _cdone.__send__(true);
    }
function _doTestParallelReaders(_numReaders:stdgo.StdGoTypes.GoInt, _gomaxprocs:stdgo.StdGoTypes.GoInt):Void {
        stdgo.runtime.Runtime.gomaxprocs(_gomaxprocs);
        var _m:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _clocked = new stdgo.Chan<Bool>(0, () -> false);
        var _cunlock = new stdgo.Chan<Bool>(0, () -> false);
        var _cdone = new stdgo.Chan<Bool>(0, () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _numReaders, _i++, {
                stdgo.Go.routine(() -> _parallelReader((stdgo.Go.setRef(_m) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.RWMutex>), _clocked, _cunlock, _cdone));
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _numReaders, _i++, {
                _clocked.__get__();
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _numReaders, _i++, {
                _cunlock.__send__(true);
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _numReaders, _i++, {
                _cdone.__get__();
            });
        };
    }
function testParallelReaders(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            _doTestParallelReaders((1 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt));
            _doTestParallelReaders((3 : stdgo.StdGoTypes.GoInt), (4 : stdgo.StdGoTypes.GoInt));
            _doTestParallelReaders((4 : stdgo.StdGoTypes.GoInt), (2 : stdgo.StdGoTypes.GoInt));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function _reader(_rwm:stdgo.StdGoTypes.Ref<RWMutex>, _num_iterations:stdgo.StdGoTypes.GoInt, _activity:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _num_iterations, _i++, {
                _rwm.rlock();
                var _n:stdgo.StdGoTypes.GoInt32 = stdgo.sync.atomic_.Atomic_.addInt32(_activity, (1 : stdgo.StdGoTypes.GoInt32));
                if ((_n < (1 : stdgo.StdGoTypes.GoInt32)) || (_n >= (10000 : stdgo.StdGoTypes.GoInt32))) {
                    _rwm.runlock();
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("wlock(%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_n)));
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {});
                };
                stdgo.sync.atomic_.Atomic_.addInt32(_activity, (-1 : stdgo.StdGoTypes.GoInt32));
                _rwm.runlock();
            });
        };
        _cdone.__send__(true);
    }
function _writer(_rwm:stdgo.StdGoTypes.Ref<RWMutex>, _num_iterations:stdgo.StdGoTypes.GoInt, _activity:stdgo.Pointer<stdgo.StdGoTypes.GoInt32>, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _num_iterations, _i++, {
                _rwm.lock();
                var _n:stdgo.StdGoTypes.GoInt32 = stdgo.sync.atomic_.Atomic_.addInt32(_activity, (10000 : stdgo.StdGoTypes.GoInt32));
                if (_n != ((10000 : stdgo.StdGoTypes.GoInt32))) {
                    _rwm.unlock();
                    throw stdgo.Go.toInterface(stdgo.fmt.Fmt.sprintf(("wlock(%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_n)));
                };
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < (100 : stdgo.StdGoTypes.GoInt), _i++, {});
                };
                stdgo.sync.atomic_.Atomic_.addInt32(_activity, (-10000 : stdgo.StdGoTypes.GoInt32));
                _rwm.unlock();
            });
        };
        _cdone.__send__(true);
    }
function hammerRWMutex(_gomaxprocs:stdgo.StdGoTypes.GoInt, _numReaders:stdgo.StdGoTypes.GoInt, _num_iterations:stdgo.StdGoTypes.GoInt):Void {
        stdgo.runtime.Runtime.gomaxprocs(_gomaxprocs);
        var _activity:stdgo.StdGoTypes.GoInt32 = (0 : stdgo.StdGoTypes.GoInt32);
        var _rwm:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _cdone = new stdgo.Chan<Bool>(0, () -> false);
        stdgo.Go.routine(() -> _writer((stdgo.Go.setRef(_rwm) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
        {
            _i = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_numReaders / (2 : stdgo.StdGoTypes.GoInt)), _i++, {
                stdgo.Go.routine(() -> _reader((stdgo.Go.setRef(_rwm) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
            });
        };
        stdgo.Go.routine(() -> _writer((stdgo.Go.setRef(_rwm) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        stdgo.Go.cfor(_i < _numReaders, _i++, {
            stdgo.Go.routine(() -> _reader((stdgo.Go.setRef(_rwm) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        });
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < ((2 : stdgo.StdGoTypes.GoInt) + _numReaders), _i++, {
                _cdone.__get__();
            });
        };
    }
function testRWMutex(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _m:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
            _m.lock();
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex locked" : stdgo.GoString));
            };
            if (_m.tryRLock()) {
                _t.fatalf(("TryRLock succeeded with mutex locked" : stdgo.GoString));
            };
            _m.unlock();
            if (!_m.tryLock()) {
                _t.fatalf(("TryLock failed with mutex unlocked" : stdgo.GoString));
            };
            _m.unlock();
            if (!_m.tryRLock()) {
                _t.fatalf(("TryRLock failed with mutex unlocked" : stdgo.GoString));
            };
            if (!_m.tryRLock()) {
                _t.fatalf(("TryRLock failed with mutex rlocked" : stdgo.GoString));
            };
            if (_m.tryLock()) {
                _t.fatalf(("TryLock succeeded with mutex rlocked" : stdgo.GoString));
            };
            _m.runlock();
            _m.runlock();
            {
                var _a0 = stdgo.runtime.Runtime.gomaxprocs((-1 : stdgo.StdGoTypes.GoInt));
                __deferstack__.unshift(() -> stdgo.runtime.Runtime.gomaxprocs(_a0));
            };
            var _n:stdgo.StdGoTypes.GoInt = (1000 : stdgo.StdGoTypes.GoInt);
            if (stdgo.testing.Testing.short()) {
                _n = (5 : stdgo.StdGoTypes.GoInt);
            };
            hammerRWMutex((1 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((1 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((1 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((4 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((4 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((4 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((10 : stdgo.StdGoTypes.GoInt), (1 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((10 : stdgo.StdGoTypes.GoInt), (3 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((10 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt), _n);
            hammerRWMutex((10 : stdgo.StdGoTypes.GoInt), (5 : stdgo.StdGoTypes.GoInt), _n);
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testRLocker(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _wl:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        var _rl:Locker = (null : stdgo.sync.Sync.Locker);
        var _wlocked = new stdgo.Chan<Bool>((1 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        var _rlocked = new stdgo.Chan<Bool>((1 : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        _rl = _wl.rlocker();
        var _n:stdgo.StdGoTypes.GoInt = (10 : stdgo.StdGoTypes.GoInt);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _n, _i++, {
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
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                _rlocked.__get__();
                _rl.unlock();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_wlocked != null && _wlocked.__isGet__()) {
                            __select__ = false;
                            {
                                _wlocked.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("RLocker() didn\'t read-lock it" : stdgo.GoString)));
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo.internal.Async.tick();
                    };
                };
                _rl.unlock();
                _wlocked.__get__();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_rlocked != null && _rlocked.__isGet__()) {
                            __select__ = false;
                            {
                                _rlocked.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("RLocker() didn\'t respect the write lock" : stdgo.GoString)));
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo.internal.Async.tick();
                    };
                };
                _wl.unlock();
            });
        };
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex_static_extension) class T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex {
    @:embedded
    public var rwmutex : stdgo.sync.Sync.RWMutex = ({} : stdgo.sync.Sync.RWMutex);
    public var _pad : stdgo.GoArray<stdgo.StdGoTypes.GoUInt32> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>(...[for (i in 0 ... 32) (0 : stdgo.StdGoTypes.GoUInt32)]);
    public function new(?rwmutex:stdgo.sync.Sync.RWMutex, ?_pad:stdgo.GoArray<stdgo.StdGoTypes.GoUInt32>) {
        if (rwmutex != null) this.rwmutex = rwmutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public function _rUnlockSlow(__0:stdgo.StdGoTypes.GoInt32) rwmutex._rUnlockSlow(__0);
    public function __copy__() {
        return new T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex(rwmutex, _pad);
    }
}
function benchmarkRWMutexUncontended(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _rwm:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex = ({} : stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex);
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
function _benchmarkRWMutex(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _localWork:stdgo.StdGoTypes.GoInt, _writeRatio:stdgo.StdGoTypes.GoInt):Void {
        var _rwm:RWMutex = ({} : stdgo.sync.Sync.RWMutex);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _foo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_pb.next()) {
                _foo++;
                if (_foo % _writeRatio == ((0 : stdgo.StdGoTypes.GoInt))) {
                    _rwm.lock();
                    _rwm.unlock();
                } else {
                    _rwm.rlock();
                    {
                        var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                        stdgo.Go.cfor(_i != (_localWork), _i = _i + ((1 : stdgo.StdGoTypes.GoInt)), {
                            _foo = _foo * ((2 : stdgo.StdGoTypes.GoInt));
                            _foo = _foo / ((2 : stdgo.StdGoTypes.GoInt));
                        });
                    };
                    _rwm.runlock();
                };
            };
            _foo;
        });
    }
function benchmarkRWMutexWrite100(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (0 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkRWMutexWrite10(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (0 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkRWMutexWorkWrite100(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (100 : stdgo.StdGoTypes.GoInt), (100 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkRWMutexWorkWrite10(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (100 : stdgo.StdGoTypes.GoInt), (10 : stdgo.StdGoTypes.GoInt));
    }
function _testWaitGroup(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>, _wg1:stdgo.StdGoTypes.Ref<WaitGroup>, _wg2:stdgo.StdGoTypes.Ref<WaitGroup>):Void {
        var _n:stdgo.StdGoTypes.GoInt = (16 : stdgo.StdGoTypes.GoInt);
        _wg1.add(_n);
        _wg2.add(_n);
        var _exited = new stdgo.Chan<Bool>((_n : stdgo.StdGoTypes.GoInt).toBasic(), () -> false);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                stdgo.Go.routine(() -> {
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
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_exited != null && _exited.__isGet__()) {
                            __select__ = false;
                            {
                                _exited.__get__();
                                {
                                    _t.fatal(stdgo.Go.toInterface(("WaitGroup released group too soon" : stdgo.GoString)));
                                };
                            };
                        } else {
                            __select__ = false;
                            {};
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo.internal.Async.tick();
                    };
                };
                _wg2.done();
            });
        };
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                _exited.__get__();
            });
        };
    }
function testWaitGroup(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var _wg1 = (stdgo.Go.setRef((new stdgo.sync.Sync.WaitGroup() : stdgo.sync.Sync.WaitGroup)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.WaitGroup>);
        var _wg2 = (stdgo.Go.setRef((new stdgo.sync.Sync.WaitGroup() : stdgo.sync.Sync.WaitGroup)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.WaitGroup>);
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i != ((8 : stdgo.StdGoTypes.GoInt)), _i++, {
                _testWaitGroup(_t, _wg1, _wg2);
            });
        };
    }
function testWaitGroupMisuse(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err:stdgo.StdGoTypes.AnyInterface = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    });
                    if (_err != (stdgo.Go.toInterface(("sync: negative WaitGroup counter" : stdgo.GoString)))) {
                        _t.fatalf(("Unexpected panic: %#v" : stdgo.GoString), _err);
                    };
                };
                a();
            });
            var _wg = (stdgo.Go.setRef((new stdgo.sync.Sync.WaitGroup() : stdgo.sync.Sync.WaitGroup)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.WaitGroup>);
            _wg.add((1 : stdgo.StdGoTypes.GoInt));
            _wg.done();
            _wg.done();
            _t.fatal(stdgo.Go.toInterface(("Should panic" : stdgo.GoString)));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
function testWaitGroupRace(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (1000 : stdgo.StdGoTypes.GoInt), _i++, {
                var _wg = (stdgo.Go.setRef((new stdgo.sync.Sync.WaitGroup() : stdgo.sync.Sync.WaitGroup)) : stdgo.StdGoTypes.Ref<stdgo.sync.Sync.WaitGroup>);
                var _n = _new(_int32);
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo.sync.atomic_.Atomic_.addInt32(_n, (1 : stdgo.StdGoTypes.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo.sync.atomic_.Atomic_.addInt32(_n, (1 : stdgo.StdGoTypes.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.wait_();
                if (stdgo.sync.atomic_.Atomic_.loadInt32(_n) != ((2 : stdgo.StdGoTypes.GoInt32))) {
                    _t.fatal(stdgo.Go.toInterface(("Spurious wakeup from Wait" : stdgo.GoString)));
                };
            });
        };
    }
/**
    
    
    
**/
@:structInit class T_testWaitGroupAlign_32___localname___X {
    public var _x : stdgo.StdGoTypes.GoUInt8 = 0;
    public var _wg : stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
    public function new(?_x:stdgo.StdGoTypes.GoUInt8, ?_wg:stdgo.sync.Sync.WaitGroup) {
        if (_x != null) this._x = _x;
        if (_wg != null) this._wg = _wg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testWaitGroupAlign_32___localname___X(_x, _wg);
    }
}
function testWaitGroupAlign(_t:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.T_>):Void {
        {};
        var _x:T_testWaitGroupAlign_32___localname___X = ({} : stdgo.sync_test.Sync_test.T_testWaitGroupAlign_32___localname___X);
        _x._wg.add((1 : stdgo.StdGoTypes.GoInt));
        stdgo.Go.routine(() -> {
            var a = function(_x:stdgo.StdGoTypes.Ref<T_testWaitGroupAlign_32___localname___X>):Void {
                _x._wg.done();
            };
            a((stdgo.Go.setRef(_x) : stdgo.StdGoTypes.Ref<stdgo.sync_test.Sync_test.T_testWaitGroupAlign_32___localname___X>));
        });
        _x._wg.wait_();
    }
/**
    
    
    
**/
@:structInit @:using(stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup_static_extension) class T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup {
    @:embedded
    public var waitGroup : stdgo.sync.Sync.WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
    public var _pad : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 128) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?waitGroup:stdgo.sync.Sync.WaitGroup, ?_pad:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (waitGroup != null) this.waitGroup = waitGroup;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(__0:stdgo.StdGoTypes.GoInt) waitGroup.add(__0);
    @:embedded
    public function done() waitGroup.done();
    @:embedded
    public function wait_() waitGroup.wait_();
    public function __copy__() {
        return new T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup(waitGroup, _pad);
    }
}
function benchmarkWaitGroupUncontended(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _wg:T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup = ({} : stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup);
            while (_pb.next()) {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                _wg.done();
                _wg.wait_();
            };
        });
    }
function _benchmarkWaitGroupAddDone(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _localWork:stdgo.StdGoTypes.GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _foo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_pb.next()) {
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _localWork, _i++, {
                        _foo = _foo * ((2 : stdgo.StdGoTypes.GoInt));
                        _foo = _foo / ((2 : stdgo.StdGoTypes.GoInt));
                    });
                };
                _wg.done();
            };
            _foo;
        });
    }
function benchmarkWaitGroupAddDone(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkWaitGroupAddDone(_b, (0 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkWaitGroupAddDoneWork(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkWaitGroupAddDone(_b, (100 : stdgo.StdGoTypes.GoInt));
    }
function _benchmarkWaitGroupWait(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>, _localWork:stdgo.StdGoTypes.GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            var _foo:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            while (_pb.next()) {
                _wg.wait_();
                {
                    var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
                    stdgo.Go.cfor(_i < _localWork, _i++, {
                        _foo = _foo * ((2 : stdgo.StdGoTypes.GoInt));
                        _foo = _foo / ((2 : stdgo.StdGoTypes.GoInt));
                    });
                };
            };
            _foo;
        });
    }
function benchmarkWaitGroupWait(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkWaitGroupWait(_b, (0 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkWaitGroupWaitWork(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _benchmarkWaitGroupWait(_b, (100 : stdgo.StdGoTypes.GoInt));
    }
function benchmarkWaitGroupActuallyWait(_b:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.B>):Void {
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.StdGoTypes.Ref<stdgo.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var _wg:WaitGroup = ({} : stdgo.sync.Sync.WaitGroup);
                _wg.add((1 : stdgo.StdGoTypes.GoInt));
                stdgo.Go.routine(() -> {
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
            if ((stdgo.os.Os.args.length == (3 : stdgo.StdGoTypes.GoInt)) && (stdgo.os.Os.args[(1 : stdgo.StdGoTypes.GoInt)] == ("TESTMISUSE" : stdgo.GoString))) {
                for (__4 => _test in _misuseTests) {
                    if (_test._name == (stdgo.os.Os.args[((2 : stdgo.StdGoTypes.GoInt) : stdgo.StdGoTypes.GoInt)])) {
                        {
                            var a = function():Void {
                                var __deferstack__:Array<Void -> Void> = [];
                                try {
                                    __deferstack__.unshift(() -> {
                                        var a = function():Void {
                                            ({
                                                final r = stdgo.Go.recover_exception;
                                                stdgo.Go.recover_exception = null;
                                                r;
                                            });
                                        };
                                        a();
                                    });
                                    _test._f();
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                        return;
                                    };
                                } catch(__exception__) {
                                    var exe:Dynamic = __exception__.native;
                                    if ((exe is haxe.ValueException)) exe = exe.value;
                                    if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                                        exe = stdgo.Go.toInterface(__exception__.message);
                                    };
                                    stdgo.Go.recover_exception = exe;
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                                    return;
                                };
                            };
                            a();
                        };
                        stdgo.fmt.Fmt.printf(("test completed\n" : stdgo.GoString));
                        Sys.exit((0 : stdgo.StdGoTypes.GoInt));
                    };
                };
                stdgo.fmt.Fmt.printf(("unknown test\n" : stdgo.GoString));
                Sys.exit((0 : stdgo.StdGoTypes.GoInt));
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
class T_httpPkg_asInterface {
    @:keep
    public dynamic function get(_url:stdgo.GoString):Void __self__.value.get(_url);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_httpPkg>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_httpPkg_asInterface) class T_httpPkg_static_extension {
    @:keep
    static public function get( _:T_httpPkg, _url:stdgo.GoString):Void {
        @:recv var _:T_httpPkg = _?.__copy__();
    }
}
class RWMutexMap_asInterface {
    @:keep
    public dynamic function range(_f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:stdgo.StdGoTypes.AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RWMutexMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.RWMutexMap_asInterface) class RWMutexMap_static_extension {
    @:keep
    static public function range( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        _m._mu.rlock();
        var _keys = new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>((0 : stdgo.StdGoTypes.GoInt).toBasic(), (_m._dirty.length));
        for (_k => _ in _m._dirty) {
            _keys = (_keys.__append__(_k));
        };
        _m._mu.runlock();
        for (__28 => _k in _keys) {
            var __tmp__ = _m.load(_k), _v:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
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
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _value:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
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
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _deleted;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _deleted;
        };
    }
    @:keep
    static public function compareAndSwap( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
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
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _value:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
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
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _swapped;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _swapped;
        };
    }
    @:keep
    static public function delete( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _m._mu.unlock();
            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
        };
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        var _previous:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.StdGoTypes.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
        };
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        var _actual:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _actual = _value;
            if (_m._dirty == null) {
                _m._dirty = ({
                    final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.StdGoTypes.AnyInterface>();
                    x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
                    @:mergeBlock {};
                    cast x;
                } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
            };
            _m._dirty[_key] = _value;
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.StdGoTypes.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
                @:mergeBlock {};
                cast x;
            } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.StdGoTypes.Ref<RWMutexMap>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<RWMutexMap> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _ok:Bool = false;
        _m._mu.rlock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        _m._mu.runlock();
        return { _0 : _value, _1 : _ok };
    }
}
class DeepCopyMap_asInterface {
    @:keep
    public dynamic function _dirty():stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface> return __self__.value._dirty();
    @:keep
    public dynamic function range(_f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:stdgo.StdGoTypes.AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeepCopyMap>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.DeepCopyMap_asInterface) class DeepCopyMap_static_extension {
    @:keep
    static public function _dirty( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>):stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface> {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        var _dirty = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.StdGoTypes.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.StdGoTypes.AnyInterface);
            @:mergeBlock {};
            cast x;
        } : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>);
        for (_k => _v in _clean) {
            _dirty[_k] = _v;
        };
        return _dirty;
    }
    @:keep
    static public function range( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _f:(_key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        for (_k => _v in _clean) {
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted:Bool = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _previous:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok || (_previous != _old)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _value:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if (_loaded && (_value == _old)) {
                if (_dirty != null) _dirty.remove(_key);
                _m._clean.store(stdgo.Go.toInterface(_dirty));
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
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _deleted;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _deleted;
        };
    }
    @:keep
    static public function compareAndSwap( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface, _old:stdgo.StdGoTypes.AnyInterface, _new:stdgo.StdGoTypes.AnyInterface):Bool {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped:Bool = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _previous:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok || (_previous != _old)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false }), _value:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if (_loaded && (_value == _old)) {
                _dirty[_key] = _new;
                _m._clean.store(stdgo.Go.toInterface(_dirty));
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
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _swapped;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.StdGoTypes.AnyInterfaceData)) {
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _swapped;
        };
    }
    @:keep
    static public function delete( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var _previous:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var _actual:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _loaded:Bool = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_loaded) {
            return { _0 : _actual, _1 : _loaded };
        };
        _m._mu.lock();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
            };
            _clean = __tmp__._0;
        };
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            var _dirty = _m._dirty();
            _dirty[_key] = _value;
            _actual = _value;
            _m._clean.store(stdgo.Go.toInterface(_dirty));
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface, _value:stdgo.StdGoTypes.AnyInterface):Void {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.StdGoTypes.Ref<DeepCopyMap>, _key:stdgo.StdGoTypes.AnyInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.StdGoTypes.Ref<DeepCopyMap> = _m;
        var _value:stdgo.StdGoTypes.AnyInterface = (null : stdgo.StdGoTypes.AnyInterface), _ok:Bool = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>)) : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.StdGoTypes.AnyInterface, stdgo.StdGoTypes.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        return { _0 : _value, _1 : _ok };
    }
}
class T_mapCall_asInterface {
    @:keep
    public dynamic function generate(_r:stdgo.StdGoTypes.Ref<stdgo.math.rand.Rand.Rand>, _size:stdgo.StdGoTypes.GoInt):stdgo.reflect.Reflect.Value return __self__.value.generate(_r, _size);
    @:keep
    public dynamic function _apply(_m:T_mapInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } return __self__.value._apply(_m);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapCall>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_mapCall_asInterface) class T_mapCall_static_extension {
    @:keep
    static public function generate( _:T_mapCall, _r:stdgo.StdGoTypes.Ref<stdgo.math.rand.Rand.Rand>, _size:stdgo.StdGoTypes.GoInt):stdgo.reflect.Reflect.Value {
        @:recv var _:T_mapCall = _?.__copy__();
        var _c:stdgo.sync_test.Sync_test.T_mapCall = ({ _op : _mapOps[(stdgo.math.rand.Rand.intn((_mapOps.length)) : stdgo.StdGoTypes.GoInt)], _k : _randValue(_r) } : stdgo.sync_test.Sync_test.T_mapCall);
        {
            final __value__ = _c._op;
            if (__value__ == ((("Store" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp)) || __value__ == ((("LoadOrStore" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _c._v = _randValue(_r);
            };
        };
        return stdgo.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__();
    }
    @:keep
    static public function _apply( _c:T_mapCall, _m:T_mapInterface):{ var _0 : stdgo.StdGoTypes.AnyInterface; var _1 : Bool; } {
        @:recv var _c:T_mapCall = _c?.__copy__();
        {
            final __value__ = _c._op;
            if (__value__ == ((("Load" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.load(_c._k);
            } else if (__value__ == ((("Store" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _m.store(_c._k, _c._v);
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            } else if (__value__ == ((("LoadOrStore" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.loadOrStore(_c._k, _c._v);
            } else if (__value__ == ((("LoadAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.loadAndDelete(_c._k);
            } else if (__value__ == ((("Delete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                _m.delete(_c._k);
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            } else if (__value__ == ((("Swap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                return _m.swap(_c._k, _c._v);
            } else if (__value__ == ((("CompareAndSwap" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndSwap(_c._k, _c._v, stdgo.Go.toInterface(stdgo.math.rand.Rand.int_()))) {
                    _m.delete(_c._k);
                    return { _0 : _c._v, _1 : true };
                };
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            } else if (__value__ == ((("CompareAndDelete" : stdgo.GoString) : stdgo.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndDelete(_c._k, _c._v)) {
                    {
                        var __tmp__ = _m.load(_c._k), __4:stdgo.StdGoTypes.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : true };
                        };
                    };
                };
                return { _0 : (null : stdgo.StdGoTypes.AnyInterface), _1 : false };
            } else {
                throw stdgo.Go.toInterface(("invalid mapOp" : stdgo.GoString));
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_one>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_one_asInterface) class T_one_static_extension {
    @:keep
    @:pointer
    static public function increment(____:T_one,  _o:stdgo.Pointer<T_one>):Void {
        _o.value++;
    }
}
class T_benchmarkMutexUncontended_29___localname___PaddedMutex_asInterface {
    @:embedded
    public dynamic function _unlockSlow(__0:stdgo.StdGoTypes.GoInt32):Void __self__.value._unlockSlow(__0);
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkMutexUncontended_29___localname___PaddedMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkMutexUncontended_29___localname___PaddedMutex_asInterface) class T_benchmarkMutexUncontended_29___localname___PaddedMutex_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T_benchmarkMutexUncontended_29___localname___PaddedMutex, __0:stdgo.StdGoTypes.GoInt32) __self__._unlockSlow(__0);
    @:embedded
    public static function _lockSlow( __self__:T_benchmarkMutexUncontended_29___localname___PaddedMutex) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_benchmarkMutexUncontended_29___localname___PaddedMutex) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkMutexUncontended_29___localname___PaddedMutex):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_benchmarkMutexUncontended_29___localname___PaddedMutex) __self__.lock();
}
class T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex_asInterface {
    @:embedded
    public dynamic function _rUnlockSlow(__0:stdgo.StdGoTypes.GoInt32):Void __self__.value._rUnlockSlow(__0);
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
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex_asInterface) class T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex_static_extension {
    @:embedded
    public static function _rUnlockSlow( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex, __0:stdgo.StdGoTypes.GoInt32) __self__._rUnlockSlow(__0);
    @:embedded
    public static function unlock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex) __self__.unlock();
    @:embedded
    public static function tryRLock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex):Bool return __self__.tryRLock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex):Bool return __self__.tryLock();
    @:embedded
    public static function runlock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex) __self__.runlock();
    @:embedded
    public static function rlocker( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex):stdgo.sync.Sync.Locker return __self__.rlocker();
    @:embedded
    public static function rlock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex) __self__.rlock();
    @:embedded
    public static function lock( __self__:T_benchmarkRWMutexUncontended_31___localname___PaddedRWMutex) __self__.lock();
}
class T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup_asInterface {
    @:embedded
    public dynamic function wait_():Void __self__.value.wait_();
    @:embedded
    public dynamic function done():Void __self__.value.done();
    @:embedded
    public dynamic function add(__0:stdgo.StdGoTypes.GoInt):Void __self__.value.add(__0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.sync_test.Sync_test.T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup_asInterface) class T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup_static_extension {
    @:embedded
    public static function wait_( __self__:T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup) __self__.wait_();
    @:embedded
    public static function done( __self__:T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup) __self__.done();
    @:embedded
    public static function add( __self__:T_benchmarkWaitGroupUncontended_33___localname___PaddedWaitGroup, __0:stdgo.StdGoTypes.GoInt) __self__.add(__0);
}
