package stdgo.net;
@:structInit @:using(stdgo.net.Net.Interface_static_extension) abstract Interface(stdgo._internal.net.Net_Interface.Interface) from stdgo._internal.net.Net_Interface.Interface to stdgo._internal.net.Net_Interface.Interface {
    public var index(get, set) : StdTypes.Int;
    function get_index():StdTypes.Int return this.index;
    function set_index(v:StdTypes.Int):StdTypes.Int {
        this.index = (v : stdgo.GoInt);
        return v;
    }
    public var mTU(get, set) : StdTypes.Int;
    function get_mTU():StdTypes.Int return this.mTU;
    function set_mTU(v:StdTypes.Int):StdTypes.Int {
        this.mTU = (v : stdgo.GoInt);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var hardwareAddr(get, set) : HardwareAddr;
    function get_hardwareAddr():HardwareAddr return this.hardwareAddr;
    function set_hardwareAddr(v:HardwareAddr):HardwareAddr {
        this.hardwareAddr = v;
        return v;
    }
    public var flags(get, set) : Flags;
    function get_flags():Flags return this.flags;
    function set_flags(v:Flags):Flags {
        this.flags = v;
        return v;
    }
    public function new(?index:StdTypes.Int, ?mTU:StdTypes.Int, ?name:String, ?hardwareAddr:HardwareAddr, ?flags:Flags) this = new stdgo._internal.net.Net_Interface.Interface((index : stdgo.GoInt), (mTU : stdgo.GoInt), (name : stdgo.GoString), hardwareAddr, flags);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
