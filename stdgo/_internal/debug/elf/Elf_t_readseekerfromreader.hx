package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_t_readseekerfromreader_static_extension.T_readSeekerFromReader_static_extension) class T_readSeekerFromReader {
    public var _reset : () -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; } = null;
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _size : stdgo.GoInt64 = 0;
    public var _offset : stdgo.GoInt64 = 0;
    public function new(?_reset:() -> { var _0 : stdgo._internal.io.Io_reader.Reader; var _1 : stdgo.Error; }, ?_r:stdgo._internal.io.Io_reader.Reader, ?_size:stdgo.GoInt64, ?_offset:stdgo.GoInt64) {
        if (_reset != null) this._reset = _reset;
        if (_r != null) this._r = _r;
        if (_size != null) this._size = _size;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readSeekerFromReader(_reset, _r, _size, _offset);
    }
}
