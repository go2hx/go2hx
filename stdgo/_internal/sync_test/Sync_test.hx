package stdgo._internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
var _http : T_httpPkg = ({} : stdgo._internal.sync_test.Sync_test.T_httpPkg);
final _opLoad : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("Load" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opStore : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("Store" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opLoadOrStore : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("LoadOrStore" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opLoadAndDelete : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("LoadAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opDelete : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("Delete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opSwap : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("Swap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opCompareAndSwap : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("CompareAndSwap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
final _opCompareAndDelete : stdgo._internal.sync_test.Sync_test.T_mapOp = ((("CompareAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp) : T_mapOp);
var _onceFuncOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _onceValueOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
var _onceValueValue : stdgo.GoInt = (0 : stdgo.GoInt);
var _globalSink : stdgo.AnyInterface = (null : stdgo.AnyInterface);
var _bufPool : stdgo._internal.sync.Sync.Pool = ({ new_ : function():stdgo.AnyInterface {
        return stdgo.Go.toInterface(stdgo.Go.asInterface(_new(stdgo._internal.bytes.Bytes.buffer)));
    } } : stdgo._internal.sync.Sync.Pool);
var _mapOps : stdgo.GoArray<stdgo._internal.sync_test.Sync_test.T_mapOp> = (new stdgo.GoArray<stdgo._internal.sync_test.Sync_test.T_mapOp>(8, 8, ...[(("Load" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("Store" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("LoadOrStore" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("LoadAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("Delete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("Swap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("CompareAndSwap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp), (("CompareAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp)]).__setString__() : stdgo.GoArray<stdgo._internal.sync_test.Sync_test.T_mapOp>);
var _misuseTests : stdgo.Slice<T__struct_2> = (new stdgo.Slice<T__struct_2>(8, 8, ...[({ _name : ("Mutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("Mutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.Unlock3" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock2" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.lock();
        _mu.runlock();
    } } : T__struct_2), ({ _name : ("RWMutex.RUnlock3" : stdgo.GoString), _f : function():Void {
        var _mu:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _mu.rlock();
        _mu.runlock();
        _mu.runlock();
    } } : T__struct_2)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : T__struct_2)])) : stdgo.Slice<T__struct_2>);
var _onceFunc : () -> Void = stdgo._internal.sync.Sync.onceFunc(function():Void {});
var _onceValue : () -> stdgo.GoInt = stdgo._internal.sync.Sync.onceValue((0 : stdgo.GoInt), function():stdgo.GoInt {
        return (42 : stdgo.GoInt);
    });
var __2 : stdgo._internal.sync_test.Sync_test.T_mapInterface = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync_test.Sync_test.RWMutexMap() : stdgo._internal.sync_test.Sync_test.RWMutexMap)) : stdgo.Ref<stdgo._internal.sync_test.Sync_test.RWMutexMap>));
var __3 : stdgo._internal.sync_test.Sync_test.T_mapInterface = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync_test.Sync_test.DeepCopyMap() : stdgo._internal.sync_test.Sync_test.DeepCopyMap)) : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>));
@:keep class T_mapInterface_static_extension {
    static public function range(t:T_mapInterface, _0:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void t.range(_0);
    static public function compareAndDelete(t:T_mapInterface, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return t.compareAndDelete(_key, _old);
    static public function compareAndSwap(t:T_mapInterface, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return t.compareAndSwap(_key, _old, _new);
    static public function swap(t:T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.swap(_key, _value);
    static public function delete(t:T_mapInterface, _0:stdgo.AnyInterface):Void t.delete(_0);
    static public function loadAndDelete(t:T_mapInterface, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.loadAndDelete(_key);
    static public function loadOrStore(t:T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.loadOrStore(_key, _value);
    static public function store(t:T_mapInterface, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void t.store(_key, _value);
    static public function load(t:T_mapInterface, _0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return t.load(_0);
}
typedef T_mapInterface = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function load(_0:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function delete(_0:stdgo.AnyInterface):Void;
    /**
        
        
        
    **/
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; };
    /**
        
        
        
    **/
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool;
    /**
        
        
        
    **/
    public dynamic function range(_0:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void;
};
@:structInit @:private @:using(stdgo._internal.sync_test.Sync_test.T_httpPkg_static_extension) class T_httpPkg {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_httpPkg();
    }
}
@:structInit @:private class T_bench {
    public var _setup : (stdgo.Ref<stdgo._internal.testing.Testing.B>, stdgo._internal.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public var _perG : (stdgo.Ref<stdgo._internal.testing.Testing.B>, stdgo.Ref<stdgo._internal.testing.Testing.PB>, stdgo.GoInt, stdgo._internal.sync_test.Sync_test.T_mapInterface) -> Void = null;
    public function new(?_setup:(stdgo.Ref<stdgo._internal.testing.Testing.B>, stdgo._internal.sync_test.Sync_test.T_mapInterface) -> Void, ?_perG:(stdgo.Ref<stdgo._internal.testing.Testing.B>, stdgo.Ref<stdgo._internal.testing.Testing.PB>, stdgo.GoInt, stdgo._internal.sync_test.Sync_test.T_mapInterface) -> Void) {
        if (_setup != null) this._setup = _setup;
        if (_perG != null) this._perG = _perG;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bench(_setup, _perG);
    }
}
@:structInit @:using(stdgo._internal.sync_test.Sync_test.RWMutexMap_static_extension) class RWMutexMap {
    public var _mu : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public var _dirty : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
    public function new(?_mu:stdgo._internal.sync.Sync.RWMutex, ?_dirty:stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>) {
        if (_mu != null) this._mu = _mu;
        if (_dirty != null) this._dirty = _dirty;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RWMutexMap(_mu, _dirty);
    }
}
@:structInit @:using(stdgo._internal.sync_test.Sync_test.DeepCopyMap_static_extension) class DeepCopyMap {
    public var _mu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _clean : stdgo._internal.sync.atomic_.Atomic_.Value = ({} : stdgo._internal.sync.atomic_.Atomic_.Value);
    public function new(?_mu:stdgo._internal.sync.Sync.Mutex, ?_clean:stdgo._internal.sync.atomic_.Atomic_.Value) {
        if (_mu != null) this._mu = _mu;
        if (_clean != null) this._clean = _clean;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DeepCopyMap(_mu, _clean);
    }
}
@:structInit @:private @:using(stdgo._internal.sync_test.Sync_test.T_mapCall_static_extension) class T_mapCall {
    public var _op : stdgo._internal.sync_test.Sync_test.T_mapOp = (("" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp);
    public var _k : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _v : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?_op:stdgo._internal.sync_test.Sync_test.T_mapOp, ?_k:stdgo.AnyInterface, ?_v:stdgo.AnyInterface) {
        if (_op != null) this._op = _op;
        if (_k != null) this._k = _k;
        if (_v != null) this._v = _v;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapCall(_op, _k, _v);
    }
}
@:structInit @:private class T_mapResult {
    public var _value : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var _ok : Bool = false;
    public function new(?_value:stdgo.AnyInterface, ?_ok:Bool) {
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.sync_test.Sync_test.T__struct_1_static_extension) typedef T__struct_1 = {};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.sync_test.Sync_test.T__struct_2_static_extension) typedef T__struct_2 = {
    public var _name : stdgo.GoString;
    public var _f : () -> Void;
};
@:named typedef T_mapOp = stdgo.GoString;
@:named @:using(stdgo._internal.sync_test.Sync_test.T_one_static_extension) typedef T_one = stdgo.GoInt;
function testCondSignal(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
        var _n = (2 : stdgo.GoInt);
        var _running = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _awake = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
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
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _running.__get__();
            });
        };
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
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
                    stdgo._internal.internal.Async.tick();
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
                    stdgo._internal.internal.Async.tick();
                };
            };
            _n--;
        };
        _c.signal();
    }
function testCondSignalGenerations(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
        var _n = (100 : stdgo.GoInt);
        var _running = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _awake = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_i:stdgo.GoInt):Void {
                        _m.lock();
                        _running.__send__(true);
                        _c.wait_();
                        _awake.__send__(_i);
                        _m.unlock();
                    };
                    a(_i);
                });
                if ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var _a = (_awake.__get__() : stdgo.GoInt);
                    if (_a != ((_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                        _t.fatalf(("wrong goroutine woke up: want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface((_i - (1 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(_a));
                    };
                };
                _running.__get__();
                _m.lock();
                _c.signal();
                _m.unlock();
            });
        };
    }
function testCondBroadcast(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
        var _n = (200 : stdgo.GoInt);
        var _running = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _awake = (new stdgo.Chan<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        var _exit = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function(_g:stdgo.GoInt):Void {
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
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        _running.__get__();
                    });
                };
                if (_i == ((_n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
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
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _m.lock();
                _c.broadcast();
                _m.unlock();
                var _seen = (new stdgo.Slice<Bool>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<Bool>);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
                        var _g = (_awake.__get__() : stdgo.GoInt);
                        if (_seen[(_g : stdgo.GoInt)]) {
                            _t.fatal(stdgo.Go.toInterface(("goroutine woke up twice" : stdgo.GoString)));
                        };
                        _seen[(_g : stdgo.GoInt)] = true;
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
                stdgo._internal.internal.Async.tick();
            };
        };
        _c.broadcast();
    }
function testRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _x = (0 : stdgo.GoInt);
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync.Mutex() : stdgo._internal.sync.Sync.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                _c.l.lock();
                _x = (1 : stdgo.GoInt);
                _c.wait_();
                if (_x != ((2 : stdgo.GoInt))) {
                    _t.error(stdgo.Go.toInterface(("want 2" : stdgo.GoString)));
                };
                _x = (3 : stdgo.GoInt);
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
                    if (_x == ((1 : stdgo.GoInt))) {
                        _x = (2 : stdgo.GoInt);
                        _c.signal();
                        break;
                    };
                    _c.l.unlock();
                    stdgo._internal.runtime.Runtime.gosched();
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
                    if (_x == ((2 : stdgo.GoInt))) {
                        _c.wait_();
                        if (_x != ((3 : stdgo.GoInt))) {
                            _t.error(stdgo.Go.toInterface(("want 3" : stdgo.GoString)));
                        };
                        break;
                    };
                    if (_x == ((3 : stdgo.GoInt))) {
                        break;
                    };
                    _c.l.unlock();
                    stdgo._internal.runtime.Runtime.gosched();
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
function testCondSignalStealing(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _iters = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_iters < (1000 : stdgo.GoInt) : Bool), _iters++, {
                var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
                var _cond = newCond(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
                var _ch = (new stdgo.Chan<T_httpPkg>(0, () -> ({} : T_httpPkg)) : stdgo.Chan<T_httpPkg>);
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
                var _done = (false : Bool);
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
function testCondCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    } : stdgo.AnyInterface);
                    if (((_err == null) || ((stdgo.Go.typeAssert((_err : stdgo.GoString)) : stdgo.GoString) != ("sync.Cond is copied" : stdgo.GoString)) : Bool)) {
                        _t.fatalf(("got %v, expect sync.Cond is copied" : stdgo.GoString), _err);
                    };
                };
                a();
            });
            var _c = ({ l : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync.Mutex() : stdgo._internal.sync.Sync.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)) } : stdgo._internal.sync.Sync.Cond);
            _c.signal();
            var _c2:Cond = ({} : stdgo._internal.sync.Sync.Cond);
            stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c2) : stdgo.Ref<stdgo._internal.sync.Sync.Cond>)))).elem().set(stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<stdgo._internal.sync.Sync.Cond>)))).elem()?.__copy__());
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function benchmarkCond1(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (1 : stdgo.GoInt));
    }
