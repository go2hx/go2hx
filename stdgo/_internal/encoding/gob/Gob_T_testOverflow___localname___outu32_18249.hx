package stdgo._internal.encoding.gob;
@:structInit class T_testOverflow___localname___outu32_18249 {
    public var maxu : stdgo.GoUInt32 = 0;
    public function new(?maxu:stdgo.GoUInt32) {
        if (maxu != null) this.maxu = maxu;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outu32_18249(maxu);
    }
}
