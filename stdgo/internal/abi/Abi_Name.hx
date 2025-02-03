package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.Name_static_extension) abstract Name(stdgo._internal.internal.abi.Abi_Name.Name) from stdgo._internal.internal.abi.Abi_Name.Name to stdgo._internal.internal.abi.Abi_Name.Name {
    public var bytes(get, set) : stdgo.Pointer<std.UInt>;
    function get_bytes():stdgo.Pointer<std.UInt> return this.bytes;
    function set_bytes(v:stdgo.Pointer<std.UInt>):stdgo.Pointer<std.UInt> {
        this.bytes = v;
        return v;
    }
    public function new(?bytes:stdgo.Pointer<std.UInt>) this = new stdgo._internal.internal.abi.Abi_Name.Name(bytes);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
