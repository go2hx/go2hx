package stdgo._internal.runtime.debug;
@:structInit @:using(stdgo._internal.runtime.debug.Debug_buildsetting_static_extension.BuildSetting_static_extension) class BuildSetting {
    public var key : stdgo.GoString = "";
    public var value : stdgo.GoString = "";
    public function new(?key:stdgo.GoString, ?value:stdgo.GoString) {
        if (key != null) this.key = key;
        if (value != null) this.value = value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BuildSetting(key, value);
    }
}
