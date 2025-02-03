package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_testTypeToPtrType___localname___Type0_6215_static_extension) abstract T_testTypeToPtrType___localname___Type0_6215(stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215) from stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215 to stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215 {
    public var a(get, set) : StdTypes.Int;
    function get_a():StdTypes.Int return this.a;
    function set_a(v:StdTypes.Int):StdTypes.Int {
        this.a = (v : stdgo.GoInt);
        return v;
    }
    public function new(?a:StdTypes.Int) this = new stdgo._internal.encoding.gob.Gob_T_testTypeToPtrType___localname___Type0_6215.T_testTypeToPtrType___localname___Type0_6215((a : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
