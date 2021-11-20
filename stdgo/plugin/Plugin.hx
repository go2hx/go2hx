package stdgo.plugin;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:follow typedef Symbol = AnyInterface;
@:structInit class Plugin {
    public function lookup(_symName:GoString):{ var _0 : Symbol; var _1 : Error; } {
        var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _lookup(_p, _symName);
    }
    public var _pluginpath : GoString = (("" : GoString));
    public var _err : GoString = (("" : GoString));
    public var _loaded : Chan<{ }> = new Chan<{ }>(0, () -> null, true);
    public var _syms : GoMap<GoString, Symbol> = new GoMap<GoString, Symbol>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("plugin.Symbol", [], stdgo.reflect.Reflect.GoType.interfaceType(true, []))))).nil();
    public function new(?_pluginpath:GoString, ?_err:GoString, ?_loaded:Chan<{ }>, ?_syms:GoMap<GoString, Symbol>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_pluginpath) + " " + Go.string(_err) + " " + Go.string(_loaded) + " " + Go.string(_syms) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Plugin(_pluginpath, _err, _loaded, _syms);
    }
    public function __set__(__tmp__) {
        this._pluginpath = __tmp__._pluginpath;
        this._err = __tmp__._err;
        this._loaded = __tmp__._loaded;
        this._syms = __tmp__._syms;
        return this;
    }
}
@:structInit @:local class T__struct_0 {
    public function new() stdgo.internal.Macro.initLocals();
    public function toString() {
        return "{}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T__struct_0();
    }
    public function __set__(__tmp__) {
        return this;
    }
}
/**
    // Open opens a Go plugin.
    // If a path has already been opened, then the existing *Plugin is returned.
    // It is safe for concurrent use by multiple goroutines.
**/
function open(_path:GoString):{ var _0 : Pointer<Plugin>; var _1 : Error; } {
        return _open(_path);
    }
function _lookup(_p:Pointer<Plugin>, _symName:GoString):{ var _0 : Symbol; var _1 : Error; } {
        return { _0 : ((null : Symbol)), _1 : stdgo.errors.Errors.new_("plugin: not implemented") };
    }
function _open(_name:GoString):{ var _0 : Pointer<Plugin>; var _1 : Error; } {
        return { _0 : new Pointer<Plugin>().nil(), _1 : stdgo.errors.Errors.new_("plugin: not implemented") };
    }
class Plugin_extension_fields {
    public function lookup(__tmp__, _symName:GoString):{ var _0 : Symbol; var _1 : Error; } return __tmp__.lookup(_symName);
}
