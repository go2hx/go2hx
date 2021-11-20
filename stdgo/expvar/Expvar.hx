package stdgo.expvar;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef Var = StructType & {
    public function toString():GoString;
};
@:structInit class Int_ {
    public function set(_value:GoInt64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        stdgo.sync.atomic.Atomic.storeInt64(Go.pointer(_v.value._i), _value);
    }
    public function add(_delta:GoInt64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        stdgo.sync.atomic.Atomic.addInt64(Go.pointer(_v.value._i), _delta);
    }
    public function toString():GoString {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.strconv.Strconv.formatInt(stdgo.sync.atomic.Atomic.loadInt64(Go.pointer(_v.value._i)), ((10 : GoInt)));
    }
    public function value():GoInt64 {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.sync.atomic.Atomic.loadInt64(Go.pointer(_v.value._i));
    }
    public var _i : GoInt64 = ((0 : GoInt64));
    public function new(?_i:GoInt64) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Int_(_i);
    }
    public function __set__(__tmp__) {
        this._i = __tmp__._i;
        return this;
    }
}
@:structInit class Float_ {
    public function set(_value:GoFloat64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        stdgo.sync.atomic.Atomic.storeUint64(Go.pointer(_v.value._f), stdgo.math.Math.float64bits(_value));
    }
    public function add(_delta:GoFloat64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        while (true) {
            var _cur:GoUInt64 = stdgo.sync.atomic.Atomic.loadUint64(Go.pointer(_v.value._f));
            var _curVal:GoFloat64 = stdgo.math.Math.float64frombits(_cur);
            var _nxtVal:GoFloat64 = _curVal + _delta;
            var _nxt:GoUInt64 = stdgo.math.Math.float64bits(_nxtVal);
            if (stdgo.sync.atomic.Atomic.compareAndSwapUint64(Go.pointer(_v.value._f), _cur, _nxt)) {
                return;
            };
        };
    }
    public function toString():GoString {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.strconv.Strconv.formatFloat(stdgo.math.Math.float64frombits(stdgo.sync.atomic.Atomic.loadUint64(Go.pointer(_v.value._f))), (("g".code : GoRune)), -((1 : GoUnTypedInt)), ((64 : GoInt)));
    }
    public function value():GoFloat64 {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return stdgo.math.Math.float64frombits(stdgo.sync.atomic.Atomic.loadUint64(Go.pointer(_v.value._f)));
    }
    public var _f : GoUInt64 = ((0 : GoUInt64));
    public function new(?_f:GoUInt64) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Float_(_f);
    }
    public function __set__(__tmp__) {
        this._f = __tmp__._f;
        return this;
    }
}
@:structInit class Map_ {
    public function do_(_f:KeyValue -> Void):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _v.value._keysMu.rlock();
            deferstack.unshift(() -> _v.value._keysMu.runlock());
            for (_k in _v.value._keys) {
                var __tmp__ = _v.value._m.load(Go.toInterface(_k)), _i:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
                _f(new KeyValue(_k, ((_i.value : Var))).__copy__());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function delete(_key:GoString):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _v.value._keysMu.lock();
            deferstack.unshift(() -> _v.value._keysMu.unlock());
            var _i:GoInt = stdgo.sort.Sort.searchStrings(_v.value._keys, _key);
            if (_i < _v.value._keys.length && _key == _v.value._keys[_i]) {
                _v.value._keys = _v.value._keys.__slice__(0, _i).__append__(..._v.value._keys.__slice__(_i + ((1 : GoInt))).toArray());
                _v.value._m.delete(Go.toInterface(_key));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function addFloat(_key:GoString, _delta:GoFloat64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _v.value._m.load(Go.toInterface(_key)), _i:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = _v.value._m.loadOrStore(Go.toInterface(_key), Go.toInterface(Go.pointer(new Float_())));
                _i = Go.toInterface(__tmp__._0);
                _dup = __tmp__._1;
            };
            if (!_dup) {
                _v.value._addKey(_key);
            };
        };
        {
            var __tmp__ = try {
                { value : ((_i.value : Pointer<Float_>)), ok : true };
            } catch(_) {
                { value : new Pointer<Float_>().nil(), ok : false };
            }, _iv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _iv.value.add(_delta);
            };
        };
    }
    public function add(_key:GoString, _delta:GoInt64):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _v.value._m.load(Go.toInterface(_key)), _i:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            var _dup:Bool = false;
            {
                var __tmp__ = _v.value._m.loadOrStore(Go.toInterface(_key), Go.toInterface(Go.pointer(new Int_())));
                _i = Go.toInterface(__tmp__._0);
                _dup = __tmp__._1;
            };
            if (!_dup) {
                _v.value._addKey(_key);
            };
        };
        {
            var __tmp__ = try {
                { value : ((_i.value : Pointer<Int_>)), ok : true };
            } catch(_) {
                { value : new Pointer<Int_>().nil(), ok : false };
            }, _iv = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _iv.value.add(_delta);
            };
        };
    }
    public function set(_key:GoString, _av:Var):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _v.value._m.load(Go.toInterface(_key)), _:AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok) {
                {
                    var __tmp__ = _v.value._m.loadOrStore(Go.toInterface(_key), Go.toInterface(_av)), _:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                    if (!_dup) {
                        _v.value._addKey(_key);
                        return;
                    };
                };
            };
        };
        _v.value._m.store(Go.toInterface(_key), Go.toInterface(_av));
    }
    public function get(_key:GoString):Var {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _v.value._m.load(Go.toInterface(_key)), _i:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
        var __tmp__ = try {
            { value : ((_i.value : Var)), ok : true };
        } catch(_) {
            { value : ((null : Var)), ok : false };
        }, _av = __tmp__.value, _ = __tmp__.ok;
        return _av;
    }
    public function _addKey(_key:GoString):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _v.value._keysMu.lock();
            deferstack.unshift(() -> _v.value._keysMu.unlock());
            {
                var _i:GoInt = stdgo.sort.Sort.searchStrings(_v.value._keys, _key);
                if (_i >= _v.value._keys.length) {
                    _v.value._keys = _v.value._keys.__append__(_key);
                } else if (_v.value._keys[_i] != _key) {
                    _v.value._keys = _v.value._keys.__append__("");
                    Go.copy(_v.value._keys.__slice__(_i + ((1 : GoInt))), _v.value._keys.__slice__(_i));
                    _v.value._keys[_i] = _key;
                };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
    public function init():Pointer<Map_> {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _v.value._keysMu.lock();
        try {
            deferstack.unshift(() -> _v.value._keysMu.unlock());
            _v.value._keys = _v.value._keys.__slice__(0, ((0 : GoInt)));
            _v.value._m.range(function(_k:AnyInterface, _:AnyInterface):Bool {
                _v.value._m.delete(Go.toInterface(_k));
                return true;
            });
            {
                for (defer in deferstack) {
                    defer();
                };
                return _v;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<Map_>().nil();
            };
        };
    }
    public function toString():GoString {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "{");
        var _first:Bool = true;
        _v.value.do_(function(_kv:KeyValue):Void {
            if (!_first) {
                stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, ", ");
            };
            stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "%q: %v", Go.toInterface(_kv.key), Go.toInterface(_kv.value));
            _first = false;
        });
        stdgo.fmt.Fmt.fprintf(Go.pointer(_b).value, "}");
        return _b.toString();
    }
    public var _m : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
    public var _keysMu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
    public var _keys : Slice<GoString> = new Slice<GoString>().nil();
    public function new(?_m:stdgo.sync.Sync.Map_, ?_keysMu:stdgo.sync.Sync.RWMutex, ?_keys:Slice<GoString>) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Map_(_m, _keysMu, _keys);
    }
    public function __set__(__tmp__) {
        this._m = __tmp__._m;
        this._keysMu = __tmp__._keysMu;
        this._keys = __tmp__._keys;
        return this;
    }
}
@:structInit class KeyValue {
    public var key : GoString = (("" : GoString));
    public var value : Var = ((null : Var));
    public function new(?key:GoString, ?value:Var) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(key) + " " + Go.string(value) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new KeyValue(key, value);
    }
    public function __set__(__tmp__) {
        this.key = __tmp__.key;
        this.value = __tmp__.value;
        return this;
    }
}
@:structInit class String_ {
    public function set(_value:GoString):Void {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _v.value._s.store(Go.toInterface(_value));
    }
    public function toString():GoString {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoString = _v.value.value();
        var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_s)), _b:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        return ((_b : GoString));
    }
    public function value():GoString {
        var _v = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = try {
            { value : ((_v.value._s.load().value : GoString)), ok : true };
        } catch(_) {
            { value : (("" : GoString)), ok : false };
        }, _p = __tmp__.value, _ = __tmp__.ok;
        return _p;
    }
    public var _s : stdgo.sync.atomic.Atomic.Value = new stdgo.sync.atomic.Atomic.Value();
    public function new(?_s:stdgo.sync.atomic.Atomic.Value) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new String_(_s);
    }
    public function __set__(__tmp__) {
        this._s = __tmp__._s;
        return this;
    }
}
@:named class Func {
    public function toString():GoString {
        var _f = this.__copy__();
        var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_f.__t__())), _v:Slice<GoUInt8> = __tmp__._0, _:stdgo.Error = __tmp__._1;
        return ((_v : GoString));
    }
    public function value():AnyInterface {
        var _f = this.__copy__();
        return Go.toInterface(_f.__t__());
    }
    public var __t__ : () -> AnyInterface;
    public function new(?t:() -> AnyInterface) {
        __t__ = t == null ? null : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new Func(__t__);
}
var _varKeys : Slice<GoString> = new Slice<GoString>().nil();
var _varKeysMu : stdgo.sync.Sync.RWMutex = new stdgo.sync.Sync.RWMutex();
var _vars : stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();
/**
    // Publish declares a named exported variable. This should be called from a
    // package's init function when it creates its Vars. If the name is already
    // registered then this will log.Panic.
**/
function publish(_name:GoString, _v:Var):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            {
                var __tmp__ = _vars.loadOrStore(Go.toInterface(_name), Go.toInterface(_v)), _:AnyInterface = __tmp__._0, _dup:Bool = __tmp__._1;
                if (_dup) {
                    stdgo.log.Log.panicln(Go.toInterface("Reuse of exported var name:"), Go.toInterface(_name));
                };
            };
            _varKeysMu.lock();
            deferstack.unshift(() -> _varKeysMu.unlock());
            _varKeys = _varKeys.__append__(_name);
            stdgo.sort.Sort.strings(_varKeys);
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
/**
    // Get retrieves a named exported variable. It returns nil if the name has
    // not been registered.
**/
function get(_name:GoString):Var {
        var __tmp__ = _vars.load(Go.toInterface(_name)), _i:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
        var __tmp__ = try {
            { value : ((_i.value : Var)), ok : true };
        } catch(_) {
            { value : ((null : Var)), ok : false };
        }, _v = __tmp__.value, _ = __tmp__.ok;
        return _v;
    }
