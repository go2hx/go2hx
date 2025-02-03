package stdgo.io;
@:structInit @:using(stdgo.io.Io.OffsetWriter_static_extension) abstract OffsetWriter(stdgo._internal.io.Io_OffsetWriter.OffsetWriter) from stdgo._internal.io.Io_OffsetWriter.OffsetWriter to stdgo._internal.io.Io_OffsetWriter.OffsetWriter {
    public var _w(get, set) : WriterAt;
    function get__w():WriterAt return this._w;
    function set__w(v:WriterAt):WriterAt {
        this._w = v;
        return v;
    }
    public var _base(get, set) : haxe.Int64;
    function get__base():haxe.Int64 return this._base;
    function set__base(v:haxe.Int64):haxe.Int64 {
        this._base = (v : stdgo.GoInt64);
        return v;
    }
    public var _off(get, set) : haxe.Int64;
    function get__off():haxe.Int64 return this._off;
    function set__off(v:haxe.Int64):haxe.Int64 {
        this._off = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_w:WriterAt, ?_base:haxe.Int64, ?_off:haxe.Int64) this = new stdgo._internal.io.Io_OffsetWriter.OffsetWriter(_w, (_base : stdgo.GoInt64), (_off : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