function benchmarkCond2(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (2 : stdgo.GoInt));
    }
function benchmarkCond4(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (4 : stdgo.GoInt));
    }
function benchmarkCond8(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (8 : stdgo.GoInt));
    }
function benchmarkCond16(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (16 : stdgo.GoInt));
    }
function benchmarkCond32(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkCond(_b, (32 : stdgo.GoInt));
    }
function _benchmarkCond(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _waiters:stdgo.GoInt):Void {
        var _c = newCond(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync.Mutex() : stdgo._internal.sync.Sync.Mutex)) : stdgo.Ref<stdgo._internal.sync.Sync.Mutex>)));
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _id = (0 : stdgo.GoInt);
        {
            var _routine = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_routine < (_waiters + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _routine++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                _c.l.lock();
                                if (_id == ((-1 : stdgo.GoInt))) {
                                    _c.l.unlock();
                                    break;
                                };
                                _id++;
                                if (_id == ((_waiters + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                    _id = (0 : stdgo.GoInt);
                                    _c.broadcast();
                                } else {
                                    _c.wait_();
                                };
                                _c.l.unlock();
                            });
                        };
                        _c.l.lock();
                        _id = (-1 : stdgo.GoInt);
                        _c.broadcast();
                        _c.l.unlock();
                        _done.__send__(true);
                    };
                    a();
                });
            });
        };
        {
            var _routine = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_routine < (_waiters + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _routine++, {
                _done.__get__();
            });
        };
    }
function _timeNow():stdgo._internal.time.Time.Time {
        return stdgo._internal.time.Time.unix((1136214245i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__();
    }
function log(_w:stdgo._internal.io.Io.Writer, _key:stdgo.GoString, _val:stdgo.GoString):Void {
        var _b = (stdgo.Go.typeAssert((_bufPool.get() : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        _b.reset();
        _b.writeString(_timeNow().utc().format(("2006-01-02T15:04:05Z07:00" : stdgo.GoString))?.__copy__());
        _b.writeByte((32 : stdgo.GoUInt8));
        _b.writeString(_key?.__copy__());
        _b.writeByte((61 : stdgo.GoUInt8));
        _b.writeString(_val?.__copy__());
        _w.write(_b.bytes());
        _bufPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_b)));
    }
function examplePool():Void {
        log(stdgo.Go.asInterface(stdgo._internal.os.Os.stdout), ("path" : stdgo.GoString), ("/search?q=flowers" : stdgo.GoString));
    }
function exampleWaitGroup():Void {
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _urls:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("http://www.golang.org/" : stdgo.GoString), ("http://www.google.com/" : stdgo.GoString), ("http://www.example.com/" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__4 => _url in _urls) {
            _wg.add((1 : stdgo.GoInt));
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        var _once:stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
        var _onceBody = (function():Void {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Only once" : stdgo.GoString)));
        } : () -> Void);
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
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
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _done.__get__();
            });
        };
    }
function _benchMap(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _bench:T_bench):Void {
        for (__4 => _m in (new stdgo.GoArray<stdgo._internal.sync_test.Sync_test.T_mapInterface>(3, 3, ...[stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync_test.Sync_test.DeepCopyMap() : stdgo._internal.sync_test.Sync_test.DeepCopyMap)) : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync_test.Sync_test.RWMutexMap() : stdgo._internal.sync_test.Sync_test.RWMutexMap)) : stdgo.Ref<stdgo._internal.sync_test.Sync_test.RWMutexMap>)), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sync.Sync.Map_() : stdgo._internal.sync.Sync.Map_)) : stdgo.Ref<stdgo._internal.sync.Sync.Map_>))]) : stdgo.GoArray<stdgo._internal.sync_test.Sync_test.T_mapInterface>)) {
            _b.run(stdgo._internal.fmt.Fmt.sprintf(("%T" : stdgo.GoString), stdgo.Go.toInterface(_m))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
                _m = (stdgo.Go.typeAssert((stdgo._internal.reflect.Reflect.new_(stdgo._internal.reflect.Reflect.typeOf(stdgo.Go.toInterface(_m)).elem()).interface_() : T_mapInterface)) : T_mapInterface);
                if (_bench._setup != null) {
                    _bench._setup(_b, _m);
                };
                _b.resetTimer();
                var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
                _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
                    var _id = ((stdgo._internal.sync.atomic_.Atomic_.addInt64(stdgo.Go.pointer(_i), (1i64 : stdgo.GoInt64)) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64) : stdgo.GoInt);
                    _bench._perG(_b, _pb, (_id * _b.n : stdgo.GoInt), _m);
                });
            });
        };
    }
function benchmarkLoadMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1023 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2046 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1023 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface((_i % (1024 : stdgo.GoInt) : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadMostlyMisses(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface((_i % (1024 : stdgo.GoInt) : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreBalanced(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (128 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _j = (_i % (256 : stdgo.GoInt) : stdgo.GoInt);
                if ((_j < (128 : stdgo.GoInt) : Bool)) {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_i)), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            _b.fatalf(("unexpected miss for %v" : stdgo.GoString), stdgo.Go.toInterface(_j));
                        };
                    };
                } else {
                    {
                        var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i)), _v:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                        if (_loaded) {
                            _b.fatalf(("failed to store %v: existing value %v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v);
                        };
                    };
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreUnique(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadOrStoreCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteBalanced(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (128 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (256 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (128 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _j = (_i % (256 : stdgo.GoInt) : stdgo.GoInt);
                if ((_j < (128 : stdgo.GoInt) : Bool)) {
                    _m.loadAndDelete(stdgo.Go.toInterface(_j));
                } else {
                    _m.loadAndDelete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteUnique(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.loadAndDelete(stdgo.Go.toInterface(_i));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkLoadAndDeleteCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((0 : stdgo.GoInt))), __4:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _m.store(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                    };
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkRange(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1024 : stdgo.GoInt) : Bool), _i++, {
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.range(function(__4:stdgo.AnyInterface, __5:stdgo.AnyInterface):Bool {
                    return true;
                });
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkAdversarialAlloc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            var __0:stdgo.GoInt64 = (0 : stdgo.GoInt64), __1:stdgo.GoInt64 = (0 : stdgo.GoInt64);
var _loadsSinceStore = __1, _stores = __0;
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i));
                {
                    _loadsSinceStore++;
                    if ((_loadsSinceStore > _stores : Bool)) {
                        _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_stores));
                        _loadsSinceStore = (0i64 : stdgo.GoInt64);
                        _stores++;
                    };
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkAdversarialDelete(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1024 : stdgo.GoInt) : Bool), _i++, {
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.load(stdgo.Go.toInterface(_i));
                if ((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _m.range(function(_k:stdgo.AnyInterface, __4:stdgo.AnyInterface):Bool {
                        _m.delete(_k);
                        return false;
                    });
                    _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkDeleteCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.delete(stdgo.Go.toInterface((0 : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.swap(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1023 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2046 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1023 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1023 : stdgo.GoInt) : Bool)) {
                    var _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                    _m.swap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                } else {
                    _m.swap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkSwapMostlyMisses(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1 : stdgo.GoInt) : Bool)) {
                    var _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                    _m.swap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                } else {
                    _m.swap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            while (_pb.next()) {
                if (_m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
                    _m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                };
            };
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapNoExistingKey(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndSwap(stdgo.Go.toInterface(_i), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)))) {
                    _m.delete(stdgo.Go.toInterface(_i));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapValueNotEqual(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.store(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                _m.compareAndSwap(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1023 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2046 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1023 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v = (_i : stdgo.GoInt);
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1023 : stdgo.GoInt) : Bool)) {
                    _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                };
                _m.compareAndSwap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndSwapMostlyMisses(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v = (_i : stdgo.GoInt);
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1 : stdgo.GoInt) : Bool)) {
                    _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                };
                _m.compareAndSwap(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteCollision(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            _m.loadOrStore(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                if (_m.compareAndDelete(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)))) {
                    _m.store(stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteMostlyHits(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<DeepCopyMap>)) : stdgo.Ref<DeepCopyMap>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.sync_test.Sync_test.DeepCopyMap>), _1 : false };
                }, __4 = __tmp__._0, _ok = __tmp__._1;
                if (_ok) {
                    _b.skip(stdgo.Go.toInterface(("DeepCopyMap has quadratic running time." : stdgo.GoString)));
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1023 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2046 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1023 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v = (_i : stdgo.GoInt);
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1023 : stdgo.GoInt) : Bool)) {
                    _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                };
                if (_m.compareAndDelete(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v))) {
                    _m.store(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function benchmarkCompareAndDeleteMostlyMisses(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _benchMap(_b, ({ _setup : function(__4:stdgo.Ref<stdgo._internal.testing.Testing.B>, _m:T_mapInterface):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (1 : stdgo.GoInt) : Bool), _i++, {
                    _m.loadOrStore(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_i));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                    _m.load(stdgo.Go.toInterface((_i % (1 : stdgo.GoInt) : stdgo.GoInt)));
                });
            };
        }, _perG : function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>, _i:stdgo.GoInt, _m:T_mapInterface):Void {
            stdgo.Go.cfor(_pb.next(), _i++, {
                var _v = (_i : stdgo.GoInt);
                if (((_i % (1024 : stdgo.GoInt) : stdgo.GoInt) < (1 : stdgo.GoInt) : Bool)) {
                    _v = (_i % (1024 : stdgo.GoInt) : stdgo.GoInt);
                };
                if (_m.compareAndDelete(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v))) {
                    _m.store(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(_v));
                };
            });
        } } : stdgo._internal.sync_test.Sync_test.T_bench));
    }
