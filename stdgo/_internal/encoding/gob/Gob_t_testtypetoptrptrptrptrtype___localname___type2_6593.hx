package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testtypetoptrptrptrptrtype___localname___type2_6593_static_extension.T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593_static_extension) class T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 {
    public var a : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>);
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(a);
    }
}
