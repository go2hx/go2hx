package stdgo.internal.platform;
@:structInit @:using(stdgo.internal.platform.Platform.OSArch_static_extension) abstract OSArch(stdgo._internal.internal.platform.Platform_OSArch.OSArch) from stdgo._internal.internal.platform.Platform_OSArch.OSArch to stdgo._internal.internal.platform.Platform_OSArch.OSArch {
    public var gOOS(get, set) : String;
    function get_gOOS():String return this.gOOS;
    function set_gOOS(v:String):String {
        this.gOOS = (v : stdgo.GoString);
        return v;
    }
    public var gOARCH(get, set) : String;
    function get_gOARCH():String return this.gOARCH;
    function set_gOARCH(v:String):String {
        this.gOARCH = (v : stdgo.GoString);
        return v;
    }
    public function new(?gOOS:String, ?gOARCH:String) this = new stdgo._internal.internal.platform.Platform_OSArch.OSArch((gOOS : stdgo.GoString), (gOARCH : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
