package stdgo._internal.compress.gzip;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_writer_static_extension.Writer_static_extension) class Writer {
    @:embedded
    public var header : stdgo._internal.compress.gzip.Gzip_header.Header = ({} : stdgo._internal.compress.gzip.Gzip_header.Header);
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _level : stdgo.GoInt = 0;
    public var _wroteHeader : Bool = false;
    public var _compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = (null : stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>);
    public var _digest : stdgo.GoUInt32 = 0;
    public var _size : stdgo.GoUInt32 = 0;
    public var _closed : Bool = false;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(10, 10).__setNumber32__();
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?header:stdgo._internal.compress.gzip.Gzip_header.Header, ?_w:stdgo._internal.io.Io_writer.Writer, ?_level:stdgo.GoInt, ?_wroteHeader:Bool, ?_compressor:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer>, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_closed:Bool, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error) {
        if (header != null) this.header = header;
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_size != null) this._size = _size;
        if (_closed != null) this._closed = _closed;
        if (_buf != null) this._buf = _buf;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(header, _w, _level, _wroteHeader, _compressor, _digest, _size, _closed, _buf, _err);
    }
}