function newInt(_name:GoString):Pointer<Int_> {
        var _v:Pointer<Int_> = Go.pointer(new Int_());
        publish(_name, _v.value);
        return _v;
    }
function newFloat(_name:GoString):Pointer<Float_> {
        var _v:Pointer<Float_> = Go.pointer(new Float_());
        publish(_name, _v.value);
        return _v;
    }
function newMap(_name:GoString):Pointer<Map_> {
        var _v:Pointer<Map_> = Go.pointer(new Map_()).value.init();
        publish(_name, _v.value);
        return _v;
    }
function newString(_name:GoString):Pointer<String_> {
        var _v:Pointer<String_> = Go.pointer(new String_());
        publish(_name, _v.value);
        return _v;
    }
/**
    // Do calls f for each exported variable.
    // The global variable map is locked during the iteration,
    // but existing entries may be concurrently updated.
**/
function do_(_f:KeyValue -> Void):Void {
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        try {
            _varKeysMu.rlock();
            deferstack.unshift(() -> _varKeysMu.runlock());
            for (_k in _varKeys) {
                var __tmp__ = _vars.load(Go.toInterface(_k)), _val:AnyInterface = __tmp__._0, _:Bool = __tmp__._1;
                _f(new KeyValue(_k, ((_val.value : Var))).__copy__());
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return;
            };
        };
    }
