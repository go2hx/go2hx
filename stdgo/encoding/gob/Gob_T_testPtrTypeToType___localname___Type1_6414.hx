package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testPtrTypeToType___localname___Type1_6414_static_extension) abstract T_testPtrTypeToType___localname___Type1_6414(stdgo._internal.encoding.gob.Gob_T_testPtrTypeToType___localname___Type1_6414.T_testPtrTypeToType___localname___Type1_6414) from stdgo._internal.encoding.gob.Gob_T_testPtrTypeToType___localname___Type1_6414.T_testPtrTypeToType___localname___Type1_6414 to stdgo._internal.encoding.gob.Gob_T_testPtrTypeToType___localname___Type1_6414.T_testPtrTypeToType___localname___Type1_6414 {
    public var a(get, set) : std.UInt;
    function get_a():std.UInt return this.a;
    function set_a(v:std.UInt):std.UInt {
        this.a = (v : stdgo.GoUInt);
        return v;
    }
    public function new(?a:std.UInt) this = new stdgo._internal.encoding.gob.Gob_T_testPtrTypeToType___localname___Type1_6414.T_testPtrTypeToType___localname___Type1_6414((a : stdgo.GoUInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
