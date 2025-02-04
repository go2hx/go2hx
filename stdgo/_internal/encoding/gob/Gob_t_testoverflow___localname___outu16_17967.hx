package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outu16_17967_static_extension.T_testOverflow___localname___outu16_17967_static_extension) class T_testOverflow___localname___outu16_17967 {
    public var maxu : stdgo.GoUInt16 = 0;
    public function new(?maxu:stdgo.GoUInt16) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outu16_17967(maxu);
    }
}
