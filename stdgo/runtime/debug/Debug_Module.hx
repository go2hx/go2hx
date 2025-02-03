package stdgo.runtime.debug;
@:structInit @:using(stdgo.runtime.debug.Debug.Module_static_extension) abstract Module(stdgo._internal.runtime.debug.Debug_Module.Module) from stdgo._internal.runtime.debug.Debug_Module.Module to stdgo._internal.runtime.debug.Debug_Module.Module {
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = (v : stdgo.GoString);
        return v;
    }
    public var sum(get, set) : String;
    function get_sum():String return this.sum;
    function set_sum(v:String):String {
        this.sum = (v : stdgo.GoString);
        return v;
    }
    public var replace(get, set) : Module;
    function get_replace():Module return this.replace;
    function set_replace(v:Module):Module {
        this.replace = (v : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>);
        return v;
    }
    public function new(?path:String, ?version:String, ?sum:String, ?replace:Module) this = new stdgo._internal.runtime.debug.Debug_Module.Module((path : stdgo.GoString), (version : stdgo.GoString), (sum : stdgo.GoString), (replace : stdgo.Ref<stdgo._internal.runtime.debug.Debug_Module.Module>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
