package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_countWriter_static_extension) abstract T_countWriter(stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter) from stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter to stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _count(get, set) : haxe.Int64;
    function get__count():haxe.Int64 return this._count;
    function set__count(v:haxe.Int64):haxe.Int64 {
        this._count = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_count:haxe.Int64) this = new stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter(_w, (_count : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