function _randValue(_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>):stdgo.AnyInterface {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_r.intn((4 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = ((97 : stdgo.GoUInt8) + (stdgo._internal.math.rand.Rand.intn((26 : stdgo.GoInt)) : stdgo.GoByte) : stdgo.GoUInt8);
        };
        return stdgo.Go.toInterface((_b : stdgo.GoString));
    }
function _applyCalls(_m:T_mapInterface, _calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>; } {
        var _results = (null : stdgo.Slice<stdgo._internal.sync_test.Sync_test.T_mapResult>), _final = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        for (__4 => _c in _calls) {
            var __tmp__ = _c._apply(_m), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            _results = (_results.__append__((new stdgo._internal.sync_test.Sync_test.T_mapResult(_v, _ok) : stdgo._internal.sync_test.Sync_test.T_mapResult)));
        };
        _final = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        _m.range(function(_k:stdgo.AnyInterface, _v:stdgo.AnyInterface):Bool {
            _final[_k] = _v;
            return true;
        });
        return { _0 : _results, _1 : _final };
    }
function _applyMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(stdgo._internal.sync.Sync.map_)), _calls);
    }
function _applyRWMutexMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(RWMutexMap_static_extension)), _calls);
    }
function _applyDeepCopyMap(_calls:stdgo.Slice<T_mapCall>):{ var _0 : stdgo.Slice<T_mapResult>; var _1 : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>; } {
        return _applyCalls(stdgo.Go.asInterface(_new(DeepCopyMap_static_extension)), _calls);
    }
function testMapMatchesRWMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _err = (stdgo._internal.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), stdgo.Go.toInterface(_applyRWMutexMap), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
function testMapMatchesDeepCopy(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _err = (stdgo._internal.testing.quick.Quick.checkEqual(stdgo.Go.toInterface(_applyMap), stdgo.Go.toInterface(_applyDeepCopyMap), null) : stdgo.Error);
            if (_err != null) {
                _t.error(stdgo.Go.toInterface(_err));
            };
        };
    }
function testConcurrentRange(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {};
            var _m = _new(stdgo._internal.sync.Sync.map_);
            {
                var _n = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                stdgo.Go.cfor((_n <= (1024i64 : stdgo.GoInt64) : Bool), _n++, {
                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface((_n : stdgo.GoInt64)));
                });
            };
            var _done = (new stdgo.Chan<T_httpPkg>(0, () -> ({} : T_httpPkg)) : stdgo.Chan<T_httpPkg>);
            var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if (_done != null) _done.__close__();
                    _wg.wait_();
                };
                a();
            });
            {
                var _g = (stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) : stdgo.GoInt64);
                stdgo.Go.cfor((_g > (0i64 : stdgo.GoInt64) : Bool), _g--, {
                    var _r = stdgo._internal.math.rand.Rand.new_(stdgo._internal.math.rand.Rand.newSource(_g));
                    _wg.add((1 : stdgo.GoInt));
                    stdgo.Go.routine(() -> {
                        var a = function(_g:stdgo.GoInt64):Void {
                            var __deferstack__:Array<Void -> Void> = [];
                            try {
                                __deferstack__.unshift(() -> _wg.done());
                                {
                                    var _i = ((0i64 : stdgo.GoInt64) : stdgo.GoInt64);
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
                                                stdgo._internal.internal.Async.tick();
                                            };
                                        };
                                        {
                                            var _n = ((1i64 : stdgo.GoInt64) : stdgo.GoInt64);
                                            stdgo.Go.cfor((_n < (1024i64 : stdgo.GoInt64) : Bool), _n++, {
                                                if (_r.int63n((1024i64 : stdgo.GoInt64)) == ((0i64 : stdgo.GoInt64))) {
                                                    _m.store(stdgo.Go.toInterface(_n), stdgo.Go.toInterface(((_n * _i : stdgo.GoInt64) * _g : stdgo.GoInt64)));
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
                                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
            var _iters = (1024 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing.short()) {
                _iters = (16 : stdgo.GoInt);
            };
            {
                var _n = (_iters : stdgo.GoInt);
                stdgo.Go.cfor((_n > (0 : stdgo.GoInt) : Bool), _n--, {
                    var _seen = ({
                        final x = new stdgo.GoMap.GoInt64Map<Bool>();
                        x.__defaultValue__ = () -> false;
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoInt64, Bool>);
                    _m.range(function(_ki:stdgo.AnyInterface, _vi:stdgo.AnyInterface):Bool {
                        var __0 = (stdgo.Go.typeAssert((_ki : stdgo.GoInt64)) : stdgo.GoInt64), __1 = (stdgo.Go.typeAssert((_vi : stdgo.GoInt64)) : stdgo.GoInt64);
var _v = __1, _k = __0;
                        if ((_v % _k : stdgo.GoInt64) != ((0i64 : stdgo.GoInt64))) {
                            _t.fatalf(("while Storing multiples of %v, Range saw value %v" : stdgo.GoString), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_v));
                        };
                        if ((_seen[_k] ?? false)) {
                            _t.fatalf(("Range visited key %v twice" : stdgo.GoString), stdgo.Go.toInterface(_k));
                        };
                        _seen[_k] = true;
                        return true;
                    });
                    if ((_seen.length) != ((1024 : stdgo.GoInt))) {
                        _t.fatalf(("Range visited %v elements of %v-element Map" : stdgo.GoString), stdgo.Go.toInterface((_seen.length)), stdgo.Go.toInterface((1024 : stdgo.GoInt)));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testIssue40999(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
        _m.store((null : stdgo.AnyInterface), stdgo.Go.toInterface((new T_httpPkg() : T_httpPkg)));
        var _finalized:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        while (stdgo._internal.sync.atomic_.Atomic_.loadUint32(stdgo.Go.pointer(_finalized)) == ((0u32 : stdgo.GoUInt32))) {
            var _p = _new(_int);
            stdgo._internal.runtime.Runtime.setFinalizer(stdgo.Go.toInterface(_p), stdgo.Go.toInterface(function(_0:stdgo.Pointer<stdgo.GoInt>):Void {
                stdgo._internal.sync.atomic_.Atomic_.addUint32(stdgo.Go.pointer(_finalized), (1u32 : stdgo.GoUInt32));
            }));
            _m.store(stdgo.Go.toInterface(_p), stdgo.Go.toInterface((new T_httpPkg() : T_httpPkg)));
            _m.delete(stdgo.Go.toInterface(_p));
            stdgo._internal.runtime.Runtime.gc();
        };
    }
function testMapRangeNestedCall(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m:stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
        for (_i => _v in (new stdgo.GoArray<stdgo.GoString>(3, 3, ...[("hello" : stdgo.GoString), ("world" : stdgo.GoString), ("Go" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)) {
            _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v));
        };
        _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
            _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
                {
                    var __tmp__ = _m.load(_key), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if ((!_ok || !stdgo._internal.reflect.Reflect.deepEqual(_v, _value) : Bool)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %+v want %+v" : stdgo.GoString), _v, _value);
                    };
                };
                {
                    var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface(("dummy" : stdgo.GoString))), __32:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _t.fatalf(("Nested Range loads unexpected value, want store a new value" : stdgo.GoString));
                    };
                };
                var _val = ("sync.Map" : stdgo.GoString);
                _m.store(stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface(_val));
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((42 : stdgo.GoInt))), _v:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if ((!_loaded || !stdgo._internal.reflect.Reflect.deepEqual(_v, stdgo.Go.toInterface(_val)) : Bool)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %v, want %v" : stdgo.GoString), _v, stdgo.Go.toInterface(_val));
                    };
                };
                return true;
            });
            _m.delete(_key);
            return true;
        });
        var _length = (0 : stdgo.GoInt);
        _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
            _length++;
            return true;
        });
        if (_length != ((0 : stdgo.GoInt))) {
            _t.fatalf(("Unexpected sync.Map size, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_length), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
    }
function testCompareAndSwap_NonExistingKey(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _m = (stdgo.Go.setRef((new stdgo._internal.sync.Sync.Map_() : stdgo._internal.sync.Sync.Map_)) : stdgo.Ref<stdgo._internal.sync.Sync.Map_>);
        if (_m.compareAndSwap(stdgo.Go.toInterface(stdgo.Go.asInterface(_m)), (null : stdgo.AnyInterface), stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
            _t.fatalf(("CompareAndSwap on an non-existing key succeeded" : stdgo.GoString));
        };
    }
function hammerSemaphore(_s:stdgo.Pointer<stdgo.GoUInt32>, _loops:stdgo.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loops : Bool), _i++, {
                runtime_Semacquire(_s);
                runtime_Semrelease(_s, false, (0 : stdgo.GoInt));
            });
        };
        _cdone.__send__(true);
    }
function testSemaphore(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _s = _new(_uint32);
        _s.value = (1u32 : stdgo.GoUInt32);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> hammerSemaphore(_s, (1000 : stdgo.GoInt), _c));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
    }
function benchmarkUncontendedSemaphore(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _s = _new(_uint32);
        _s.value = (1u32 : stdgo.GoUInt32);
        hammerSemaphore(_s, _b.n, (new stdgo.Chan<Bool>((2 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>));
    }
function benchmarkContendedSemaphore(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _b.stopTimer();
            var _s = _new(_uint32);
            _s.value = (1u32 : stdgo.GoUInt32);
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((2 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            _b.startTimer();
            stdgo.Go.routine(() -> hammerSemaphore(_s, (_b.n / (2 : stdgo.GoInt) : stdgo.GoInt), _c));
            stdgo.Go.routine(() -> hammerSemaphore(_s, (_b.n / (2 : stdgo.GoInt) : stdgo.GoInt), _c));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function hammerMutex(_m:stdgo.Ref<Mutex>, _loops:stdgo.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loops : Bool), _i++, {
                if ((_i % (3 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
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
function testMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _n = (stdgo._internal.runtime.Runtime.setMutexProfileFraction((1 : stdgo.GoInt)) : stdgo.GoInt);
                if (_n != ((0 : stdgo.GoInt))) {
                    _t.logf(("got mutexrate %d expected 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
                };
            };
            {
                var _a0 = (0 : stdgo.GoInt);
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.setMutexProfileFraction(_a0));
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
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                    stdgo.Go.routine(() -> hammerMutex(_m, (1000 : stdgo.GoInt), _c));
                });
            };
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testMutexMisuse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        stdgo._internal.internal.testenv.Testenv.mustHaveExec(stdgo.Go.asInterface(_t));
        for (__4 => _test in _misuseTests) {
            var __tmp__ = stdgo._internal.os.exec.Exec.command(stdgo._internal.os.Os.args[(0 : stdgo.GoInt)]?.__copy__(), ("TESTMISUSE" : stdgo.GoString), _test._name?.__copy__()).combinedOutput(), _out:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) || !stdgo._internal.strings.Strings.contains((_out : stdgo.GoString)?.__copy__(), ("unlocked" : stdgo.GoString)) : Bool)) {
                _t.errorf(("%s: did not find failure with message about unlocked lock: %s\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_out));
            };
        };
    }
function testMutexFairness(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _mu:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
            var _stop = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            {
                var _a0 = _stop;
                __deferstack__.unshift(() -> if (_a0 != null) _a0.__close__());
            };
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    while (true) {
                        _mu.lock();
                        stdgo._internal.time.Time.sleep((100000i64 : stdgo._internal.time.Time.Duration));
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
                                stdgo._internal.internal.Async.tick();
                            };
                        };
                    };
                };
                a();
            });
            var _done = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                            stdgo._internal.time.Time.sleep((100000i64 : stdgo._internal.time.Time.Duration));
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
                    } else if (stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)) != null && stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__isGet__()) {
                        __select__ = false;
                        {
                            stdgo._internal.time.Time.after((10000000000i64 : stdgo._internal.time.Time.Duration)).__get__();
                            {
                                _t.fatalf(("can\'t acquire Mutex in 10 seconds" : stdgo.GoString));
                            };
                        };
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
@:structInit @:using(stdgo._internal.sync_test.Sync_test.T_benchmarkMutexUncontended___localname___PaddedMutex_3777_static_extension) class T_benchmarkMutexUncontended___localname___PaddedMutex_3777 {
    @:embedded
    public var mutex : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public function new(?mutex:stdgo._internal.sync.Sync.Mutex, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
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
    public function _unlockSlow(_nameOff:stdgo.GoInt32) mutex._unlockSlow(_nameOff);
    public function __copy__() {
        return new T_benchmarkMutexUncontended___localname___PaddedMutex_3777(mutex, _pad);
    }
}
function benchmarkMutexUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _mu:T_benchmarkMutexUncontended___localname___PaddedMutex_3777 = ({} : stdgo._internal.sync_test.Sync_test.T_benchmarkMutexUncontended___localname___PaddedMutex_3777);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
            };
        });
    }
