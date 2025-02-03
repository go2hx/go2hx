package stdgo.io;
@:structInit @:using(stdgo.io.Io.LimitedReader_static_extension) abstract LimitedReader(stdgo._internal.io.Io_LimitedReader.LimitedReader) from stdgo._internal.io.Io_LimitedReader.LimitedReader to stdgo._internal.io.Io_LimitedReader.LimitedReader {
    public var r(get, set) : Reader;
    function get_r():Reader return this.r;
    function set_r(v:Reader):Reader {
        this.r = v;
        return v;
    }
    public var n(get, set) : haxe.Int64;
    function get_n():haxe.Int64 return this.n;
    function set_n(v:haxe.Int64):haxe.Int64 {
        this.n = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?r:Reader, ?n:haxe.Int64) this = new stdgo._internal.io.Io_LimitedReader.LimitedReader(r, (n : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
