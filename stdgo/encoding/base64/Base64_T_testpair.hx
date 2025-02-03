package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.T_testpair_static_extension) abstract T_testpair(stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair) from stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair to stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair {
    public var _decoded(get, set) : String;
    function get__decoded():String return this._decoded;
    function set__decoded(v:String):String {
        this._decoded = (v : stdgo.GoString);
        return v;
    }
    public var _encoded(get, set) : String;
    function get__encoded():String return this._encoded;
    function set__encoded(v:String):String {
        this._encoded = (v : stdgo.GoString);
        return v;
    }
    public function new(?_decoded:String, ?_encoded:String) this = new stdgo._internal.encoding.base64.Base64_T_testpair.T_testpair((_decoded : stdgo.GoString), (_encoded : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
