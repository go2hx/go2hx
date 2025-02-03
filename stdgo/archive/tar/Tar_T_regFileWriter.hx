package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileWriter_static_extension) abstract T_regFileWriter(stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter) from stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter to stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _nb(get, set) : haxe.Int64;
    function get__nb():haxe.Int64 return this._nb;
    function set__nb(v:haxe.Int64):haxe.Int64 {
        this._nb = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_nb:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_T_regFileWriter.T_regFileWriter(_w, (_nb : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
