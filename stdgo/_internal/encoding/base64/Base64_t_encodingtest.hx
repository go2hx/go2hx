package stdgo._internal.encoding.base64;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_t_encodingtest_static_extension.T_encodingTest_static_extension) class T_encodingTest {
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    public var _conv : stdgo.GoString -> stdgo.GoString = null;
    public function new(?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, ?_conv:stdgo.GoString -> stdgo.GoString) {
        if (_enc != null) this._enc = _enc;
        if (_conv != null) this._conv = _conv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encodingTest(_enc, _conv);
    }
}
