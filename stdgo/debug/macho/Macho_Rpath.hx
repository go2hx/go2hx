package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Rpath_static_extension) abstract Rpath(stdgo._internal.debug.macho.Macho_Rpath.Rpath) from stdgo._internal.debug.macho.Macho_Rpath.Rpath to stdgo._internal.debug.macho.Macho_Rpath.Rpath {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var path(get, set) : String;
    function get_path():String return this.path;
    function set_path(v:String):String {
        this.path = (v : stdgo.GoString);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?path:String) this = new stdgo._internal.debug.macho.Macho_Rpath.Rpath(loadBytes, (path : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
