package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Dylib_static_extension) abstract Dylib(stdgo._internal.debug.macho.Macho_Dylib.Dylib) from stdgo._internal.debug.macho.Macho_Dylib.Dylib to stdgo._internal.debug.macho.Macho_Dylib.Dylib {
    public var loadBytes(get, set) : LoadBytes;
    function get_loadBytes():LoadBytes return this.loadBytes;
    function set_loadBytes(v:LoadBytes):LoadBytes {
        this.loadBytes = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = (v : stdgo.GoUInt32);
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?loadBytes:LoadBytes, ?name:String, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_Dylib.Dylib(loadBytes, (name : stdgo.GoString), (time : stdgo.GoUInt32), (currentVersion : stdgo.GoUInt32), (compatVersion : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
