package stdgo._internal.compress.gzip;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_reader_static_extension.Reader_static_extension) class Reader {
    @:embedded
    public var header : stdgo._internal.compress.gzip.Gzip_header.Header = ({} : stdgo._internal.compress.gzip.Gzip_header.Header);
    public var _r : stdgo._internal.compress.flate.Flate_reader.Reader = (null : stdgo._internal.compress.flate.Flate_reader.Reader);
    public var _decompressor : stdgo._internal.io.Io_readcloser.ReadCloser = (null : stdgo._internal.io.Io_readcloser.ReadCloser);
    public var _digest : stdgo.GoUInt32 = 0;
    public var _size : stdgo.GoUInt32 = 0;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(512, 512).__setNumber32__();
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _multistream : Bool = false;
    public function new(?header:stdgo._internal.compress.gzip.Gzip_header.Header, ?_r:stdgo._internal.compress.flate.Flate_reader.Reader, ?_decompressor:stdgo._internal.io.Io_readcloser.ReadCloser, ?_digest:stdgo.GoUInt32, ?_size:stdgo.GoUInt32, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool) {
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
