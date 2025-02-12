package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testtypetoptrtype___localname___type0_6224_static_extension.T_testTypeToPtrType___localname___Type0_6224_static_extension) class T_testTypeToPtrType___localname___Type0_6224 {
    public var a : stdgo.GoInt = 0;
    public function new(?a:stdgo.GoInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeToPtrType___localname___Type0_6224(a);
    }
}
