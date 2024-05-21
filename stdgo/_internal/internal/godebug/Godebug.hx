package stdgo._internal.internal.godebug;
import stdgo._internal.unsafe.Unsafe;
private var __go2hxdoc__package : Bool;
var _cache : stdgo._internal.sync.Sync.Map_ = ({} : stdgo._internal.sync.Sync.Map_);
var _empty : T_value = ({} : stdgo._internal.internal.godebug.Godebug.T_value);
var _updateMu : stdgo._internal.sync.Sync.Mutex = ({} : stdgo._internal.sync.Sync.Mutex);
var _stderr : T_runtimeStderr = ({} : stdgo._internal.internal.godebug.Godebug.T_runtimeStderr);
@:structInit @:using(stdgo._internal.internal.godebug.Godebug.Setting_static_extension) class Setting {
    public var _name : stdgo.GoString = "";
    public var _once : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
    @:embedded
    public var _setting : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.T_setting> = (null : stdgo.Ref<stdgo._internal.internal.godebug.Godebug.T_setting>);
    public function new(?_name:stdgo.GoString, ?_once:stdgo._internal.sync.Sync.Once, ?_setting:stdgo.Ref<stdgo._internal.internal.godebug.Godebug.T_setting>) {
        if (_name != null) this._name = _name;
        if (_once != null) this._once = _once;
        if (_setting != null) this._setting = _setting;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Setting(_name, _once, _setting);
    }
}
@:structInit @:private class T_setting {
    public var _value : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value> = ({} : stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value>);
    public var _nonDefaultOnce : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
    public var _nonDefault : stdgo._internal.sync.atomic_.Atomic_.Uint64 = ({} : stdgo._internal.sync.atomic_.Atomic_.Uint64);
    public var _info : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs.Info> = (null : stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs.Info>);
    public function new(?_value:stdgo._internal.sync.atomic_.Atomic_.Pointer_<stdgo._internal.internal.godebug.Godebug.T_value>, ?_nonDefaultOnce:stdgo._internal.sync.Sync.Once, ?_nonDefault:stdgo._internal.sync.atomic_.Atomic_.Uint64, ?_info:stdgo.Ref<stdgo._internal.internal.godebugs.Godebugs.Info>) {
        if (_value != null) this._value = _value;
        if (_nonDefaultOnce != null) this._nonDefaultOnce = _nonDefaultOnce;
        if (_nonDefault != null) this._nonDefault = _nonDefault;
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_setting(_value, _nonDefaultOnce, _nonDefault, _info);
    }
}
@:structInit @:private class T_value {
    public var _text : stdgo.GoString = "";
    public var _bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect.Matcher> = (null : stdgo.Ref<stdgo._internal.internal.bisect.Bisect.Matcher>);
    public function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Bisect.Matcher>) {
        if (_text != null) this._text = _text;
        if (_bisect != null) this._bisect = _bisect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_value(_text, _bisect);
    }
}
@:structInit @:private @:using(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_static_extension) class T_runtimeStderr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeStderr();
    }
}
function new_(_name:stdgo.GoString):stdgo.Ref<Setting> return new Setting();
function _lookup(_name:stdgo.GoString):stdgo.Ref<T_setting> throw ":internal.godebug._lookup is not yet implemented";
function _setUpdate(_update:(stdgo.GoString, stdgo.GoString) -> Void):Void throw ":internal.godebug._setUpdate is not yet implemented";
function _registerMetric(_name:stdgo.GoString, _read:() -> stdgo.GoUInt64):Void throw ":internal.godebug._registerMetric is not yet implemented";
function _setNewIncNonDefault(_newIncNonDefault:stdgo.GoString -> (() -> Void)):Void throw ":internal.godebug._setNewIncNonDefault is not yet implemented";
function _newIncNonDefault(_name:stdgo.GoString):() -> Void throw ":internal.godebug._newIncNonDefault is not yet implemented";
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void throw ":internal.godebug._update is not yet implemented";
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void throw ":internal.godebug._parse is not yet implemented";
function _write(_fd:stdgo.GoUIntptr, _p:stdgo._internal.unsafe.Unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32 throw ":internal.godebug._write is not yet implemented";
class Setting_asInterface {
    @:keep
    public dynamic function value():stdgo.GoString return __self__.value.value();
    @:keep
    public dynamic function _register():Void __self__.value._register();
    @:keep
    public dynamic function incNonDefault():Void __self__.value.incNonDefault();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function undocumented():Bool return __self__.value.undocumented();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Setting>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.godebug.Godebug.Setting_asInterface) class Setting_static_extension {
    @:keep
    static public function value( _s:stdgo.Ref<Setting>):stdgo.GoString return "";
    @:keep
    static public function _register( _s:stdgo.Ref<Setting>):Void throw "Setting:internal.godebug._register is not yet implemented";
    @:keep
    static public function incNonDefault( _s:stdgo.Ref<Setting>):Void throw "Setting:internal.godebug.incNonDefault is not yet implemented";
    @:keep
    static public function string( _s:stdgo.Ref<Setting>):stdgo.GoString throw "Setting:internal.godebug.string is not yet implemented";
    @:keep
    static public function undocumented( _s:stdgo.Ref<Setting>):Bool throw "Setting:internal.godebug.undocumented is not yet implemented";
    @:keep
    static public function name( _s:stdgo.Ref<Setting>):stdgo.GoString throw "Setting:internal.godebug.name is not yet implemented";
}
class T_runtimeStderr_asInterface {
    @:keep
    public dynamic function write(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_runtimeStderr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.godebug.Godebug.T_runtimeStderr_asInterface) class T_runtimeStderr_static_extension {
    @:keep
    static public function write( _:stdgo.Ref<T_runtimeStderr>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_runtimeStderr:internal.godebug.write is not yet implemented";
}
