package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testptrtypetotype___localname___type1_6414_static_extension.T_testPtrTypeToType___localname___Type1_6414_static_extension) class T_testPtrTypeToType___localname___Type1_6414 {
    public var a : stdgo.GoUInt = 0;
    public function new(?a:stdgo.GoUInt) {
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testPtrTypeToType___localname___Type1_6414(a);
    }
}
