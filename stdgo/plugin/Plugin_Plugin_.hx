package stdgo.plugin;
@:structInit @:using(stdgo.plugin.Plugin.Plugin_static_extension) abstract Plugin_(stdgo._internal.plugin.Plugin_Plugin.Plugin) from stdgo._internal.plugin.Plugin_Plugin.Plugin to stdgo._internal.plugin.Plugin_Plugin.Plugin {
    public var _pluginpath(get, set) : String;
    function get__pluginpath():String return this._pluginpath;
    function set__pluginpath(v:String):String {
        this._pluginpath = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : String;
    function get__err():String return this._err;
    function set__err(v:String):String {
        this._err = (v : stdgo.GoString);
        return v;
    }
    public var _loaded(get, set) : stdgo.Chan<{ }>;
    function get__loaded():stdgo.Chan<{ }> return this._loaded;
    function set__loaded(v:stdgo.Chan<{ }>):stdgo.Chan<{ }> {
        this._loaded = (v : stdgo.Chan<{ }>);
        return v;
    }
    public var _syms(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>;
    function get__syms():stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> return this._syms;
    function set__syms(v:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        this._syms = (v : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        return v;
    }
    public function new(?_pluginpath:String, ?_err:String, ?_loaded:stdgo.Chan<{ }>, ?_syms:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) this = new stdgo._internal.plugin.Plugin_Plugin.Plugin((_pluginpath : stdgo.GoString), (_err : stdgo.GoString), (_loaded : stdgo.Chan<{ }>), (_syms : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
