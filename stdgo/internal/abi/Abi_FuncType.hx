package stdgo.internal.abi;
@:structInit @:using(stdgo.internal.abi.Abi.FuncType_static_extension) abstract FuncType(stdgo._internal.internal.abi.Abi_FuncType.FuncType) from stdgo._internal.internal.abi.Abi_FuncType.FuncType to stdgo._internal.internal.abi.Abi_FuncType.FuncType {
    public var type(get, set) : Type_;
    function get_type():Type_ return this.type;
    function set_type(v:Type_):Type_ {
        this.type = v;
        return v;
    }
    public var inCount(get, set) : std.UInt;
    function get_inCount():std.UInt return this.inCount;
    function set_inCount(v:std.UInt):std.UInt {
        this.inCount = (v : stdgo.GoUInt16);
        return v;
    }
    public var outCount(get, set) : std.UInt;
    function get_outCount():std.UInt return this.outCount;
    function set_outCount(v:std.UInt):std.UInt {
        this.outCount = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?type:Type_, ?inCount:std.UInt, ?outCount:std.UInt) this = new stdgo._internal.internal.abi.Abi_FuncType.FuncType(type, (inCount : stdgo.GoUInt16), (outCount : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
