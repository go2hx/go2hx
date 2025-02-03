package stdgo.testing.iotest;
@:structInit @:using(stdgo.testing.iotest.Iotest.T_truncateWriter_static_extension) abstract T_truncateWriter(stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter) from stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter to stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _n(get, set) : haxe.Int64;
    function get__n():haxe.Int64 return this._n;
    function set__n(v:haxe.Int64):haxe.Int64 {
        this._n = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_n:haxe.Int64) this = new stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter(_w, (_n : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
