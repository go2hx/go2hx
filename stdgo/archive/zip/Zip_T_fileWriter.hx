package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_fileWriter_static_extension) abstract T_fileWriter(stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter) from stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter to stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter {
    public var _header(get, set) : T_header;
    function get__header():T_header return this._header;
    function set__header(v:T_header):T_header {
        this._header = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>);
        return v;
    }
    public var _zipw(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__zipw():stdgo._internal.io.Io_Writer.Writer return this._zipw;
    function set__zipw(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._zipw = v;
        return v;
    }
    public var _rawCount(get, set) : T_countWriter;
    function get__rawCount():T_countWriter return this._rawCount;
    function set__rawCount(v:T_countWriter):T_countWriter {
        this._rawCount = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
        return v;
    }
    public var _comp(get, set) : stdgo._internal.io.Io_WriteCloser.WriteCloser;
    function get__comp():stdgo._internal.io.Io_WriteCloser.WriteCloser return this._comp;
    function set__comp(v:stdgo._internal.io.Io_WriteCloser.WriteCloser):stdgo._internal.io.Io_WriteCloser.WriteCloser {
        this._comp = v;
        return v;
    }
    public var _compCount(get, set) : T_countWriter;
    function get__compCount():T_countWriter return this._compCount;
    function set__compCount(v:T_countWriter):T_countWriter {
        this._compCount = (v : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>);
        return v;
    }
    public var _crc32(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__crc32():stdgo._internal.hash.Hash_Hash32.Hash32 return this._crc32;
    function set__crc32(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._crc32 = v;
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public function new(?_header:T_header, ?_zipw:stdgo._internal.io.Io_Writer.Writer, ?_rawCount:T_countWriter, ?_comp:stdgo._internal.io.Io_WriteCloser.WriteCloser, ?_compCount:T_countWriter, ?_crc32:stdgo._internal.hash.Hash_Hash32.Hash32, ?_closed:Bool) this = new stdgo._internal.archive.zip.Zip_T_fileWriter.T_fileWriter((_header : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_header.T_header>), _zipw, (_rawCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>), _comp, (_compCount : stdgo.Ref<stdgo._internal.archive.zip.Zip_T_countWriter.T_countWriter>), _crc32, _closed);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
