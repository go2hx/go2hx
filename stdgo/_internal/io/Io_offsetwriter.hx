package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_offsetwriter_static_extension.OffsetWriter_static_extension) class OffsetWriter {
    public var _w : stdgo._internal.io.Io_writerat.WriterAt = (null : stdgo._internal.io.Io_writerat.WriterAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public function new(?_w:stdgo._internal.io.Io_writerat.WriterAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64) {
        if (_w != null) this._w = _w;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OffsetWriter(_w, _base, _off);
    }
}
