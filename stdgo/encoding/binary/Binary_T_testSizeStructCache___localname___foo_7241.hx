package stdgo.encoding.binary;
@:structInit @:using(stdgo.encoding.binary.Binary.T_testSizeStructCache___localname___foo_7241_static_extension) abstract T_testSizeStructCache___localname___foo_7241(stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241) from stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241 to stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.binary.Binary_T_testSizeStructCache___localname___foo_7241.T_testSizeStructCache___localname___foo_7241((a : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
