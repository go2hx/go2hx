package stdgo._internal.encoding.hex;
@:structInit @:using(stdgo._internal.encoding.hex.Hex_t_encdectest_static_extension.T_encDecTest_static_extension) class T_encDecTest {
    public var _enc : stdgo.GoString = "";
    public var _dec : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_enc:stdgo.GoString, ?_dec:stdgo.Slice<stdgo.GoUInt8>) {
        if (_enc != null) this._enc = _enc;
        if (_dec != null) this._dec = _dec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encDecTest(_enc, _dec);
    }
}
