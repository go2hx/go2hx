package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu32_18249_static_extension.T_testOverflow___localname___outu32_18249_static_extension) class T_testOverflow___localname___outu32_18249 {
    public var maxu : stdgo.GoUInt32 = 0;
    public function new(?maxu:stdgo.GoUInt32) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outu32_18249(maxu);
    }
}