function _expvarHandler(_w:stdgo.net.http.Http.ResponseWriter, _r:Pointer<stdgo.net.http.Http.Request>):Void {
        _w.header().set("Content-Type", "application/json; charset=utf-8");
        stdgo.fmt.Fmt.fprintf(_w, "{\n");
        var _first:Bool = true;
        do_(function(_kv:KeyValue):Void {
            if (!_first) {
                stdgo.fmt.Fmt.fprintf(_w, ",\n");
            };
            _first = false;
            stdgo.fmt.Fmt.fprintf(_w, "%q: %s", Go.toInterface(_kv.key), Go.toInterface(_kv.value));
        });
        stdgo.fmt.Fmt.fprintf(_w, "\n}\n");
    }
/**
    // Handler returns the expvar HTTP Handler.
    //
    // This is only needed to install the handler in a non-standard location.
**/
function handler():stdgo.net.http.Http.Handler {
        return stdgo.net.http.Http.handlerFunc.__t__(_expvarHandler).__copy__();
    }
function _cmdline():AnyInterface {
        return Go.toInterface(stdgo.os.Os.args);
    }
function _memstats():AnyInterface {
        var _stats:Pointer<stdgo.runtime.Runtime.MemStats> = Go.pointer(new stdgo.runtime.Runtime.MemStats());
        stdgo.runtime.Runtime.readMemStats(_stats);
        return Go.toInterface(_stats.value.__copy__());
    }
