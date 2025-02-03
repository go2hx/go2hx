package stdgo.io;
@:structInit @:using(stdgo.io.Io.SectionReader_static_extension) abstract SectionReader(stdgo._internal.io.Io_SectionReader.SectionReader) from stdgo._internal.io.Io_SectionReader.SectionReader to stdgo._internal.io.Io_SectionReader.SectionReader {
    public var _r(get, set) : ReaderAt;
    function get__r():ReaderAt return this._r;
    function set__r(v:ReaderAt):ReaderAt {
        this._r = v;
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
    public var _limit(get, set) : haxe.Int64;
    function get__limit():haxe.Int64 return this._limit;
    function set__limit(v:haxe.Int64):haxe.Int64 {
        this._limit = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_r:ReaderAt, ?_base:haxe.Int64, ?_off:haxe.Int64, ?_limit:haxe.Int64) this = new stdgo._internal.io.Io_SectionReader.SectionReader(_r, (_base : stdgo.GoInt64), (_off : stdgo.GoInt64), (_limit : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
