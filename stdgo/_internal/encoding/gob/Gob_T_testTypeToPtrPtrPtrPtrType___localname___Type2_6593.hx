package stdgo._internal.encoding.gob;
@:structInit class T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593 {
    public var a : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>> = (null : stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>);
    public function new(?a:stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.Pointer<stdgo.GoFloat64>>>>) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testTypeToPtrPtrPtrPtrType___localname___Type2_6593(a);
    }
}
