package stdgo._internal.compress.gzip;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_Reader_static_extension.Reader_static_extension) class Reader {
    @:embedded
    public var header : stdgo._internal.compress.gzip.Gzip_Header.Header = ({} : stdgo._internal.compress.gzip.Gzip_Header.Header);
    public var _r : stdgo._internal.compress.flate.Flate_Reader.Reader = (null : stdgo._internal.compress.flate.Flate_Reader.Reader);
    public var _decompressor : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _digest : stdgo.GoUInt32 = 0;
    public var _size : stdgo.GoUInt32 = 0;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512, ...[for (i in 0 ... 512) (0 : stdgo.GoUInt8)]);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _multistream : Bool = false;
    public function new(?header:stdgo._internal.compress.gzip.Gzip_Header.Header, ?_r:stdgo._internal.compress.flate.Flate_Reader.Reader, ?_decompressor:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool) {
        if (header != null) this.header = header;
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_size != null) this._size = _size;
        if (_buf != null) this._buf = _buf;
        if (_err != null) this._err = _err;
        if (_multistream != null) this._multistream = _multistream;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(header, _r, _decompressor, _digest, _size, _buf, _err, _multistream);
    }
}