package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.T_encodingTest_static_extension) abstract T_encodingTest(stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest) from stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest to stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest {
    public var _enc(get, set) : Encoding;
    function get__enc():Encoding return this._enc;
    function set__enc(v:Encoding):Encoding {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
        return v;
    }
    public var _conv(get, set) : stdgo.GoString -> stdgo.GoString;
    function get__conv():stdgo.GoString -> stdgo.GoString return _0 -> this._conv(_0);
    function set__conv(v:stdgo.GoString -> stdgo.GoString):stdgo.GoString -> stdgo.GoString {
        this._conv = v;
        return v;
    }
    public function new(?_enc:Encoding, ?_conv:stdgo.GoString -> stdgo.GoString) this = new stdgo._internal.encoding.base64.Base64_T_encodingTest.T_encodingTest((_enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>), _conv);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