@:keep var _ = {
        try {
            stdgo.net.http.Http.handleFunc("/debug/vars", _expvarHandler);
            publish("cmdline", new Func(_cmdline).__copy__());
            publish("memstats", new Func(_memstats).__copy__());
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class Int__extension_fields {
    public function value(__tmp__):GoInt64 return __tmp__.value();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function add(__tmp__, _delta:GoInt64):Void __tmp__.add(_delta);
    public function set(__tmp__, _value:GoInt64):Void __tmp__.set(_value);
}
class Float__extension_fields {
    public function value(__tmp__):GoFloat64 return __tmp__.value();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function add(__tmp__, _delta:GoFloat64):Void __tmp__.add(_delta);
    public function set(__tmp__, _value:GoFloat64):Void __tmp__.set(_value);
}
class Map__extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function init(__tmp__):Pointer<Map_> return __tmp__.init();
    public function _addKey(__tmp__, _key:GoString):Void __tmp__._addKey(_key);
    public function get(__tmp__, _key:GoString):Var return __tmp__.get(_key);
    public function set(__tmp__, _key:GoString, _av:Var):Void __tmp__.set(_key, _av);
    public function add(__tmp__, _key:GoString, _delta:GoInt64):Void __tmp__.add(_key, _delta);
    public function addFloat(__tmp__, _key:GoString, _delta:GoFloat64):Void __tmp__.addFloat(_key, _delta);
    public function delete(__tmp__, _key:GoString):Void __tmp__.delete(_key);
    public function do_(__tmp__, _f:KeyValue -> Void):Void __tmp__.do_(_f);
}
class String__extension_fields {
    public function value(__tmp__):GoString return __tmp__.value();
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function set(__tmp__, _value:GoString):Void __tmp__.set(_value);
}
class Func_extension_fields {
    public function value(__tmp__):AnyInterface return __tmp__.value();
    public function toString(__tmp__):GoString return __tmp__.toString();
}