function _benchmarkMutex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _slack:Bool, _work:Bool):Void {
        var _mu:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        if (_slack) {
            _b.setParallelism((10 : stdgo.GoInt));
        };
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _mu.lock();
                _mu.unlock();
                if (_work) {
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        });
                    };
                };
            };
            var __blank__ = _foo;
        });
    }
function benchmarkMutex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkMutex(_b, false, false);
    }
function benchmarkMutexSlack(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkMutex(_b, true, false);
    }
function benchmarkMutexWork(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkMutex(_b, false, true);
    }
function benchmarkMutexWorkSlack(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkMutex(_b, true, true);
    }
function benchmarkMutexNoSpin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _acc1 = __1, _acc0 = __0;
        _b.setParallelism((4 : stdgo.GoInt));
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            var _data:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt64)]);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_pb.next(), _i++, {
                    if ((_i % (4 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _m.lock();
                        _acc0 = (_acc0 - ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _acc1 = (_acc1 + ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        _m.unlock();
                    } else {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (_data.length) : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                                _data[(_i : stdgo.GoInt)]++;
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
function benchmarkMutexSpin(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _m:Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
        var __0:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), __1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
var _acc1 = __1, _acc0 = __0;
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _data:stdgo.GoArray<stdgo.GoUInt64> = new stdgo.GoArray<stdgo.GoUInt64>(16384, 16384, ...[for (i in 0 ... 16384) (0 : stdgo.GoUInt64)]);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_pb.next(), _i++, {
                    _m.lock();
                    _acc0 = (_acc0 - ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _acc1 = (_acc1 + ((100i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _m.unlock();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_data.length) : Bool), _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt), {
                            _data[(_i : stdgo.GoInt)]++;
                        });
                    };
                });
            };
        });
    }
function _run(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _once:stdgo.Ref<Once>, _o:stdgo.Pointer<T_one>, _c:stdgo.Chan<Bool>):Void {
        _once.do_(function():Void {
            _o.value.increment(_o);
        });
        {
            var _v = (_o.value : stdgo._internal.sync_test.Sync_test.T_one);
            if (_v != ((1 : stdgo._internal.sync_test.Sync_test.T_one))) {
                _t.errorf(("once failed inside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_v)));
            };
        };
        _c.__send__(true);
    }
function testOnce(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _o = _new(_one);
        var _once = _new(once);
        var _c = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> _run(_t, _once, _o, _c));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.__get__();
            });
        };
        if (_o.value != ((1 : stdgo._internal.sync_test.Sync_test.T_one))) {
            _t.errorf(("once failed outside run: %d is not 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_o.value)));
        };
    }
function testOncePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _once:Once = ({} : stdgo._internal.sync.Sync.Once);
        {
            var a = function():Void {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    __deferstack__.unshift(() -> {
                        var a = function():Void {
                            {
                                var _r = ({
                                    final r = stdgo.Go.recover_exception;
                                    stdgo.Go.recover_exception = null;
                                    r;
                                } : stdgo.AnyInterface);
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
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function benchmarkOnce(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _once:Once = ({} : stdgo._internal.sync.Sync.Once);
        var _f = (function():Void {} : () -> Void);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _once.do_(_f);
            };
        });
    }
function testOnceFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceFunc(function():Void {
            _calls++;
        }) : () -> Void);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), _f) : stdgo.GoFloat64);
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testOnceValue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceValue((0 : stdgo.GoInt), function():stdgo.GoInt {
            _calls++;
            return _calls;
        }) : () -> stdgo.GoInt);
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _f();
        }) : stdgo.GoFloat64);
        var _value = (_f() : stdgo.GoInt);
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (_value != ((1 : stdgo.GoInt))) {
            _t.errorf(("want value==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_value));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function testOnceValues(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceValues((0 : stdgo.GoInt), (0 : stdgo.GoInt), function():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
            _calls++;
            return { _0 : _calls, _1 : (_calls + (1 : stdgo.GoInt) : stdgo.GoInt) };
        }) : () -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
        var _allocs = (stdgo._internal.testing.Testing.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _f();
        }) : stdgo.GoFloat64);
        var __tmp__ = _f(), _v1:stdgo.GoInt = __tmp__._0, _v2:stdgo.GoInt = __tmp__._1;
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
        if (((_v1 != (1 : stdgo.GoInt)) || (_v2 != (2 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("want v1==1 and v2==2, got %d and %d" : stdgo.GoString), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
        };
        if (_allocs != (0 : stdgo.GoFloat64)) {
            _t.errorf(("want 0 allocations per call, got %v" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
function _testOncePanicX(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _calls:stdgo.Pointer<stdgo.GoInt>, _f:() -> Void):Void {
        _testOncePanicWith(_t, _calls, _f, function(_label:stdgo.GoString, _p:stdgo.AnyInterface):Void {
            if (_p != (stdgo.Go.toInterface(("x" : stdgo.GoString)))) {
                _t.fatalf(("%s: want panic %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), stdgo.Go.toInterface(("x" : stdgo.GoString)), _p);
            };
        });
    }
function _testOncePanicWith(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _calls:stdgo.Pointer<stdgo.GoInt>, _f:() -> Void, _check:(_label:stdgo.GoString, _p:stdgo.AnyInterface) -> Void):Void {
        for (__4 => _label in (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("first time" : stdgo.GoString), ("second time" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _p:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            var _panicked = (true : Bool);
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
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        if (_calls.value != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls.value));
        };
    }
function testOnceFuncPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceFunc(function():Void {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> Void);
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), _f);
    }
function testOnceValuePanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceValue((0 : stdgo.GoInt), function():stdgo.GoInt {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> stdgo.GoInt);
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
function testOnceValuesPanic(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceValues((0 : stdgo.GoInt), (0 : stdgo.GoInt), function():{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
            _calls++;
            throw stdgo.Go.toInterface(("x" : stdgo.GoString));
        }) : () -> { var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; });
        _testOncePanicX(_t, stdgo.Go.pointer(_calls), function():Void {
            _f();
        });
    }
function testOnceFuncPanicNil(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceFunc(function():Void {
            _calls++;
            throw (null : stdgo.AnyInterface);
        }) : () -> Void);
        _testOncePanicWith(_t, stdgo.Go.pointer(_calls), _f, function(_label:stdgo.GoString, _p:stdgo.AnyInterface):Void {
            {
                final __type__ = _p;
                if (__type__ == null || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.runtime.Runtime.PanicNilError>))) {
                    return;
                };
            };
            _t.fatalf(("%s: want nil panic, got %v" : stdgo.GoString), stdgo.Go.toInterface(_label), _p);
        });
    }
function testOnceFuncGoexit(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _calls = (0 : stdgo.GoInt);
        var _f = (stdgo._internal.sync.Sync.onceFunc(function():Void {
            _calls++;
            stdgo._internal.runtime.Runtime.goexit();
        }) : () -> Void);
        var _wg:stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (2 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
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
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
        if (_calls != ((1 : stdgo.GoInt))) {
            _t.errorf(("want calls==1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_calls));
        };
    }
function testOnceFuncPanicTraceback(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _f = (stdgo._internal.sync.Sync.onceFunc(_onceFuncPanic) : () -> Void);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    {
                        var _p = ({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        } : stdgo.AnyInterface);
                        if (_p != (stdgo.Go.toInterface(("x" : stdgo.GoString)))) {
                            _t.fatalf(("want panic %v, got %v" : stdgo.GoString), stdgo.Go.toInterface(("x" : stdgo.GoString)), _p);
                        };
                    };
                    var _stack = stdgo._internal.runtime.debug.Debug.stack();
                    var _want = ("sync_test.onceFuncPanic" : stdgo.GoString);
                    if (!stdgo._internal.bytes.Bytes.contains(_stack, (_want : stdgo.Slice<stdgo.GoByte>))) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function benchmarkOnceFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _doOnceFunc();
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _onceFunc();
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            var _f = (stdgo._internal.sync.Sync.onceFunc(function():Void {}) : () -> Void);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    _f();
                });
            };
        });
    }
function _doOnceValue():stdgo.GoInt {
        _onceValueOnce.do_(function():Void {
            _onceValueValue = (42 : stdgo.GoInt);
        });
        return _onceValueValue;
    }
function benchmarkOnceValue(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.run(("v=Once" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_doOnceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Global" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_onceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
        _b.run(("v=Local" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
            _b.reportAllocs();
            var _onceValue = (stdgo._internal.sync.Sync.onceValue((0 : stdgo.GoInt), function():stdgo.GoInt {
                return (42 : stdgo.GoInt);
            }) : () -> stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {
                        var __0 = (42 : stdgo.GoInt), __1 = (_onceValue() : stdgo.GoInt);
var _got = __1, _want = __0;
                        if (_want != (_got)) {
                            _b.fatalf(("want %d, got %d" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
                        };
                    };
                });
            };
        });
    }
function testPool(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
            if (_p.get() != null) {
                _t.fatal(stdgo.Go.toInterface(("expected empty" : stdgo.GoString)));
            };
            runtime_procPin();
            _p.put(stdgo.Go.toInterface(("a" : stdgo.GoString)));
            _p.put(stdgo.Go.toInterface(("b" : stdgo.GoString)));
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("a" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want a" : stdgo.GoString), _g);
                };
            };
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("b" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want b" : stdgo.GoString), _g);
                };
            };
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != null) {
                    _t.fatalf(("got %#v; want nil" : stdgo.GoString), _g);
                };
            };
            runtime_procUnpin();
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                    _p.put(stdgo.Go.toInterface(("c" : stdgo.GoString)));
                });
            };
            stdgo._internal.runtime.Runtime.gc();
            {
                var _g = (_p.get() : stdgo.AnyInterface);
                if (_g != (stdgo.Go.toInterface(("c" : stdgo.GoString)))) {
                    _t.fatalf(("got %#v; want c after GC" : stdgo.GoString), _g);
                };
            };
            stdgo._internal.runtime.Runtime.gc();
            {
                var _g = (_p.get() : stdgo.AnyInterface);
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testPoolNew(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _i = (0 : stdgo.GoInt);
            var _p = ({ new_ : function():stdgo.AnyInterface {
                _i++;
                return stdgo.Go.toInterface(_i);
            } } : stdgo._internal.sync.Sync.Pool);
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((1 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 1" : stdgo.GoString), _v);
                };
            };
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((2 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 2" : stdgo.GoString), _v);
                };
            };
            runtime_procPin();
            _p.put(stdgo.Go.toInterface((42 : stdgo.GoInt)));
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((42 : stdgo.GoInt)))) {
                    _t.fatalf(("got %v; want 42" : stdgo.GoString), _v);
                };
            };
            runtime_procUnpin();
            {
                var _v = (_p.get() : stdgo.AnyInterface);
                if (_v != (stdgo.Go.toInterface((3 : stdgo.GoInt)))) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testPoolGC(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testPool(_t, true);
    }
function testPoolRelease(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testPool(_t, false);
    }
function _testPool(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _drain:Bool):Void {
        stdgo._internal.internal.Macro.controlFlow({
            var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
            {};
            @:label("loop") {
                var _try = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_try < (3 : stdgo.GoInt) : Bool), _try++, {
                    if (((_try == (1 : stdgo.GoInt)) && stdgo._internal.testing.Testing.short() : Bool)) {
                        break;
                    };
                    var __0:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), __1:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
var _fin1 = __1, _fin = __0;
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                            var _v = _new(_string);
                            stdgo._internal.runtime.Runtime.setFinalizer(stdgo.Go.toInterface(_v), stdgo.Go.toInterface(function(_vv:stdgo.Pointer<stdgo.GoString>):Void {
                                stdgo._internal.sync.atomic_.Atomic_.addUint32(stdgo.Go.pointer(_fin), (1u32 : stdgo.GoUInt32));
                            }));
                            _p.put(stdgo.Go.toInterface(_v));
                        });
                    };
                    if (_drain) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                _p.get();
                            });
                        };
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                            stdgo._internal.runtime.Runtime.gc();
                            stdgo._internal.time.Time.sleep(((((_i * (100 : stdgo.GoInt) : stdgo.GoInt) + (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time.Duration) * (1000000i64 : stdgo._internal.time.Time.Duration) : stdgo._internal.time.Time.Duration));
                            {
                                _fin1 = stdgo._internal.sync.atomic_.Atomic_.loadUint32(stdgo.Go.pointer(_fin));
                                if ((_fin1 >= (99u32 : stdgo.GoUInt32) : Bool)) {
                                    @:jump("loop") continue;
                                };
                            };
                        });
                    };
                    _t.fatalf(("only %v out of %v resources are finalized on try %v" : stdgo.GoString), stdgo.Go.toInterface(_fin1), stdgo.Go.toInterface((100 : stdgo.GoInt)), stdgo.Go.toInterface(_try));
                });
            };
        });
    }
