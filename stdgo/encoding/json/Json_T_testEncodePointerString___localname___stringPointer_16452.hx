package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_testEncodePointerString___localname___stringPointer_16452_static_extension) abstract T_testEncodePointerString___localname___stringPointer_16452(stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452) from stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452 to stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452 {
    public var n(get, set) : stdgo.Pointer<haxe.Int64>;
    function get_n():stdgo.Pointer<haxe.Int64> return this.n;
    function set_n(v:stdgo.Pointer<haxe.Int64>):stdgo.Pointer<haxe.Int64> {
        this.n = v;
        return v;
    }
    public function new(?n:stdgo.Pointer<haxe.Int64>) this = new stdgo._internal.encoding.json.Json_T_testEncodePointerString___localname___stringPointer_16452.T_testEncodePointerString___localname___stringPointer_16452(n);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
