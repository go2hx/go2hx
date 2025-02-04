package stdgo._internal.io;
@:structInit @:using(stdgo._internal.io.Io_sectionreader_static_extension.SectionReader_static_extension) class SectionReader {
    public var _r : stdgo._internal.io.Io_readerat.ReaderAt = (null : stdgo._internal.io.Io_readerat.ReaderAt);
    public var _base : stdgo.GoInt64 = 0;
    public var _off : stdgo.GoInt64 = 0;
    public var _limit : stdgo.GoInt64 = 0;
    public function new(?_r:stdgo._internal.io.Io_readerat.ReaderAt, ?_base:stdgo.GoInt64, ?_off:stdgo.GoInt64, ?_limit:stdgo.GoInt64) {
        if (_r != null) this._r = _r;
        if (_base != null) this._base = _base;
        if (_off != null) this._off = _off;
        if (_limit != null) this._limit = _limit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionReader(_r, _base, _off, _limit);
    }
}