function testPoolStress(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var n = ((1000000 : stdgo.GoInt) : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            n = (n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
        var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _v:stdgo.AnyInterface = stdgo.Go.toInterface((0 : stdgo.GoInt));
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < n : Bool), _j++, {
                                if (_v == null) {
                                    _v = stdgo.Go.toInterface((0 : stdgo.GoInt));
                                };
                                _p.put(_v);
                                _v = _p.get();
                                if (((_v != null) && ((stdgo.Go.typeAssert((_v : stdgo.GoInt)) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
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
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _done.__get__();
            });
        };
    }
function testPoolDequeue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testPoolDequeue(_t, newPoolDequeue((16 : stdgo.GoInt)));
    }
function testPoolChain(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        _testPoolDequeue(_t, newPoolChain());
    }
function _testPoolDequeue(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _d:PoolDequeue):Void {
        {};
        var n:stdgo.GoInt = (2000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing.short()) {
            n = (1000 : stdgo.GoInt);
        };
        var _have = (new stdgo.Slice<stdgo.GoInt32>((n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var _stop:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _wg:WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        var _record = (function(_val:stdgo.GoInt):Void {
            stdgo._internal.sync.atomic_.Atomic_.addInt32(stdgo.Go.pointer(_have[(_val : stdgo.GoInt)]), (1 : stdgo.GoInt32));
            if (_val == ((n - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                stdgo._internal.sync.atomic_.Atomic_.storeInt32(stdgo.Go.pointer(_stop), (1 : stdgo.GoInt32));
            };
        } : stdgo.GoInt -> Void);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        var _fail = (0 : stdgo.GoInt);
                        while (stdgo._internal.sync.atomic_.Atomic_.loadInt32(stdgo.Go.pointer(_stop)) == ((0 : stdgo.GoInt32))) {
                            var __tmp__ = _d.popTail(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _fail = (0 : stdgo.GoInt);
                                _record((stdgo.Go.typeAssert((_val : stdgo.GoInt)) : stdgo.GoInt));
                            } else {
                                {
                                    _fail++;
                                    if ((_fail % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                        stdgo._internal.runtime.Runtime.gosched();
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
        var _nPopHead = (0 : stdgo.GoInt);
        _wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < n : Bool), _j++, {
                        while (!_d.pushHead(stdgo.Go.toInterface(_j))) {
                            stdgo._internal.runtime.Runtime.gosched();
                        };
                        if ((_j % (10 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                            var __tmp__ = _d.popHead(), _val:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                _nPopHead++;
                                _record((stdgo.Go.typeAssert((_val : stdgo.GoInt)) : stdgo.GoInt));
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
            if (_count != ((1 : stdgo.GoInt32))) {
                _t.errorf(("expected have[%d] = 1, got %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_count));
            };
        };
        if ((!stdgo._internal.testing.Testing.short() && (_nPopHead == (0 : stdgo.GoInt)) : Bool)) {
            _t.errorf(("popHead never succeeded" : stdgo.GoString));
        };
    }
function benchmarkPool(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                _p.get();
            };
        });
    }
function benchmarkPoolOverflow(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < (100 : stdgo.GoInt) : Bool), _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                    });
                };
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < (100 : stdgo.GoInt) : Bool), _b++, {
                        _p.get();
                    });
                };
            };
        });
    }
function benchmarkPoolStarvation(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
        var _count = (100 : stdgo.GoInt);
        var _countStarved = (_count - (((_count : stdgo.GoFloat32) * (0.33000001311302185 : stdgo.GoFloat64) : stdgo.GoFloat32) : stdgo.GoInt) : stdgo.GoInt);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < _countStarved : Bool), _b++, {
                        _p.put(stdgo.Go.toInterface((1 : stdgo.GoInt)));
                    });
                };
                {
                    var _b = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_b < _count : Bool), _b++, {
                        _p.get();
                    });
                };
            };
        });
    }
