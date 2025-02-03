package stdgo.runtime.debug;
@:structInit @:using(stdgo.runtime.debug.Debug.BuildInfo_static_extension) abstract BuildInfo(stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo) from stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo to stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo {
    public var goVersion(get, set) : String;
    function get_goVersion():String return this.goVersion;
    function set_goVersion(v:String):String {
        this.goVersion = (v : stdgo.GoString);
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var __Main(get, set) : Module;
    function get___Main():Module return this.__Main;
    function set___Main(v:Module):Module {
        this.__Main = v;
        return v;
    }
    public var deps(get, set) : Array<Module>;
    function get_deps():Array<Module> return [for (i in this.deps) i];
    function set_deps(v:Array<Module>):Array<Module> {
        this.deps = ([for (i in v) (i : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>>);
        return v;
    }
    public var settings(get, set) : Array<BuildSetting>;
    function get_settings():Array<BuildSetting> return [for (i in this.settings) i];
    function set_settings(v:Array<BuildSetting>):Array<BuildSetting> {
        this.settings = ([for (i in v) i] : stdgo.Slice<stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting>);
        return v;
    }
    public function new(?goVersion:String, ?path:String, ?__Main:Module, ?deps:Array<Module>, ?settings:Array<BuildSetting>) this = new stdgo._internal.runtime.debug.Debug_BuildInfo.BuildInfo((goVersion : stdgo.GoString), (path : stdgo.GoString), __Main, ([for (i in deps) (i : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>>), ([for (i in settings) i] : stdgo.Slice<stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
