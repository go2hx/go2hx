package stdgo._internal.plugin;
@:structInit @:using(stdgo._internal.plugin.Plugin_plugin_static_extension.Plugin_static_extension) class Plugin {
    public var _pluginpath : stdgo.GoString = "";
    public var _err : stdgo.GoString = "";
    public var _loaded : stdgo.Chan<{ }> = (null : stdgo.Chan<{ }>);
    public var _syms : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> = (null : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
    public function new(?_pluginpath:stdgo.GoString, ?_err:stdgo.GoString, ?_loaded:stdgo.Chan<{ }>, ?_syms:stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) {
        if (_pluginpath != null) this._pluginpath = _pluginpath;
        if (_err != null) this._err = _err;
        if (_loaded != null) this._loaded = _loaded;
        if (_syms != null) this._syms = _syms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Plugin(_pluginpath, _err, _loaded, _syms);
    }
}
