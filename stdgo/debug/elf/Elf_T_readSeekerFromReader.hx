package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.T_readSeekerFromReader_static_extension) abstract T_readSeekerFromReader(stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader) from stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader to stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader {
    public var _reset(get, set) : () -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; };
    function get__reset():() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } return () -> this._reset();
    function set__reset(v:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }):() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; } {
        this._reset = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = (v : stdgo.GoInt64);
        return v;
    }
    public var _offset(get, set) : haxe.Int64;
    function get__offset():haxe.Int64 return this._offset;
    function set__offset(v:haxe.Int64):haxe.Int64 {
        this._offset = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_reset:() -> { var _0 : stdgo._internal.io.Io_Reader.Reader; var _1 : stdgo.Error; }, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_size:haxe.Int64, ?_offset:haxe.Int64) this = new stdgo._internal.debug.elf.Elf_T_readSeekerFromReader.T_readSeekerFromReader(_reset, _r, (_size : stdgo.GoInt64), (_offset : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