function benchmarkPoolSTW(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.debug.Debug.setGCPercent((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.debug.Debug.setGCPercent(_a0));
            };
            var _mstats:stdgo._internal.runtime.Runtime.MemStats = ({} : stdgo._internal.runtime.Runtime.MemStats);
            var _pauses:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
            var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    {};
                    var _item:stdgo.AnyInterface = stdgo.Go.toInterface((42 : stdgo.GoInt));
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (100000 : stdgo.GoInt) : Bool), _i++, {
                            _p.put(_item);
                        });
                    };
                    stdgo._internal.runtime.Runtime.gc();
                    stdgo._internal.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats) : stdgo.Ref<stdgo._internal.runtime.Runtime.MemStats>));
                    _pauses = (_pauses.__append__(_mstats.pauseNs[((((_mstats.numGC + (255u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) % (256u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)]));
                });
            };
            stdgo._internal.sort.Sort.slice(stdgo.Go.toInterface(_pauses), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                return (_pauses[(_i : stdgo.GoInt)] < _pauses[(_j : stdgo.GoInt)] : Bool);
            });
            var _total:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            for (__12 => _ns in _pauses) {
                _total = (_total + (_ns) : stdgo.GoUInt64);
            };
            _b.reportMetric(((_total : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("ns/op" : stdgo.GoString));
            _b.reportMetric((_pauses[(((_pauses.length) * (95 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p95-ns/STW" : stdgo.GoString));
            _b.reportMetric((_pauses[(((_pauses.length) * (50 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoFloat64), ("p50-ns/STW" : stdgo.GoString));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function benchmarkPoolExpensiveNew(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            _globalSink = stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>((8388608 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>));
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    _globalSink = (null : stdgo.AnyInterface);
                };
                a();
            });
            var _p:Pool = ({} : stdgo._internal.sync.Sync.Pool);
            var _nNew:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            _p.new_ = function():stdgo.AnyInterface {
                stdgo._internal.sync.atomic_.Atomic_.addUint64(stdgo.Go.pointer(_nNew), (1i64 : stdgo.GoUInt64));
                stdgo._internal.time.Time.sleep((1000000i64 : stdgo._internal.time.Time.Duration));
                return stdgo.Go.toInterface((42 : stdgo.GoInt));
            };
            var __0:stdgo._internal.runtime.Runtime.MemStats = ({} : stdgo._internal.runtime.Runtime.MemStats), __1:stdgo._internal.runtime.Runtime.MemStats = ({} : stdgo._internal.runtime.Runtime.MemStats);
var _mstats2 = __1, _mstats1 = __0;
            stdgo._internal.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats1) : stdgo.Ref<stdgo._internal.runtime.Runtime.MemStats>));
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
                var _items = (new stdgo.Slice<stdgo.AnyInterface>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.AnyInterface>);
                var _sink:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
                while (_pb.next()) {
                    for (_i => _ in _items) {
                        _items[(_i : stdgo.GoInt)] = _p.get();
                        _sink = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    for (_i => _v in _items) {
                        _p.put(_v);
                        _items[(_i : stdgo.GoInt)] = (null : stdgo.AnyInterface);
                    };
                };
                var __blank__ = _sink;
            });
            stdgo._internal.runtime.Runtime.readMemStats((stdgo.Go.setRef(_mstats2) : stdgo.Ref<stdgo._internal.runtime.Runtime.MemStats>));
            _b.reportMetric((((_mstats2.numGC - _mstats1.numGC : stdgo.GoUInt32) : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("GCs/op" : stdgo.GoString));
            _b.reportMetric(((_nNew : stdgo.GoFloat64) / (_b.n : stdgo.GoFloat64) : stdgo.GoFloat64), ("New/op" : stdgo.GoString));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
@:structInit class T_benchmarkSemaUncontended___localname___PaddedSem_275 {
    public var _sem : stdgo.GoUInt32 = 0;
    public var _pad : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt32)]);
    public function new(?_sem:stdgo.GoUInt32, ?_pad:stdgo.GoArray<stdgo.GoUInt32>) {
        if (_sem != null) this._sem = _sem;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkSemaUncontended___localname___PaddedSem_275(_sem, _pad);
    }
}
function benchmarkSemaUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _sem = _new(paddedSem);
            while (_pb.next()) {
                runtime_Semrelease(stdgo.Go.pointer(_sem._sem), false, (0 : stdgo.GoInt));
                runtime_Semacquire(stdgo.Go.pointer(_sem._sem));
            };
        });
    }
function _benchmarkSema(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _block:Bool, _work:Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (_b.n == ((0 : stdgo.GoInt))) {
                return;
            };
            var _sem = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            if (_block) {
                var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        {
                            var _p = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_p < (stdgo._internal.runtime.Runtime.gomaxprocs((0 : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _p++, {
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
            _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
                var _foo = (0 : stdgo.GoInt);
                while (_pb.next()) {
                    runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.GoInt));
                    if (_work) {
                        {
                            var _i = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {
                                _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            });
                        };
                    };
                    runtime_Semacquire(stdgo.Go.pointer(_sem));
                };
                var __blank__ = _foo;
                runtime_Semrelease(stdgo.Go.pointer(_sem), false, (0 : stdgo.GoInt));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function benchmarkSemaSyntNonblock(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSema(_b, false, false);
    }
function benchmarkSemaSyntBlock(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSema(_b, true, false);
    }
function benchmarkSemaWorkNonblock(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSema(_b, false, true);
    }
function benchmarkSemaWorkBlock(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkSema(_b, true, true);
    }
function _parallelReader(_m:stdgo.Ref<RWMutex>, _clocked:stdgo.Chan<Bool>, _cunlock:stdgo.Chan<Bool>, _cdone:stdgo.Chan<Bool>):Void {
        _m.rlock();
        _clocked.__send__(true);
        _cunlock.__get__();
        _m.runlock();
        _cdone.__send__(true);
    }
function _doTestParallelReaders(_numReaders:stdgo.GoInt, _gomaxprocs:stdgo.GoInt):Void {
        stdgo._internal.runtime.Runtime.gomaxprocs(_gomaxprocs);
        var _m:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        var _clocked = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _cunlock = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        var _cdone = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                stdgo.Go.routine(() -> _parallelReader((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.sync.Sync.RWMutex>), _clocked, _cunlock, _cdone));
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _clocked.__get__();
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _cunlock.__send__(true);
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
                _cdone.__get__();
            });
        };
    }
function testParallelReaders(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            {
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            _doTestParallelReaders((1 : stdgo.GoInt), (4 : stdgo.GoInt));
            _doTestParallelReaders((3 : stdgo.GoInt), (4 : stdgo.GoInt));
            _doTestParallelReaders((4 : stdgo.GoInt), (2 : stdgo.GoInt));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function _reader(_rwm:stdgo.Ref<RWMutex>, _num_iterations:stdgo.GoInt, _activity:stdgo.Pointer<stdgo.GoInt32>, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _num_iterations : Bool), _i++, {
                _rwm.rlock();
                var _n = (stdgo._internal.sync.atomic_.Atomic_.addInt32(_activity, (1 : stdgo.GoInt32)) : stdgo.GoInt32);
                if (((_n < (1 : stdgo.GoInt32) : Bool) || (_n >= (10000 : stdgo.GoInt32) : Bool) : Bool)) {
                    _rwm.runlock();
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("wlock(%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_n)));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {});
                };
                stdgo._internal.sync.atomic_.Atomic_.addInt32(_activity, (-1 : stdgo.GoInt32));
                _rwm.runlock();
            });
        };
        _cdone.__send__(true);
    }
function _writer(_rwm:stdgo.Ref<RWMutex>, _num_iterations:stdgo.GoInt, _activity:stdgo.Pointer<stdgo.GoInt32>, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _num_iterations : Bool), _i++, {
                _rwm.lock();
                var _n = (stdgo._internal.sync.atomic_.Atomic_.addInt32(_activity, (10000 : stdgo.GoInt32)) : stdgo.GoInt32);
                if (_n != ((10000 : stdgo.GoInt32))) {
                    _rwm.unlock();
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt.sprintf(("wlock(%d)\n" : stdgo.GoString), stdgo.Go.toInterface(_n)));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (100 : stdgo.GoInt) : Bool), _i++, {});
                };
                stdgo._internal.sync.atomic_.Atomic_.addInt32(_activity, (-10000 : stdgo.GoInt32));
                _rwm.unlock();
            });
        };
        _cdone.__send__(true);
    }
