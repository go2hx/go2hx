package stdgo._internal.encoding.base64;
@:structInit class T_encodingTest {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
    public var _conv : stdgo.GoString -> stdgo.GoString = null;
    public function new(?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>, ?_conv:stdgo.GoString -> stdgo.GoString) {
        if (_enc != null) this._enc = _enc;
        if (_conv != null) this._conv = _conv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encodingTest(_enc, _conv);
    }
}
