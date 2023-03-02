package stdgo.internal.godebug;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
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
private var _cache : stdgo.sync.Sync.Map_ = ({} : stdgo.sync.Sync.Map_);
/**
    
    
    
**/
private var _empty : GoString = ("" : GoString);
/**
    
    
    
**/
private var _updateMu : stdgo.sync.Sync.Mutex = ({} : stdgo.sync.Sync.Mutex);
/**
    // A Setting is a single setting in the $GODEBUG environment variable.
    
    
**/
@:structInit @:using(stdgo.internal.godebug.Godebug.Setting_static_extension) class Setting {
    public var _name : GoString = "";
    public var _once : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    public var _value : Ref<stdgo.sync.atomic.Atomic.Pointer_<GoString>> = (null : Ref<stdgo.sync.atomic.Atomic.Pointer_<GoString>>);
    public function new(?_name:GoString, ?_once:stdgo.sync.Sync.Once, ?_value:Ref<stdgo.sync.atomic.Atomic.Pointer_<GoString>>) {
        if (_name != null) this._name = _name;
        if (_once != null) this._once = _once;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new Setting(_name, _once, _value);
    }
}
/**
    // New returns a new Setting for the $GODEBUG setting with the given name.
**/
function new_(_name:GoString):Ref<Setting> return new Setting();
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
private function _setUpdate(_update:(GoString, GoString) -> Void):Void throw "internal.godebug._setUpdate is not yet implemented";
/**
    // update records an updated GODEBUG setting.
    // def is the default GODEBUG setting for the running binary,
    // and env is the current value of the $GODEBUG environment variable.
**/
private function _update(_def:GoString, _env:GoString):Void throw "internal.godebug._update is not yet implemented";
/**
    // parse parses the GODEBUG setting string s,
    // which has the form k=v,k2=v2,k3=v3.
    // Later settings override earlier ones.
    // Parse only updates settings k=v for which did[k] = false.
    // It also sets did[k] = true for settings that it updates.
**/
private function _parse(_did:GoMap<GoString, Bool>, _s:GoString):Void throw "internal.godebug._parse is not yet implemented";
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
    public dynamic function value():GoString return __self__.value.value();
    /**
        // String returns a printable form for the setting: name=value.
    **/
    @:keep
    public dynamic function string():GoString return __self__.value.string();
    /**
        // Name returns the name of the setting.
    **/
    @:keep
    public dynamic function name():GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<Setting>;
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
    static public function value( _s:Ref<Setting>):GoString return "";
    /**
        // String returns a printable form for the setting: name=value.
    **/
    @:keep
    static public function string( _s:Ref<Setting>):GoString throw "internal.godebug.string is not yet implemented";
    /**
        // Name returns the name of the setting.
    **/
    @:keep
    static public function name( _s:Ref<Setting>):GoString throw "internal.godebug.name is not yet implemented";
}
