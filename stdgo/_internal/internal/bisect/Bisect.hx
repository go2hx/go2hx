package stdgo._internal.internal.bisect;
private var __go2hxdoc__package : Bool;
final _offset64 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
final _prime64 : stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
@:keep class Writer_static_extension {
    static public function write(t:Writer, _0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.write(_0);
}
typedef Writer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function write(_0:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:structInit @:using(stdgo._internal.internal.bisect.Bisect.Matcher_static_extension) class Matcher {
    public var _verbose : Bool = false;
    public var _quiet : Bool = false;
    public var _enable : Bool = false;
    public var _list : stdgo.Slice<stdgo._internal.internal.bisect.Bisect.T_cond> = (null : stdgo.Slice<stdgo._internal.internal.bisect.Bisect.T_cond>);
    public var _dedup : stdgo._internal.internal.bisect.Bisect.T_atomicPointerDedup = ({} : stdgo._internal.internal.bisect.Bisect.T_atomicPointerDedup);
    public function new(?_verbose:Bool, ?_quiet:Bool, ?_enable:Bool, ?_list:stdgo.Slice<stdgo._internal.internal.bisect.Bisect.T_cond>, ?_dedup:stdgo._internal.internal.bisect.Bisect.T_atomicPointerDedup) {
        if (_verbose != null) this._verbose = _verbose;
        if (_quiet != null) this._quiet = _quiet;
        if (_enable != null) this._enable = _enable;
        if (_list != null) this._list = _list;
        if (_dedup != null) this._dedup = _dedup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Matcher(_verbose, _quiet, _enable, _list, _dedup);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.bisect.Bisect.T_atomicPointerDedup_static_extension) class T_atomicPointerDedup {
    public var _p : stdgo._internal.unsafe.Unsafe.UnsafePointer = @:default_value_kind null;
    public function new(?_p:stdgo._internal.unsafe.Unsafe.UnsafePointer) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_atomicPointerDedup(_p);
    }
}
@:structInit @:private class T_cond {
    public var _mask : stdgo.GoUInt64 = 0;
    public var _bits : stdgo.GoUInt64 = 0;
    public var _result : Bool = false;
    public function new(?_mask:stdgo.GoUInt64, ?_bits:stdgo.GoUInt64, ?_result:Bool) {
        if (_mask != null) this._mask = _mask;
        if (_bits != null) this._bits = _bits;
        if (_result != null) this._result = _result;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_cond(_mask, _bits, _result);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.bisect.Bisect.T_parseError_static_extension) class T_parseError {
    public var _text : stdgo.GoString = "";
    public function new(?_text:stdgo.GoString) {
        if (_text != null) this._text = _text;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_parseError(_text);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.bisect.Bisect.T_dedup_static_extension) class T_dedup {
    public var _recent : stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>> = new stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>(128, 128, ...[for (i in 0 ... 128) new stdgo.GoArray<stdgo.GoUInt64>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt64)])]);
    public var _mu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
    public var _m : stdgo.GoMap<stdgo.GoUInt64, Bool> = (null : stdgo.GoMap<stdgo.GoUInt64, Bool>);
    public function new(?_recent:stdgo.GoArray<stdgo.GoArray<stdgo.GoUInt64>>, ?_mu:stdgo._internal.sync.Sync.Mutex, ?_m:stdgo.GoMap<stdgo.GoUInt64, Bool>) {
        if (_recent != null) this._recent = _recent;
        if (_mu != null) this._mu = _mu;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dedup(_recent, _mu, _m);
    }
}
function new_(_pattern:stdgo.GoString):{ var _0 : stdgo.Ref<Matcher>; var _1 : stdgo.Error; } throw ":internal.bisect.new_ is not yet implemented";
function _printFileLine(_w:Writer, _h:stdgo.GoUInt64, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Error throw ":internal.bisect._printFileLine is not yet implemented";
function _appendFileLine(_dst:stdgo.Slice<stdgo.GoByte>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.Slice<stdgo.GoByte> throw ":internal.bisect._appendFileLine is not yet implemented";
function printMarker(_w:Writer, _h:stdgo.GoUInt64):stdgo.Error throw ":internal.bisect.printMarker is not yet implemented";
function _printStack(_w:Writer, _h:stdgo.GoUInt64, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Error throw ":internal.bisect._printStack is not yet implemented";
function marker(_id:stdgo.GoUInt64):stdgo.GoString throw ":internal.bisect.marker is not yet implemented";
function appendMarker(_dst:stdgo.Slice<stdgo.GoByte>, _id:stdgo.GoUInt64):stdgo.Slice<stdgo.GoByte> throw ":internal.bisect.appendMarker is not yet implemented";
function cutMarker(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoUInt64; var _2 : Bool; } throw ":internal.bisect.cutMarker is not yet implemented";
function hash(_data:haxe.Rest<stdgo.AnyInterface>):stdgo.GoUInt64 throw ":internal.bisect.hash is not yet implemented";
function _fnv(_h:stdgo.GoUInt64, _x:stdgo.GoByte):stdgo.GoUInt64 throw ":internal.bisect._fnv is not yet implemented";
function _fnvString(_h:stdgo.GoUInt64, _x:stdgo.GoString):stdgo.GoUInt64 throw ":internal.bisect._fnvString is not yet implemented";
function _fnvUint64(_h:stdgo.GoUInt64, _x:stdgo.GoUInt64):stdgo.GoUInt64 throw ":internal.bisect._fnvUint64 is not yet implemented";
function _fnvUint32(_h:stdgo.GoUInt64, _x:stdgo.GoUInt32):stdgo.GoUInt64 throw ":internal.bisect._fnvUint32 is not yet implemented";
class Matcher_asInterface {
    @:keep
    public dynamic function _stack(_w:Writer):Bool return __self__.value._stack(_w);
    @:keep
    public dynamic function stack(_w:Writer):Bool return __self__.value.stack(_w);
    @:keep
    public dynamic function _fileLine(_w:Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return __self__.value._fileLine(_w, _file, _line);
    @:keep
    public dynamic function fileLine(_w:Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool return __self__.value.fileLine(_w, _file, _line);
    @:keep
    public dynamic function _matchResult(_id:stdgo.GoUInt64):Bool return __self__.value._matchResult(_id);
    @:keep
    public dynamic function shouldPrint(_id:stdgo.GoUInt64):Bool return __self__.value.shouldPrint(_id);
    @:keep
    public dynamic function shouldEnable(_id:stdgo.GoUInt64):Bool return __self__.value.shouldEnable(_id);
    @:keep
    public dynamic function markerOnly():Bool return __self__.value.markerOnly();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Matcher>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.bisect.Bisect.Matcher_asInterface) class Matcher_static_extension {
    @:keep
    static public function _stack( _m:stdgo.Ref<Matcher>, _w:Writer):Bool throw "Matcher:internal.bisect._stack is not yet implemented";
    @:keep
    static public function stack( _m:stdgo.Ref<Matcher>, _w:Writer):Bool throw "Matcher:internal.bisect.stack is not yet implemented";
    @:keep
    static public function _fileLine( _m:stdgo.Ref<Matcher>, _w:Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool throw "Matcher:internal.bisect._fileLine is not yet implemented";
    @:keep
    static public function fileLine( _m:stdgo.Ref<Matcher>, _w:Writer, _file:stdgo.GoString, _line:stdgo.GoInt):Bool throw "Matcher:internal.bisect.fileLine is not yet implemented";
    @:keep
    static public function _matchResult( _m:stdgo.Ref<Matcher>, _id:stdgo.GoUInt64):Bool throw "Matcher:internal.bisect._matchResult is not yet implemented";
    @:keep
    static public function shouldPrint( _m:stdgo.Ref<Matcher>, _id:stdgo.GoUInt64):Bool throw "Matcher:internal.bisect.shouldPrint is not yet implemented";
    @:keep
    static public function shouldEnable( _m:stdgo.Ref<Matcher>, _id:stdgo.GoUInt64):Bool throw "Matcher:internal.bisect.shouldEnable is not yet implemented";
    @:keep
    static public function markerOnly( _m:stdgo.Ref<Matcher>):Bool throw "Matcher:internal.bisect.markerOnly is not yet implemented";
}
class T_atomicPointerDedup_asInterface {
    @:keep
    public dynamic function compareAndSwap(_old:stdgo.Ref<T_dedup>, _new:stdgo.Ref<T_dedup>):Bool return __self__.value.compareAndSwap(_old, _new);
    @:keep
    public dynamic function load():stdgo.Ref<T_dedup> return __self__.value.load();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_atomicPointerDedup>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.bisect.Bisect.T_atomicPointerDedup_asInterface) class T_atomicPointerDedup_static_extension {
    @:keep
    static public function compareAndSwap( _p:stdgo.Ref<T_atomicPointerDedup>, _old:stdgo.Ref<T_dedup>, _new:stdgo.Ref<T_dedup>):Bool throw "T_atomicPointerDedup:internal.bisect.compareAndSwap is not yet implemented";
    @:keep
    static public function load( _p:stdgo.Ref<T_atomicPointerDedup>):stdgo.Ref<T_dedup> throw "T_atomicPointerDedup:internal.bisect.load is not yet implemented";
}
class T_parseError_asInterface {
    @:keep
    public dynamic function error():stdgo.GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_parseError>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.bisect.Bisect.T_parseError_asInterface) class T_parseError_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<T_parseError>):stdgo.GoString throw "T_parseError:internal.bisect.error is not yet implemented";
}
class T_dedup_asInterface {
    @:keep
    public dynamic function _seenLossy(_h:stdgo.GoUInt64):Bool return __self__.value._seenLossy(_h);
    @:keep
    public dynamic function _seen(_h:stdgo.GoUInt64):Bool return __self__.value._seen(_h);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_dedup>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.bisect.Bisect.T_dedup_asInterface) class T_dedup_static_extension {
    @:keep
    static public function _seenLossy( _d:stdgo.Ref<T_dedup>, _h:stdgo.GoUInt64):Bool throw "T_dedup:internal.bisect._seenLossy is not yet implemented";
    @:keep
    static public function _seen( _d:stdgo.Ref<T_dedup>, _h:stdgo.GoUInt64):Bool throw "T_dedup:internal.bisect._seen is not yet implemented";
}
