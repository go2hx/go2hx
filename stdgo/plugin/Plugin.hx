package stdgo.plugin;
@:structInit @:using(stdgo.plugin.Plugin.Plugin_static_extension) abstract Plugin_(stdgo._internal.plugin.Plugin_plugin.Plugin) from stdgo._internal.plugin.Plugin_plugin.Plugin to stdgo._internal.plugin.Plugin_plugin.Plugin {
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
    public var _syms(get, set) : Map<String, stdgo.AnyInterface>;
    function get__syms():Map<String, stdgo.AnyInterface> return {
        final __obj__:Map<String, stdgo.AnyInterface> = [];
        for (key => value in this._syms) {
            __obj__[key] = value;
        };
        __obj__;
    };
    function set__syms(v:Map<String, stdgo.AnyInterface>):Map<String, stdgo.AnyInterface> {
        this._syms = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
            for (key => value in v) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
            };
            __obj__;
        };
        return v;
    }
    public function new(?_pluginpath:String, ?_err:String, ?_loaded:stdgo.Chan<{ }>, ?_syms:Map<String, stdgo.AnyInterface>) this = new stdgo._internal.plugin.Plugin_plugin.Plugin((_pluginpath : stdgo.GoString), (_err : stdgo.GoString), (_loaded : stdgo.Chan<{ }>), {
        final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>();
        for (key => value in _syms) {
            __obj__[(key : stdgo.GoString)] = (value : stdgo.AnyInterface);
        };
        __obj__;
    });
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.plugin.Plugin_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.plugin.Plugin_t__struct_0.T__struct_0;
typedef Symbol = stdgo._internal.plugin.Plugin_symbol.Symbol;
typedef PluginPointer = stdgo._internal.plugin.Plugin_pluginpointer.PluginPointer;
class Plugin_static_extension {
    static public function lookup(_p:Plugin_, _symName:String):stdgo.Tuple<Symbol, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.plugin.Plugin_plugin.Plugin>);
        final _symName = (_symName : stdgo.GoString);
        return {
            final obj = stdgo._internal.plugin.Plugin_plugin_static_extension.Plugin_static_extension.lookup(_p, _symName);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.plugin.Plugin_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
typedef SymbolPointer = stdgo._internal.plugin.Plugin_symbolpointer.SymbolPointer;
class Symbol_static_extension {

}
/**
    * Package plugin implements loading and symbol resolution of Go plugins.
    * 
    * A plugin is a Go main package with exported functions and variables that
    * has been built with:
    * 
    * 	go build -buildmode=plugin
    * 
    * When a plugin is first opened, the init functions of all packages not
    * already part of the program are called. The main function is not run.
    * A plugin is only initialized once, and cannot be closed.
    * 
    * # Warnings
    * 
    * The ability to dynamically load parts of an application during
    * execution, perhaps based on user-defined configuration, may be a
    * useful building block in some designs. In particular, because
    * applications and dynamically loaded functions can share data
    * structures directly, plugins may enable very high-performance
    * integration of separate parts.
    * 
    * However, the plugin mechanism has many significant drawbacks that
    * should be considered carefully during the design. For example:
    * 
    *   - Plugins are currently supported only on Linux, FreeBSD, and
    *     macOS, making them unsuitable for applications intended to be
    *     portable.
    * 
    *   - Applications that use plugins may require careful configuration
    *     to ensure that the various parts of the program be made available
    *     in the correct location in the file system (or container image).
    *     By contrast, deploying an application consisting of a single static
    *     executable is straightforward.
    * 
    *   - Reasoning about program initialization is more difficult when
    *     some packages may not be initialized until long after the
    *     application has started running.
    * 
    *   - Bugs in applications that load plugins could be exploited by
    *     an attacker to load dangerous or untrusted libraries.
    * 
    *   - Runtime crashes are likely to occur unless all parts of the
    *     program (the application and all its plugins) are compiled
    *     using exactly the same version of the toolchain, the same build
    *     tags, and the same values of certain flags and environment
    *     variables.
    * 
    *   - Similar crashing problems are likely to arise unless all common
    *     dependencies of the application and its plugins are built from
    *     exactly the same source code.
    * 
    *   - Together, these restrictions mean that, in practice, the
    *     application and its plugins must all be built together by a
    *     single person or component of a system. In that case, it may
    *     be simpler for that person or component to generate Go source
    *     files that blank-import the desired set of plugins and then
    *     compile a static executable in the usual way.
    * 
    * For these reasons, many users decide that traditional interprocess
    * communication (IPC) mechanisms such as sockets, pipes, remote
    * procedure call (RPC), shared memory mappings, or file system
    * operations may be more suitable despite the performance overheads.
**/
class Plugin {
    /**
        * Open opens a Go plugin.
        * If a path has already been opened, then the existing *Plugin is returned.
        * It is safe for concurrent use by multiple goroutines.
    **/
    static public inline function open(_path:String):stdgo.Tuple<Plugin_, stdgo.Error> {
        final _path = (_path : stdgo.GoString);
        return {
            final obj = stdgo._internal.plugin.Plugin_open.open(_path);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
