package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_benchmarkencoderencode___localname___t_11092_static_extension.T_benchmarkEncoderEncode___localname___T_11092_static_extension) class T_benchmarkEncoderEncode___localname___T_11092 {
    public var x : stdgo.GoString = "";
    public var y : stdgo.GoString = "";
    public function new(?x:stdgo.GoString, ?y:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_benchmarkEncoderEncode___localname___T_11092(x, y);
    }
}
