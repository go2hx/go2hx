package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_multiReader_static_extension) abstract T_multiReader(stdgo._internal.io.Io_T_multiReader.T_multiReader) from stdgo._internal.io.Io_T_multiReader.T_multiReader to stdgo._internal.io.Io_T_multiReader.T_multiReader {
    public var _readers(get, set) : Array<Reader>;
    function get__readers():Array<Reader> return [for (i in this._readers) i];
    function set__readers(v:Array<Reader>):Array<Reader> {
        this._readers = ([for (i in v) i] : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        return v;
    }
    public function new(?_readers:Array<Reader>) this = new stdgo._internal.io.Io_T_multiReader.T_multiReader(([for (i in _readers) i] : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
