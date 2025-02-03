package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_atLeastReader_static_extension) abstract T_atLeastReader(stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader) from stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader to stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader {
    public var r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get_r():stdgo._internal.io.Io_Reader.Reader return this.r;
    function set_r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this.r = v;
        return v;
    }
    public var n(get, set) : haxe.Int64;
    function get_n():haxe.Int64 return this.n;
    function set_n(v:haxe.Int64):haxe.Int64 {
        this.n = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?r:stdgo._internal.io.Io_Reader.Reader, ?n:haxe.Int64) this = new stdgo._internal.crypto.tls.Tls_T_atLeastReader.T_atLeastReader(r, (n : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
