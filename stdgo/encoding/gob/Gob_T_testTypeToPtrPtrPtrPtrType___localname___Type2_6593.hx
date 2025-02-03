package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593_static_extension) abstract T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593) from stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 to stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 {
    public var a(get, set) : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>;
    function get_a():stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> return this.a;
    function set_a(v:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>):stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>> {
        this.a = v;
        return v;
    }
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<StdTypes.Float>>>>) this = new stdgo._internal.encoding.gob.Gob_T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(a);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