function hammerRWMutex(_gomaxprocs:stdgo.GoInt, _numReaders:stdgo.GoInt, _num_iterations:stdgo.GoInt):Void {
        stdgo._internal.runtime.Runtime.gomaxprocs(_gomaxprocs);
        var _activity:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _rwm:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        var _cdone = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
        stdgo.Go.routine(() -> _writer((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_numReaders / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                stdgo.Go.routine(() -> _reader((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
            });
        };
        stdgo.Go.routine(() -> _writer((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        stdgo.Go.cfor((_i < _numReaders : Bool), _i++, {
            stdgo.Go.routine(() -> _reader((stdgo.Go.setRef(_rwm) : stdgo.Ref<stdgo._internal.sync.Sync.RWMutex>), _num_iterations, stdgo.Go.pointer(_activity), _cdone));
        });
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < ((2 : stdgo.GoInt) + _numReaders : stdgo.GoInt) : Bool), _i++, {
                _cdone.__get__();
            });
        };
    }
function testRWMutex(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _m:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
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
                var _a0 = stdgo._internal.runtime.Runtime.gomaxprocs((-1 : stdgo.GoInt));
                __deferstack__.unshift(() -> stdgo._internal.runtime.Runtime.gomaxprocs(_a0));
            };
            var _n = (1000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing.short()) {
                _n = (5 : stdgo.GoInt);
            };
            hammerRWMutex((1 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            hammerRWMutex((1 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            hammerRWMutex((1 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            hammerRWMutex((4 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            hammerRWMutex((4 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            hammerRWMutex((4 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            hammerRWMutex((10 : stdgo.GoInt), (1 : stdgo.GoInt), _n);
            hammerRWMutex((10 : stdgo.GoInt), (3 : stdgo.GoInt), _n);
            hammerRWMutex((10 : stdgo.GoInt), (10 : stdgo.GoInt), _n);
            hammerRWMutex((10 : stdgo.GoInt), (5 : stdgo.GoInt), _n);
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testRLocker(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _wl:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        var _rl:Locker = (null : stdgo._internal.sync.Sync.Locker);
        var _wlocked = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        var _rlocked = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        _rl = _wl.rlocker();
        var _n = (10 : stdgo.GoInt);
        stdgo.Go.routine(() -> {
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _n : Bool), _i++, {
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
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
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
                        stdgo._internal.internal.Async.tick();
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
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _wl.unlock();
            });
        };
    }
@:structInit @:using(stdgo._internal.sync_test.Sync_test.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_static_extension) class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090 {
    @:embedded
    public var rwmutex : stdgo._internal.sync.Sync.RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
    public var _pad : stdgo.GoArray<stdgo.GoUInt32> = new stdgo.GoArray<stdgo.GoUInt32>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt32)]);
    public function new(?rwmutex:stdgo._internal.sync.Sync.RWMutex, ?_pad:stdgo.GoArray<stdgo.GoUInt32>) {
        if (rwmutex != null) this.rwmutex = rwmutex;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function lock() rwmutex.lock();
    @:embedded
    public function rlock() rwmutex.rlock();
    @:embedded
    public function rlocker():stdgo._internal.sync.Sync.Locker return rwmutex.rlocker();
    @:embedded
    public function runlock() rwmutex.runlock();
    @:embedded
    public function tryLock():Bool return rwmutex.tryLock();
    @:embedded
    public function tryRLock():Bool return rwmutex.tryRLock();
    @:embedded
    public function unlock() rwmutex.unlock();
    @:embedded
    public function _rUnlockSlow(_nameOff:stdgo.GoInt32) rwmutex._rUnlockSlow(_nameOff);
    public function __copy__() {
        return new T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090(rwmutex, _pad);
    }
}
function benchmarkRWMutexUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _rwm:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090 = ({} : stdgo._internal.sync_test.Sync_test.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090);
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
function _benchmarkRWMutex(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _localWork:stdgo.GoInt, _writeRatio:stdgo.GoInt):Void {
        var _rwm:RWMutex = ({} : stdgo._internal.sync.Sync.RWMutex);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _foo++;
                if ((_foo % _writeRatio : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _rwm.lock();
                    _rwm.unlock();
                } else {
                    _rwm.rlock();
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i != (_localWork), _i = (_i + ((1 : stdgo.GoInt)) : stdgo.GoInt), {
                            _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                            _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        });
                    };
                    _rwm.runlock();
                };
            };
            var __blank__ = _foo;
        });
    }
function benchmarkRWMutexWrite100(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (0 : stdgo.GoInt), (100 : stdgo.GoInt));
    }
function benchmarkRWMutexWrite10(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (0 : stdgo.GoInt), (10 : stdgo.GoInt));
    }
function benchmarkRWMutexWorkWrite100(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (100 : stdgo.GoInt), (100 : stdgo.GoInt));
    }
function benchmarkRWMutexWorkWrite10(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkRWMutex(_b, (100 : stdgo.GoInt), (10 : stdgo.GoInt));
    }
function _testWaitGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>, _wg1:stdgo.Ref<WaitGroup>, _wg2:stdgo.Ref<WaitGroup>):Void {
        var _n = (16 : stdgo.GoInt);
        _wg1.add(_n);
        _wg2.add(_n);
        var _exited = (new stdgo.Chan<Bool>((_n : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
        {
            var _i = (0 : stdgo.GoInt);
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
            var _i = (0 : stdgo.GoInt);
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
                        stdgo._internal.internal.Async.tick();
                    };
                };
                _wg2.done();
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != (_n), _i++, {
                _exited.__get__();
            });
        };
    }
function testWaitGroup(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var _wg1 = (stdgo.Go.setRef((new stdgo._internal.sync.Sync.WaitGroup() : stdgo._internal.sync.Sync.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>);
        var _wg2 = (stdgo.Go.setRef((new stdgo._internal.sync.Sync.WaitGroup() : stdgo._internal.sync.Sync.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i != ((8 : stdgo.GoInt)), _i++, {
                _testWaitGroup(_t, _wg1, _wg2);
            });
        };
    }
function testWaitGroupMisuse(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var _err = ({
                        final r = stdgo.Go.recover_exception;
                        stdgo.Go.recover_exception = null;
                        r;
                    } : stdgo.AnyInterface);
                    if (_err != (stdgo.Go.toInterface(("sync: negative WaitGroup counter" : stdgo.GoString)))) {
                        _t.fatalf(("Unexpected panic: %#v" : stdgo.GoString), _err);
                    };
                };
                a();
            });
            var _wg = (stdgo.Go.setRef((new stdgo._internal.sync.Sync.WaitGroup() : stdgo._internal.sync.Sync.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>);
            _wg.add((1 : stdgo.GoInt));
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
function testWaitGroupRace(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (1000 : stdgo.GoInt) : Bool), _i++, {
                var _wg = (stdgo.Go.setRef((new stdgo._internal.sync.Sync.WaitGroup() : stdgo._internal.sync.Sync.WaitGroup)) : stdgo.Ref<stdgo._internal.sync.Sync.WaitGroup>);
                var _n = _new(_int32);
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic_.addInt32(_n, (1 : stdgo.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.add((1 : stdgo.GoInt));
                stdgo.Go.routine(() -> {
                    var a = function():Void {
                        stdgo._internal.sync.atomic_.Atomic_.addInt32(_n, (1 : stdgo.GoInt32));
                        _wg.done();
                    };
                    a();
                });
                _wg.wait_();
                if (stdgo._internal.sync.atomic_.Atomic_.loadInt32(_n) != ((2 : stdgo.GoInt32))) {
                    _t.fatal(stdgo.Go.toInterface(("Spurious wakeup from Wait" : stdgo.GoString)));
                };
            });
        };
    }
@:structInit class T_testWaitGroupAlign___localname___X_1662 {
    public var _x : stdgo.GoUInt8 = 0;
    public var _wg : stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
    public function new(?_x:stdgo.GoUInt8, ?_wg:stdgo._internal.sync.Sync.WaitGroup) {
        if (_x != null) this._x = _x;
        if (_wg != null) this._wg = _wg;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testWaitGroupAlign___localname___X_1662(_x, _wg);
    }
}
function testWaitGroupAlign(_t:stdgo.Ref<stdgo._internal.testing.Testing.T_>):Void {
        {};
        var _x:T_testWaitGroupAlign___localname___X_1662 = ({} : stdgo._internal.sync_test.Sync_test.T_testWaitGroupAlign___localname___X_1662);
        _x._wg.add((1 : stdgo.GoInt));
        stdgo.Go.routine(() -> {
            var a = function(_x:stdgo.Ref<T_testWaitGroupAlign___localname___X_1662>):Void {
                _x._wg.done();
            };
            a((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo._internal.sync_test.Sync_test.T_testWaitGroupAlign___localname___X_1662>));
        });
        _x._wg.wait_();
    }
@:structInit @:using(stdgo._internal.sync_test.Sync_test.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_static_extension) class T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834 {
    @:embedded
    public var waitGroup : stdgo._internal.sync.Sync.WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public function new(?waitGroup:stdgo._internal.sync.Sync.WaitGroup, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
        if (waitGroup != null) this.waitGroup = waitGroup;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_skip:stdgo.GoInt) waitGroup.add(_skip);
    @:embedded
    public function done() waitGroup.done();
    @:embedded
    public function wait_() waitGroup.wait_();
    public function __copy__() {
        return new T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834(waitGroup, _pad);
    }
}
function benchmarkWaitGroupUncontended(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        {};
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _wg:T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834 = ({} : stdgo._internal.sync_test.Sync_test.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834);
            while (_pb.next()) {
                _wg.add((1 : stdgo.GoInt));
                _wg.done();
                _wg.wait_();
            };
        });
    }
function _benchmarkWaitGroupAddDone(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _localWork:stdgo.GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _wg.add((1 : stdgo.GoInt));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _localWork : Bool), _i++, {
                        _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    });
                };
                _wg.done();
            };
            var __blank__ = _foo;
        });
    }
function benchmarkWaitGroupAddDone(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkWaitGroupAddDone(_b, (0 : stdgo.GoInt));
    }
function benchmarkWaitGroupAddDoneWork(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkWaitGroupAddDone(_b, (100 : stdgo.GoInt));
    }
function _benchmarkWaitGroupWait(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>, _localWork:stdgo.GoInt):Void {
        var _wg:WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            var _foo = (0 : stdgo.GoInt);
            while (_pb.next()) {
                _wg.wait_();
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _localWork : Bool), _i++, {
                        _foo = (_foo * ((2 : stdgo.GoInt)) : stdgo.GoInt);
                        _foo = (_foo / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    });
                };
            };
            var __blank__ = _foo;
        });
    }
function benchmarkWaitGroupWait(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkWaitGroupWait(_b, (0 : stdgo.GoInt));
    }
function benchmarkWaitGroupWaitWork(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _benchmarkWaitGroupWait(_b, (100 : stdgo.GoInt));
    }
