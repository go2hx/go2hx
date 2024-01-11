package stdgo.internal.godebug;
/**
    // Package godebug makes the settings in the $GODEBUG environment variable
    // available to other packages. These settings are often used for compatibility
    // tweaks, when we need to change a default behavior but want to let users
    // opt back in to the original. For example GODEBUG=http2server=0 disables
    // HTTP/2 support in the net/http server.
    //
    // In typical usage, code should declare a Setting as a global
    // and then call Value each time the current setting value is needed:
    //
    //	var http2server = godebug.New("http2server")
    //
    //	func ServeConn(c net.Conn) {
    //		if http2server.Value() == "0" {
    //			disallow HTTP/2
    //			...
    //		}
    //		...
    //	}
    //
    // Each time a non-default setting causes a change in program behavior,
    // code should call [Setting.IncNonDefault] to increment a counter that can
    // be reported by [runtime/metrics.Read].
    // Note that counters used with IncNonDefault must be added to
    // various tables in other packages. See the [Setting.IncNonDefault]
    // documentation for details.
**/
private var __go2hxdoc__package : Bool;
/**
    // cache is a cache of all the GODEBUG settings,
    // a locked map[string]*atomic.Pointer[string].
    //
    // All Settings with the same name share a single
    // *atomic.Pointer[string], so that when GODEBUG
    // changes only that single atomic string pointer
    // needs to be updated.
    //
    // A name appears in the values map either if it is the
    // name of a Setting for which Value has been called
    // at least once, or if the name has ever appeared in
    // a name=value pair in the $GODEBUG environment variable.
    // Once entered into the map, the name is never removed.
    
    // name string -> value *atomic.Pointer[string]
**/
var _cache : stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    
**/
var _empty : T_value = ({} : stdgo.internal.godebug.Godebug.T_value);
/**
    
    
    
**/
var _updateMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    
    
    
**/
var _stderr : T_runtimeStderr = ({} : stdgo.internal.godebug.Godebug.T_runtimeStderr);
/**
    // A Setting is a single setting in the $GODEBUG environment variable.
    
    
**/
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) class Setting {
    public var _name : stdgo.GoString = "";
    public var _once : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    @:embedded
    public var _setting : stdgo.Ref<stdgo.internal.godebug.Godebug.T_setting> = (null : stdgo.Ref<stdgo.internal.godebug.Godebug.T_setting>);
    public function new(?_name:stdgo.GoString, ?_once:stdgo.sync.Sync.Once, ?_setting:stdgo.Ref<stdgo.internal.godebug.Godebug.T_setting>) {
        if (_name != null) this._name = _name;
        if (_once != null) this._once = _once;
        if (_setting != null) this._setting = _setting;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Setting(_name, _once, _setting);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_setting {
    public var _value : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.internal.godebug.Godebug.T_value> = ({} : stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.internal.godebug.Godebug.T_value>);
    public var _nonDefaultOnce : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    public var _nonDefault : stdgo.sync.atomic_.Atomic_.Uint64 = ({} : stdgo.sync.atomic_.Atomic_.Uint64);
    public var _info : stdgo.Ref<stdgo.internal.godebugs.Godebugs.Info> = (null : stdgo.Ref<stdgo.internal.godebugs.Godebugs.Info>);
    public function new(?_value:stdgo.sync.atomic_.Atomic_.Pointer_<stdgo.internal.godebug.Godebug.T_value>, ?_nonDefaultOnce:stdgo.sync.Sync.Once, ?_nonDefault:stdgo.sync.atomic_.Atomic_.Uint64, ?_info:stdgo.Ref<stdgo.internal.godebugs.Godebugs.Info>) {
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
/**
    
    
    
**/
@:structInit @:private class T_value {
    public var _text : stdgo.GoString = "";
    public var _bisect : stdgo.Ref<stdgo.internal.bisect.Bisect.Matcher> = (null : stdgo.Ref<stdgo.internal.bisect.Bisect.Matcher>);
    public function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo.internal.bisect.Bisect.Matcher>) {
        if (_text != null) this._text = _text;
        if (_bisect != null) this._bisect = _bisect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_value(_text, _bisect);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.internal.godebug.Godebug.T_runtimeStderr_static_extension) class T_runtimeStderr {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_runtimeStderr();
    }
}
/**
    // New returns a new Setting for the $GODEBUG setting with the given name.
    //
    // GODEBUGs meant for use by end users must be listed in ../godebugs/table.go,
    // which is used for generating and checking various documentation.
    // If the name is not listed in that table, New will succeed but calling Value
    // on the returned Setting will panic.
    // To disable that panic for access to an undocumented setting,
    // prefix the name with a #, as in godebug.New("#gofsystrace").
    // The # is a signal to New but not part of the key used in $GODEBUG.
**/
function new_(_name:stdgo.GoString):stdgo.Ref<Setting> return new Setting();
/**
    // lookup returns the unique *setting value for the given name.
**/
function _lookup(_name:stdgo.GoString):stdgo.Ref<T_setting> throw ":internal.godebug._lookup is not yet implemented";
/**
    // setUpdate is provided by package runtime.
    // It calls update(def, env), where def is the default GODEBUG setting
    // and env is the current value of the $GODEBUG environment variable.
    // After that first call, the runtime calls update(def, env)
    // again each time the environment variable changes
    // (due to use of os.Setenv, for example).
    //
    //go:linkname setUpdate
**/
function _setUpdate(_update:(stdgo.GoString, stdgo.GoString) -> Void):Void throw ":internal.godebug._setUpdate is not yet implemented";
/**
    // registerMetric is provided by package runtime.
    // It forwards registrations to runtime/metrics.
    //
    //go:linkname registerMetric
**/
function _registerMetric(_name:stdgo.GoString, _read:() -> stdgo.GoUInt64):Void throw ":internal.godebug._registerMetric is not yet implemented";
/**
    // setNewIncNonDefault is provided by package runtime.
    // The runtime can do
    //
    //	inc := newNonDefaultInc(name)
    //
    // instead of
    //
    //	inc := godebug.New(name).IncNonDefault
    //
    // since it cannot import godebug.
    //
    //go:linkname setNewIncNonDefault
**/
function _setNewIncNonDefault(_newIncNonDefault:stdgo.GoString -> (() -> Void)):Void throw ":internal.godebug._setNewIncNonDefault is not yet implemented";
function _newIncNonDefault(_name:stdgo.GoString):() -> Void throw ":internal.godebug._newIncNonDefault is not yet implemented";
/**
    // update records an updated GODEBUG setting.
    // def is the default GODEBUG setting for the running binary,
    // and env is the current value of the $GODEBUG environment variable.
**/
function _update(_def:stdgo.GoString, _env:stdgo.GoString):Void throw ":internal.godebug._update is not yet implemented";
/**
    // parse parses the GODEBUG setting string s,
    // which has the form k=v,k2=v2,k3=v3.
    // Later settings override earlier ones.
    // Parse only updates settings k=v for which did[k] = false.
    // It also sets did[k] = true for settings that it updates.
    // Each value v can also have the form v#pattern,
    // in which case the GODEBUG is only enabled for call stacks
    // matching pattern, for use with golang.org/x/tools/cmd/bisect.
**/
function _parse(_did:stdgo.GoMap<stdgo.GoString, Bool>, _s:stdgo.GoString):Void throw ":internal.godebug._parse is not yet implemented";
/**
    // Since we cannot import os or syscall, use the runtime's write function
    // to print to standard error.
    //
    //go:linkname write runtime.write
**/
function _write(_fd:stdgo.GoUIntptr, _p:stdgo.unsafe.Unsafe.UnsafePointer, _n:stdgo.GoInt32):stdgo.GoInt32 throw ":internal.godebug._write is not yet implemented";
class Setting_asInterface {
    /**
        // Value returns the current value for the GODEBUG setting s.
        //
        // Value maintains an internal cache that is synchronized
        // with changes to the $GODEBUG environment variable,
        // making Value efficient to call as frequently as needed.
        // Clients should therefore typically not attempt their own
        // caching of Value's result.
    **/
    @:keep
    public dynamic function value():stdgo.GoString return __self__.value.value();
    @:keep
    public dynamic function _register():Void __self__.value._register();
    /**
        // IncNonDefault increments the non-default behavior counter
        // associated with the given setting.
        // This counter is exposed in the runtime/metrics value
        // /godebug/non-default-behavior/<name>:events.
        //
        // Note that Value must be called at least once before IncNonDefault.
    **/
    @:keep
    public dynamic function incNonDefault():Void __self__.value.incNonDefault();
    /**
        // String returns a printable form for the setting: name=value.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    /**
        // Undocumented reports whether this is an undocumented setting.
    **/
    @:keep
    public dynamic function undocumented():Bool return __self__.value.undocumented();
    /**
        // Name returns the name of the setting.
    **/
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Setting>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.godebug.Godebug.Setting_asInterface) class Setting_static_extension {
    /**
        // Value returns the current value for the GODEBUG setting s.
        //
        // Value maintains an internal cache that is synchronized
        // with changes to the $GODEBUG environment variable,
        // making Value efficient to call as frequently as needed.
        // Clients should therefore typically not attempt their own
        // caching of Value's result.
    **/
    @:keep
    static public function value( _s:stdgo.Ref<Setting>):stdgo.GoString return "";
    @:keep
    static public function _register( _s:stdgo.Ref<Setting>):Void throw "Setting:internal.godebug._register is not yet implemented";
    /**
        // IncNonDefault increments the non-default behavior counter
        // associated with the given setting.
        // This counter is exposed in the runtime/metrics value
        // /godebug/non-default-behavior/<name>:events.
        //
        // Note that Value must be called at least once before IncNonDefault.
    **/
    @:keep
    static public function incNonDefault( _s:stdgo.Ref<Setting>):Void throw "Setting:internal.godebug.incNonDefault is not yet implemented";
    /**
        // String returns a printable form for the setting: name=value.
    **/
    @:keep
    static public function string( _s:stdgo.Ref<Setting>):stdgo.GoString throw "Setting:internal.godebug.string is not yet implemented";
    /**
        // Undocumented reports whether this is an undocumented setting.
    **/
    @:keep
    static public function undocumented( _s:stdgo.Ref<Setting>):Bool throw "Setting:internal.godebug.undocumented is not yet implemented";
    /**
        // Name returns the name of the setting.
    **/
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_runtimeStderr>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.godebug.Godebug.T_runtimeStderr_asInterface) class T_runtimeStderr_static_extension {
    @:keep
    static public function write( _:stdgo.Ref<T_runtimeStderr>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } throw "T_runtimeStderr:internal.godebug.write is not yet implemented";
}
