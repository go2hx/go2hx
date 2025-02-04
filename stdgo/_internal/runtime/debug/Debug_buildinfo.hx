package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_buildinfo_static_extension.BuildInfo_static_extension) class BuildInfo {
    public var goVersion : stdgo.GoString = "";
    public var path : stdgo.GoString = "";
    public var __Main : stdgo._internal.runtime.debug.Debug_module.Module = ({} : stdgo._internal.runtime.debug.Debug_module.Module);
    public var deps : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>>);
    public var settings : stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting> = (null : stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting>);
    public function new(?goVersion:stdgo.GoString, ?path:stdgo.GoString, ?__Main:stdgo._internal.runtime.debug.Debug_module.Module, ?deps:stdgo.Slice<stdgo.Ref<stdgo._internal.runtime.debug.Debug_module.Module>>, ?settings:stdgo.Slice<stdgo._internal.runtime.debug.Debug_buildsetting.BuildSetting>) {
        if (goVersion != null) this.goVersion = goVersion;
        if (path != null) this.path = path;
        if (__Main != null) this.__Main = __Main;
        if (deps != null) this.deps = deps;
        if (settings != null) this.settings = settings;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildInfo(goVersion, path, __Main, deps, settings);
    }
}
