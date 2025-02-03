package stdgo.runtime.debug;
@:structInit @:using(stdgo.runtime.debug.Debug.BuildSetting_static_extension) abstract BuildSetting(stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting) from stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting to stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting {
    public var key(get, set) : String;
    function get_key():String return this.key;
    function set_key(v:String):String {
        this.key = (v : stdgo.GoString);
        return v;
    }
    public var value(get, set) : String;
    function get_value():String return this.value;
    function set_value(v:String):String {
        this.value = (v : stdgo.GoString);
        return v;
    }
    public function new(?key:String, ?value:String) this = new stdgo._internal.runtime.debug.Debug_BuildSetting.BuildSetting((key : stdgo.GoString), (value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