function benchmarkWaitGroupActuallyWait(_b:stdgo.Ref<stdgo._internal.testing.Testing.B>):Void {
        _b.reportAllocs();
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing.PB>):Void {
            while (_pb.next()) {
                var _wg:WaitGroup = ({} : stdgo._internal.sync.Sync.WaitGroup);
                _wg.add((1 : stdgo.GoInt));
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
            if (((stdgo._internal.os.Os.args.length == (3 : stdgo.GoInt)) && (stdgo._internal.os.Os.args[(1 : stdgo.GoInt)] == ("TESTMISUSE" : stdgo.GoString)) : Bool)) {
                for (__4 => _test in _misuseTests) {
                    if (_test._name == (stdgo._internal.os.Os.args[((2 : stdgo.GoInt) : stdgo.GoInt)])) {
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
                                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
                        stdgo._internal.fmt.Fmt.printf(("test completed\n" : stdgo.GoString));
                        Sys.exit((0 : stdgo.GoInt));
                    };
                };
                stdgo._internal.fmt.Fmt.printf(("unknown test\n" : stdgo.GoString));
                Sys.exit((0 : stdgo.GoInt));
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_httpPkg>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_httpPkg_asInterface) class T_httpPkg_static_extension {
    @:keep
    static public function get( _:T_httpPkg, _url:stdgo.GoString):Void {
        @:recv var _:T_httpPkg = _?.__copy__();
    }
}
class RWMutexMap_asInterface {
    @:keep
    public dynamic function range(_f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:stdgo.AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<RWMutexMap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.RWMutexMap_asInterface) class RWMutexMap_static_extension {
    @:keep
    static public function range( _m:stdgo.Ref<RWMutexMap>, _f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        _m._mu.rlock();
        var _keys = (new stdgo.Slice<stdgo.AnyInterface>((0 : stdgo.GoInt).toBasic(), (_m._dirty.length)) : stdgo.Slice<stdgo.AnyInterface>);
        for (_k => _ in _m._dirty) {
            _keys = (_keys.__append__(_k));
        };
        _m._mu.runlock();
        for (__28 => _k in _keys) {
            var __tmp__ = _m.load(_k), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                continue;
            };
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted = false;
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
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    static public function compareAndSwap( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped = false;
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
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    static public function delete( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _m._mu.unlock();
            return { _0 : (null : stdgo.AnyInterface), _1 : false };
        };
        if (_m._dirty != null) _m._dirty.remove(_key);
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        };
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (!_loaded) {
            _actual = _value;
            if (_m._dirty == null) {
                _m._dirty = ({
                    final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                    x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                    {};
                    cast x;
                } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
            };
            _m._dirty[_key] = _value;
        };
        _m._mu.unlock();
        return { _0 : _actual, _1 : _loaded };
    }
    @:keep
    static public function store( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        _m._mu.lock();
        if (_m._dirty == null) {
            _m._dirty = ({
                final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                {};
                cast x;
            } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        };
        _m._dirty[_key] = _value;
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.Ref<RWMutexMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<RWMutexMap> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        _m._mu.rlock();
        {
            var __tmp__ = (_m._dirty != null && _m._dirty.exists(_key) ? { _0 : _m._dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        _m._mu.runlock();
        return { _0 : _value, _1 : _ok };
    }
}
class DeepCopyMap_asInterface {
    @:keep
    public dynamic function _dirty():stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> return __self__.value._dirty();
    @:keep
    public dynamic function range(_f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void __self__.value.range(_f);
    @:keep
    public dynamic function compareAndDelete(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool return __self__.value.compareAndDelete(_key, _old);
    @:keep
    public dynamic function compareAndSwap(_key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool return __self__.value.compareAndSwap(_key, _old, _new);
    @:keep
    public dynamic function delete(_key:stdgo.AnyInterface):Void __self__.value.delete(_key);
    @:keep
    public dynamic function loadAndDelete(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadAndDelete(_key);
    @:keep
    public dynamic function swap(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.swap(_key, _value);
    @:keep
    public dynamic function loadOrStore(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.loadOrStore(_key, _value);
    @:keep
    public dynamic function store(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void __self__.value.store(_key, _value);
    @:keep
    public dynamic function load(_key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value.load(_key);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<DeepCopyMap>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.DeepCopyMap_asInterface) class DeepCopyMap_static_extension {
    @:keep
    static public function _dirty( _m:stdgo.Ref<DeepCopyMap>):stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface> {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        var _dirty = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        for (_k => _v in _clean) {
            _dirty[_k] = _v;
        };
        return _dirty;
    }
    @:keep
    static public function range( _m:stdgo.Ref<DeepCopyMap>, _f:(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface) -> Bool):Void {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        for (_k => _v in _clean) {
            if (!_f(_k, _v)) {
                break;
            };
        };
    }
    @:keep
    static public function compareAndDelete( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _deleted = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _previous:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_previous != _old) : Bool)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    static public function compareAndSwap( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface, _old:stdgo.AnyInterface, _new:stdgo.AnyInterface):Bool {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var __deferstack__:Array<Void -> Void> = [];
        var _swapped = false;
        try {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            }, _clean = __tmp__._0, __4 = __tmp__._1;
            {
                var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _previous:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                if ((!_ok || (_previous != _old) : Bool)) {
                    return false;
                };
            };
            _m._mu.lock();
            __deferstack__.unshift(() -> _m._mu.unlock());
            var _dirty = _m._dirty();
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false }), _value:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
            if ((_loaded && (_value == _old) : Bool)) {
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
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
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
    static public function delete( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function loadAndDelete( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var _value = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_dirty != null) _dirty.remove(_key);
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _value, _1 : _loaded };
    }
    @:keep
    static public function swap( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var _previous = (null : stdgo.AnyInterface), _loaded = false;
        _m._mu.lock();
        var _dirty = _m._dirty();
        {
            var __tmp__ = (_dirty != null && _dirty.exists(_key) ? { _0 : _dirty[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _previous = __tmp__._0;
            _loaded = __tmp__._1;
        };
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
        return { _0 : _previous, _1 : _loaded };
    }
    @:keep
    static public function loadOrStore( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var _actual = (null : stdgo.AnyInterface), _loaded = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _actual = __tmp__._0;
            _loaded = __tmp__._1;
        };
        if (_loaded) {
            return { _0 : _actual, _1 : _loaded };
        };
        _m._mu.lock();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
            };
            _clean = __tmp__._0;
        };
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
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
    static public function store( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Void {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        _m._mu.lock();
        var _dirty = _m._dirty();
        _dirty[_key] = _value;
        _m._clean.store(stdgo.Go.toInterface(_dirty));
        _m._mu.unlock();
    }
    @:keep
    static public function load( _m:stdgo.Ref<DeepCopyMap>, _key:stdgo.AnyInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _m:stdgo.Ref<DeepCopyMap> = _m;
        var _value = (null : stdgo.AnyInterface), _ok = false;
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((_m._clean.load() : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>)) : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>), _1 : false };
        }, _clean = __tmp__._0, __4 = __tmp__._1;
        {
            var __tmp__ = (_clean != null && _clean.exists(_key) ? { _0 : _clean[_key], _1 : true } : { _0 : (null : stdgo.AnyInterface), _1 : false });
            _value = __tmp__._0;
            _ok = __tmp__._1;
        };
        return { _0 : _value, _1 : _ok };
    }
}
class T_mapCall_asInterface {
    @:keep
    public dynamic function generate(_r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value return __self__.value.generate(_r, _size);
    @:keep
    public dynamic function _apply(_m:T_mapInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } return __self__.value._apply(_m);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_mapCall>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_mapCall_asInterface) class T_mapCall_static_extension {
    @:keep
    static public function generate( _:T_mapCall, _r:stdgo.Ref<stdgo._internal.math.rand.Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect.Value {
        @:recv var _:T_mapCall = _?.__copy__();
        var _c = ({ _op : _mapOps[(stdgo._internal.math.rand.Rand.intn((_mapOps.length)) : stdgo.GoInt)], _k : _randValue(_r) } : stdgo._internal.sync_test.Sync_test.T_mapCall);
        {
            final __value__ = _c._op;
            if (__value__ == ((("Store" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp)) || __value__ == ((("LoadOrStore" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                _c._v = _randValue(_r);
            };
        };
        return stdgo._internal.reflect.Reflect.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(_c)))?.__copy__();
    }
    @:keep
    static public function _apply( _c:T_mapCall, _m:T_mapInterface):{ var _0 : stdgo.AnyInterface; var _1 : Bool; } {
        @:recv var _c:T_mapCall = _c?.__copy__();
        {
            final __value__ = _c._op;
            if (__value__ == ((("Load" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                return _m.load(_c._k);
            } else if (__value__ == ((("Store" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                _m.store(_c._k, _c._v);
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("LoadOrStore" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                return _m.loadOrStore(_c._k, _c._v);
            } else if (__value__ == ((("LoadAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                return _m.loadAndDelete(_c._k);
            } else if (__value__ == ((("Delete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                _m.delete(_c._k);
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("Swap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                return _m.swap(_c._k, _c._v);
            } else if (__value__ == ((("CompareAndSwap" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndSwap(_c._k, _c._v, stdgo.Go.toInterface(stdgo._internal.math.rand.Rand.int_()))) {
                    _m.delete(_c._k);
                    return { _0 : _c._v, _1 : true };
                };
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
            } else if (__value__ == ((("CompareAndDelete" : stdgo.GoString) : stdgo._internal.sync_test.Sync_test.T_mapOp))) {
                if (_m.compareAndDelete(_c._k, _c._v)) {
                    {
                        var __tmp__ = _m.load(_c._k), __4:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (!_ok) {
                            return { _0 : (null : stdgo.AnyInterface), _1 : true };
                        };
                    };
                };
                return { _0 : (null : stdgo.AnyInterface), _1 : false };
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_one>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_one_asInterface) class T_one_static_extension {
    @:keep
    @:pointer
    static public function increment(____:T_one,  _o:stdgo.Pointer<T_one>):Void {
        _o.value++;
    }
}
class T_benchmarkMutexUncontended___localname___PaddedMutex_3777_asInterface {
    @:embedded
    public dynamic function _unlockSlow(_nameOff:stdgo.GoInt32):Void __self__.value._unlockSlow(_nameOff);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkMutexUncontended___localname___PaddedMutex_3777>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_benchmarkMutexUncontended___localname___PaddedMutex_3777_asInterface) class T_benchmarkMutexUncontended___localname___PaddedMutex_3777_static_extension {
    @:embedded
    public static function _unlockSlow( __self__:T_benchmarkMutexUncontended___localname___PaddedMutex_3777, _nameOff:stdgo.GoInt32) __self__._unlockSlow(_nameOff);
    @:embedded
    public static function _lockSlow( __self__:T_benchmarkMutexUncontended___localname___PaddedMutex_3777) __self__._lockSlow();
    @:embedded
    public static function unlock( __self__:T_benchmarkMutexUncontended___localname___PaddedMutex_3777) __self__.unlock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkMutexUncontended___localname___PaddedMutex_3777):Bool return __self__.tryLock();
    @:embedded
    public static function lock( __self__:T_benchmarkMutexUncontended___localname___PaddedMutex_3777) __self__.lock();
}
class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_asInterface {
    @:embedded
    public dynamic function _rUnlockSlow(_nameOff:stdgo.GoInt32):Void __self__.value._rUnlockSlow(_nameOff);
    @:embedded
    public dynamic function unlock():Void __self__.value.unlock();
    @:embedded
    public dynamic function tryRLock():Bool return __self__.value.tryRLock();
    @:embedded
    public dynamic function tryLock():Bool return __self__.value.tryLock();
    @:embedded
    public dynamic function runlock():Void __self__.value.runlock();
    @:embedded
    public dynamic function rlocker():stdgo._internal.sync.Sync.Locker return __self__.value.rlocker();
    @:embedded
    public dynamic function rlock():Void __self__.value.rlock();
    @:embedded
    public dynamic function lock():Void __self__.value.lock();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_asInterface) class T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090_static_extension {
    @:embedded
    public static function _rUnlockSlow( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090, _nameOff:stdgo.GoInt32) __self__._rUnlockSlow(_nameOff);
    @:embedded
    public static function unlock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090) __self__.unlock();
    @:embedded
    public static function tryRLock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090):Bool return __self__.tryRLock();
    @:embedded
    public static function tryLock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090):Bool return __self__.tryLock();
    @:embedded
    public static function runlock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090) __self__.runlock();
    @:embedded
    public static function rlocker( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090):stdgo._internal.sync.Sync.Locker return __self__.rlocker();
    @:embedded
    public static function rlock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090) __self__.rlock();
    @:embedded
    public static function lock( __self__:T_benchmarkRWMutexUncontended___localname___PaddedRWMutex_4090) __self__.lock();
}
class T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_asInterface {
    @:embedded
    public dynamic function wait_():Void __self__.value.wait_();
    @:embedded
    public dynamic function done():Void __self__.value.done();
    @:embedded
    public dynamic function add(_skip:stdgo.GoInt):Void __self__.value.add(_skip);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sync_test.Sync_test.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_asInterface) class T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_static_extension {
    @:embedded
    public static function wait_( __self__:T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834) __self__.wait_();
    @:embedded
    public static function done( __self__:T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834) __self__.done();
    @:embedded
    public static function add( __self__:T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834, _skip:stdgo.GoInt) __self__.add(_skip);
}
