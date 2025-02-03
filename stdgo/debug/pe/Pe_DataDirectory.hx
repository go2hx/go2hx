package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.DataDirectory_static_extension) abstract DataDirectory(stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory) from stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory to stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory {
    public var virtualAddress(get, set) : std.UInt;
    function get_virtualAddress():std.UInt return this.virtualAddress;
    function set_virtualAddress(v:std.UInt):std.UInt {
        this.virtualAddress = (v : stdgo.GoUInt32);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?virtualAddress:std.UInt, ?size:std.UInt) this = new stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory((virtualAddress : stdgo.GoUInt32), (size : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
