package stdgo.compress.gzip;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errChecksum : stdgo.Error = stdgo.errors.Errors.new_(((("gzip: invalid checksum" : GoString))));
var errHeader : stdgo.Error = stdgo.errors.Errors.new_(((("gzip: invalid header" : GoString))));
var _le : stdgo.encoding.binary.Binary.T_littleEndian = stdgo.encoding.binary.Binary.littleEndian;
@:structInit class Header {
    public var comment : GoString = (("" : GoString));
    public var extra : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var modTime : stdgo.time.Time.Time = new stdgo.time.Time.Time();
    public var name : GoString = (("" : GoString));
    public var os : GoUInt8 = ((0 : GoUInt8));
    public function new(?comment:GoString, ?extra:Slice<GoUInt8>, ?modTime:stdgo.time.Time.Time, ?name:GoString, ?os:GoUInt8) {
        if (comment != null) this.comment = comment;
        if (extra != null) this.extra = extra;
        if (modTime != null) this.modTime = modTime;
        if (name != null) this.name = name;
        if (os != null) this.os = os;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Header(comment, extra, modTime, name, os);
    }
}
@:structInit @:using(stdgo.compress.gzip.Gzip.Reader_static_extension) class Reader {
    @:embedded
    public var header : Header = new Header();
    public var _r : stdgo.compress.flate.Flate.Reader = ((null : stdgo.compress.flate.Flate.Reader));
    public var _decompressor : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public var _digest : GoUInt32 = ((0 : GoUInt32));
    public var _size : GoUInt32 = ((0 : GoUInt32));
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]);
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _multistream : Bool = false;
    public function new(?header:Header, ?_r:stdgo.compress.flate.Flate.Reader, ?_decompressor:stdgo.io.Io.ReadCloser, ?_digest:GoUInt32, ?_size:GoUInt32, ?_buf:GoArray<GoUInt8>, ?_err:stdgo.Error, ?_multistream:Bool) {
        if (header != null) this.header = header;
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_size != null) this._size = _size;
        if (_buf != null) this._buf = _buf;
        if (_err != null) this._err = _err;
        if (_multistream != null) this._multistream = _multistream;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(header, _r, _decompressor, _digest, _size, _buf, _err, _multistream);
    }
}
@:structInit @:using(stdgo.compress.gzip.Gzip.Writer_static_extension) class Writer {
    @:embedded
    public var header : Header = new Header();
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _level : GoInt = ((0 : GoInt));
    public var _wroteHeader : Bool = false;
    public var _compressor : Ref<stdgo.compress.flate.Flate.Writer> = null;
    public var _digest : GoUInt32 = ((0 : GoUInt32));
    public var _size : GoUInt32 = ((0 : GoUInt32));
    public var _closed : Bool = false;
    public var _buf : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 10) ((0 : GoUInt8))]);
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public function new(?header:Header, ?_w:stdgo.io.Io.Writer, ?_level:GoInt, ?_wroteHeader:Bool, ?_compressor:Ref<stdgo.compress.flate.Flate.Writer>, ?_digest:GoUInt32, ?_size:GoUInt32, ?_closed:Bool, ?_buf:GoArray<GoUInt8>, ?_err:stdgo.Error) {
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
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(header, _w, _level, _wroteHeader, _compressor, _digest, _size, _closed, _buf, _err);
    }
}
/**
    // noEOF converts io.EOF to io.ErrUnexpectedEOF.
**/
function _noEOF(_err:Error):Error {
        if (_err == stdgo.io.Io.eof) {
            return stdgo.io.Io.errUnexpectedEOF;
        };
        return _err;
    }
/**
    // NewReader creates a new Reader reading the given reader.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
    //
    // It is the caller's responsibility to call Close on the Reader when done.
    //
    // The Reader.Header fields will be valid in the Reader returned.
**/
function newReader(_r:stdgo.io.Io.Reader):{ var _0 : Reader; var _1 : Error; } {
        var _z = new Reader();
        {
            var _err:stdgo.Error = _z.reset(_r);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _z, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewWriter returns a new Writer.
    // Writes to the returned writer are compressed and written to w.
    //
    // It is the caller's responsibility to call Close on the Writer when done.
    // Writes may be buffered and not flushed until Close.
    //
    // Callers that wish to set the fields in Writer.Header must do so before
    // the first call to Write, Flush, or Close.
**/
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        var __tmp__ = newWriterLevel(_w, ((-1 : GoInt))), _z:Ref<Writer> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
        return _z;
    }
/**
    // NewWriterLevel is like NewWriter but specifies the compression level instead
    // of assuming DefaultCompression.
    //
    // The compression level can be DefaultCompression, NoCompression, HuffmanOnly
    // or any integer value between BestSpeed and BestCompression inclusive.
    // The error returned will be nil if the level is valid.
**/
function newWriterLevel(_w:stdgo.io.Io.Writer, _level:GoInt):{ var _0 : Writer; var _1 : Error; } {
        if ((_level < ((-2 : GoInt))) || (_level > ((9 : GoInt)))) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("gzip: invalid compression level: %d" : GoString))), Go.toInterface(_level)) };
        };
        var _z = new Writer();
        _z._init(_w, _level);
        return { _0 : _z, _1 : ((null : stdgo.Error)) };
    }
@:keep class Reader_static_extension {
    /**
        // Close closes the Reader. It does not close the underlying io.Reader.
        // In order for the GZIP checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    public static function close( _z:Reader):Error {
        return _z._decompressor.close();
    }
    /**
        // Read implements io.Reader, reading uncompressed bytes from its underlying Reader.
    **/
    @:keep
    public static function read( _z:Reader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_z._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _z._err };
        };
        {
            var __tmp__ = _z._decompressor.read(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        _z._digest = stdgo.hash.crc32.Crc32.update(_z._digest, stdgo.hash.crc32.Crc32.ieeetable, ((_p.__slice__(0, _n) : Slice<GoUInt8>)));
        _z._size = _z._size + (((_n : GoUInt32)));
        if (_z._err != stdgo.io.Io.eof) {
            return { _0 : _n, _1 : _z._err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._buf.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _z._err = _noEOF(_err);
                return { _0 : _n, _1 : _z._err };
            };
        };
        var _digest:GoUInt32 = _le.uint32(((_z._buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)));
        var _size:GoUInt32 = _le.uint32(((_z._buf.__slice__(((4 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>)));
        if ((_digest != _z._digest) || (_size != _z._size)) {
            _z._err = errChecksum;
            return { _0 : _n, _1 : _z._err };
        };
        {
            final __tmp__0 = ((0 : GoUInt32));
            final __tmp__1 = ((0 : GoUInt32));
            _z._digest = __tmp__0;
            _z._size = __tmp__1;
        };
        if (!_z._multistream) {
            return { _0 : _n, _1 : stdgo.io.Io.eof };
        };
        _z._err = ((null : stdgo.Error));
        {
            {
                var __tmp__ = _z._readHeader();
                _z._err = {
                    final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                    __self__;
                };
            };
            if (_z._err != null) {
                return { _0 : _n, _1 : _z._err };
            };
        };
        if (_n > ((0 : GoInt))) {
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        };
        return _z.read(_p);
    }
    /**
        // readHeader reads the GZIP header according to section 2.3.1.
        // This method does not set z.err.
    **/
    @:keep
    public static function _readHeader( _z:Reader):{ var _0 : Header; var _1 : Error; } {
        var _hdr:Header = new Header(), _err:Error = ((null : stdgo.Error));
        {
            {
                var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._buf.__slice__(0, ((10 : GoInt))) : Slice<GoUInt8>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _err };
            };
        };
        if ((((_z._buf != null ? _z._buf[((0 : GoInt))] : ((0 : GoUInt8))) != ((31 : GoUInt8))) || ((_z._buf != null ? _z._buf[((1 : GoInt))] : ((0 : GoUInt8))) != ((139 : GoUInt8)))) || ((_z._buf != null ? _z._buf[((2 : GoInt))] : ((0 : GoUInt8))) != ((8 : GoUInt8)))) {
            return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : errHeader };
        };
        var _flg:GoUInt8 = (_z._buf != null ? _z._buf[((3 : GoInt))] : ((0 : GoUInt8)));
        {
            var _t:GoInt64 = ((_le.uint32(((_z._buf.__slice__(((4 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>))) : GoInt64));
            if (_t > ((0 : GoInt64))) {
                _hdr.modTime = (stdgo.time.Time.unix(_t, ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(_t, ((0 : GoInt64))).__copy__());
            };
        };
        _hdr.os = (_z._buf != null ? _z._buf[((9 : GoInt))] : ((0 : GoUInt8)));
        _z._digest = stdgo.hash.crc32.Crc32.checksumIEEE(((_z._buf.__slice__(0, ((10 : GoInt))) : Slice<GoUInt8>)));
        if ((_flg & ((4 : GoUInt8))) != ((0 : GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _noEOF(_err) };
                };
            };
            _z._digest = stdgo.hash.crc32.Crc32.update(_z._digest, stdgo.hash.crc32.Crc32.ieeetable, ((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)));
            var _data = new Slice<GoUInt8>(...[for (i in 0 ... ((_le.uint16(((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>))) : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_z._r, _data);
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _noEOF(_err) };
                };
            };
            _z._digest = stdgo.hash.crc32.Crc32.update(_z._digest, stdgo.hash.crc32.Crc32.ieeetable, _data);
            _hdr.extra = _data;
        };
        var _s:GoString = (("" : GoString));
        if ((_flg & ((8 : GoUInt8))) != ((0 : GoUInt8))) {
            {
                {
                    var __tmp__ = _z._readString();
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _err };
                };
            };
            _hdr.name = _s;
        };
        if ((_flg & ((16 : GoUInt8))) != ((0 : GoUInt8))) {
            {
                {
                    var __tmp__ = _z._readString();
                    _s = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _err };
                };
            };
            _hdr.comment = _s;
        };
        if ((_flg & ((2 : GoUInt8))) != ((0 : GoUInt8))) {
            {
                {
                    var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : _noEOF(_err) };
                };
            };
            var _digest:GoUInt16 = _le.uint16(((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)));
            if (_digest != ((_z._digest : GoUInt16))) {
                return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : errHeader };
            };
        };
        _z._digest = ((0 : GoUInt32));
        if (_z._decompressor == null) {
            _z._decompressor = stdgo.compress.flate.Flate.newReader(_z._r);
        } else {
            ((((_z._decompressor.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Resetter)).reset(_z._r, ((null : Slice<GoUInt8>)));
        };
        return { _0 : (_hdr == null ? null : _hdr.__copy__()), _1 : ((null : stdgo.Error)) };
    }
    /**
        // readString reads a NUL-terminated string from z.r.
        // It treats the bytes read as being encoded as ISO 8859-1 (Latin-1) and
        // will output a string encoded using UTF-8.
        // This method always updates z.digest with the data read.
    **/
    @:keep
    public static function _readString( _z:Reader):{ var _0 : GoString; var _1 : Error; } {
        var _err:Error = ((null : stdgo.Error));
        var _needConv:Bool = false;
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(true, _i++, {
                if (_i >= (_z._buf != null ? _z._buf.length : ((0 : GoInt)))) {
                    return { _0 : ((("" : GoString))), _1 : errHeader };
                };
                {
                    var __tmp__ = _z._r.readByte();
                    if (_z._buf != null) _z._buf[_i] = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : ((("" : GoString))), _1 : _err };
                };
                if ((_z._buf != null ? _z._buf[_i] : ((0 : GoUInt8))) > ((127 : GoUInt8))) {
                    _needConv = true;
                };
                if ((_z._buf != null ? _z._buf[_i] : ((0 : GoUInt8))) == ((0 : GoUInt8))) {
                    _z._digest = stdgo.hash.crc32.Crc32.update(_z._digest, stdgo.hash.crc32.Crc32.ieeetable, ((_z._buf.__slice__(0, _i + ((1 : GoInt))) : Slice<GoUInt8>)));
                    if (_needConv) {
                        var _s = new Slice<GoInt32>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]).__setCap__(((_i : GoInt)).toBasic());
                        for (_0 => _v in ((_z._buf.__slice__(0, _i) : Slice<GoUInt8>))) {
                            _s = (_s != null ? _s.__append__(((_v : GoRune))) : new Slice<GoInt32>(((_v : GoRune))));
                        };
                        return { _0 : ((_s : GoString)), _1 : ((null : stdgo.Error)) };
                    };
                    return { _0 : ((((_z._buf.__slice__(0, _i) : Slice<GoUInt8>)) : GoString)), _1 : ((null : stdgo.Error)) };
                };
            });
        };
    }
    /**
        // Multistream controls whether the reader supports multistream files.
        //
        // If enabled (the default), the Reader expects the input to be a sequence
        // of individually gzipped data streams, each with its own header and
        // trailer, ending at EOF. The effect is that the concatenation of a sequence
        // of gzipped files is treated as equivalent to the gzip of the concatenation
        // of the sequence. This is standard behavior for gzip readers.
        //
        // Calling Multistream(false) disables this behavior; disabling the behavior
        // can be useful when reading file formats that distinguish individual gzip
        // data streams or mix gzip data streams with other data streams.
        // In this mode, when the Reader reaches the end of the data stream,
        // Read returns io.EOF. The underlying reader must implement io.ByteReader
        // in order to be left positioned just after the gzip stream.
        // To start the next stream, call z.Reset(r) followed by z.Multistream(false).
        // If there is no next stream, z.Reset(r) will return io.EOF.
    **/
    @:keep
    public static function multistream( _z:Reader, _ok:Bool):Void {
        _z._multistream = _ok;
    }
    /**
        // Reset discards the Reader z's state and makes it equivalent to the
        // result of its original state from NewReader, but reading from r instead.
        // This permits reusing a Reader rather than allocating a new one.
    **/
    @:keep
    public static function reset( _z:Reader, _r:stdgo.io.Io.Reader):Error {
        {
            var __tmp__ = (({ _decompressor : _z._decompressor, _multistream : true, header : new Header(), _r : ((null : stdgo.compress.flate.Flate.Reader)), _digest : 0, _size : 0, _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 512) ((0 : GoUInt8))]), _err : new stdgo.Error() } : Reader));
            _z.header = __tmp__.header;
            _z._r = __tmp__._r;
            _z._decompressor = __tmp__._decompressor;
            _z._digest = __tmp__._digest;
            _z._size = __tmp__._size;
            _z._buf = __tmp__._buf;
            _z._err = __tmp__._err;
            _z._multistream = __tmp__._multistream;
        };
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Reader)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.compress.flate.Flate.Reader)), ok : false };
            }, _rr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _z._r = _rr;
            } else {
                _z._r = stdgo.bufio.Bufio.newReader(_r);
            };
        };
        {
            var __tmp__ = _z._readHeader();
            _z.header = (__tmp__._0 == null ? null : __tmp__._0.__copy__());
            _z._err = {
                final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                __self__;
            };
        };
        return _z._err;
    }
}
class Reader_wrapper {
    /**
        // Close closes the Reader. It does not close the underlying io.Reader.
        // In order for the GZIP checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Read implements io.Reader, reading uncompressed bytes from its underlying Reader.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // readHeader reads the GZIP header according to section 2.3.1.
        // This method does not set z.err.
    **/
    @:keep
    public var _readHeader : () -> { var _0 : Header; var _1 : Error; } = null;
    /**
        // readString reads a NUL-terminated string from z.r.
        // It treats the bytes read as being encoded as ISO 8859-1 (Latin-1) and
        // will output a string encoded using UTF-8.
        // This method always updates z.digest with the data read.
    **/
    @:keep
    public var _readString : () -> { var _0 : GoString; var _1 : Error; } = null;
    /**
        // Multistream controls whether the reader supports multistream files.
        //
        // If enabled (the default), the Reader expects the input to be a sequence
        // of individually gzipped data streams, each with its own header and
        // trailer, ending at EOF. The effect is that the concatenation of a sequence
        // of gzipped files is treated as equivalent to the gzip of the concatenation
        // of the sequence. This is standard behavior for gzip readers.
        //
        // Calling Multistream(false) disables this behavior; disabling the behavior
        // can be useful when reading file formats that distinguish individual gzip
        // data streams or mix gzip data streams with other data streams.
        // In this mode, when the Reader reaches the end of the data stream,
        // Read returns io.EOF. The underlying reader must implement io.ByteReader
        // in order to be left positioned just after the gzip stream.
        // To start the next stream, call z.Reset(r) followed by z.Multistream(false).
        // If there is no next stream, z.Reset(r) will return io.EOF.
    **/
    @:keep
    public var multistream : Bool -> Void = null;
    /**
        // Reset discards the Reader z's state and makes it equivalent to the
        // result of its original state from NewReader, but reading from r instead.
        // This permits reusing a Reader rather than allocating a new one.
    **/
    @:keep
    public var reset : stdgo.io.Io.Reader -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Reader;
}
@:keep class Writer_static_extension {
    /**
        // Close closes the Writer by flushing any unwritten data to the underlying
        // io.Writer and writing the GZIP footer.
        // It does not close the underlying io.Writer.
    **/
    @:keep
    public static function close( _z:Writer):Error {
        if (_z._err != null) {
            return _z._err;
        };
        if (_z._closed) {
            return ((null : stdgo.Error));
        };
        _z._closed = true;
        if (!_z._wroteHeader) {
            _z.write(((null : Slice<GoUInt8>)));
            if (_z._err != null) {
                return _z._err;
            };
        };
        _z._err = _z._compressor.close();
        if (_z._err != null) {
            return _z._err;
        };
        _le.putUint32(((_z._buf.__slice__(0, ((4 : GoInt))) : Slice<GoUInt8>)), _z._digest);
        _le.putUint32(((_z._buf.__slice__(((4 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>)), _z._size);
        {
            var __tmp__ = _z._w.write(((_z._buf.__slice__(0, ((8 : GoInt))) : Slice<GoUInt8>)));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    /**
        // Flush flushes any pending compressed data to the underlying writer.
        //
        // It is useful mainly in compressed network protocols, to ensure that
        // a remote reader has enough data to reconstruct a packet. Flush does
        // not return until the data has been written. If the underlying
        // writer returns an error, Flush returns that error.
        //
        // In the terminology of the zlib library, Flush is equivalent to Z_SYNC_FLUSH.
    **/
    @:keep
    public static function flush( _z:Writer):Error {
        if (_z._err != null) {
            return _z._err;
        };
        if (_z._closed) {
            return ((null : stdgo.Error));
        };
        if (!_z._wroteHeader) {
            _z.write(((null : Slice<GoUInt8>)));
            if (_z._err != null) {
                return _z._err;
            };
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed.
    **/
    @:keep
    public static function write( _z:Writer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_z._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _z._err };
        };
        var _n:GoInt = ((0 : GoInt));
        if (!_z._wroteHeader) {
            _z._wroteHeader = true;
            _z._buf = {
                var s:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 10) 0]);
                s[0] = ((31 : GoUInt8));
                s[1] = ((139 : GoUInt8));
                s[2] = ((8 : GoUInt8));
                s;
            };
            if (_z.extra != null) {
                if (_z._buf != null) (_z._buf != null ? _z._buf[((3 : GoInt))] : ((0 : GoUInt8))) | (((4 : GoUInt8)));
            };
            if (_z.name != ((("" : GoString)))) {
                if (_z._buf != null) (_z._buf != null ? _z._buf[((3 : GoInt))] : ((0 : GoUInt8))) | (((8 : GoUInt8)));
            };
            if (_z.comment != ((("" : GoString)))) {
                if (_z._buf != null) (_z._buf != null ? _z._buf[((3 : GoInt))] : ((0 : GoUInt8))) | (((16 : GoUInt8)));
            };
            if (_z.modTime.after((stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))) == null ? null : stdgo.time.Time.unix(((0 : GoInt64)), ((0 : GoInt64))).__copy__()))) {
                _le.putUint32(((_z._buf.__slice__(((4 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>)), ((_z.modTime.unix() : GoUInt32)));
            };
            if (_z._level == ((9 : GoInt))) {
                if (_z._buf != null) _z._buf[((8 : GoInt))] = ((2 : GoUInt8));
            } else if (_z._level == ((1 : GoInt))) {
                if (_z._buf != null) _z._buf[((8 : GoInt))] = ((4 : GoUInt8));
            };
            if (_z._buf != null) _z._buf[((9 : GoInt))] = _z.os;
            {
                var __tmp__ = _z._w.write(((_z._buf.__slice__(0, ((10 : GoInt))) : Slice<GoUInt8>)));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _z._err };
            };
            if (_z.extra != null) {
                _z._err = _z._writeBytes(_z.extra);
                if (_z._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _z._err };
                };
            };
            if (_z.name != ((("" : GoString)))) {
                _z._err = _z._writeString(_z.name);
                if (_z._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _z._err };
                };
            };
            if (_z.comment != ((("" : GoString)))) {
                _z._err = _z._writeString(_z.comment);
                if (_z._err != null) {
                    return { _0 : ((0 : GoInt)), _1 : _z._err };
                };
            };
            if (_z._compressor == null) {
                {
                    var __tmp__ = stdgo.compress.flate.Flate.newWriter(_z._w, _z._level);
                    _z._compressor = __tmp__._0;
                };
            };
        };
        _z._size = _z._size + ((((_p != null ? _p.length : ((0 : GoInt))) : GoUInt32)));
        _z._digest = stdgo.hash.crc32.Crc32.update(_z._digest, stdgo.hash.crc32.Crc32.ieeetable, _p);
        {
            var __tmp__ = _z._compressor.write(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        return { _0 : _n, _1 : _z._err };
    }
    /**
        // writeString writes a UTF-8 string s in GZIP's format to z.w.
        // GZIP (RFC 1952) specifies that strings are NUL-terminated ISO 8859-1 (Latin-1).
    **/
    @:keep
    public static function _writeString( _z:Writer, _s:GoString):Error {
        var _err:Error = ((null : stdgo.Error));
        var _needconv:Bool = false;
        for (_0 => _v in _s) {
            if ((_v == ((0 : GoInt32))) || (_v > ((255 : GoInt32)))) {
                return stdgo.errors.Errors.new_(((("gzip.Write: non-Latin-1 header string" : GoString))));
            };
            if (_v > ((127 : GoInt32))) {
                _needconv = true;
            };
        };
        if (_needconv) {
            var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__((((_s != null ? _s.length : ((0 : GoInt))) : GoInt)).toBasic());
            for (_1 => _v in _s) {
                _b = (_b != null ? _b.__append__(((_v : GoByte))) : new Slice<GoUInt8>(((_v : GoByte))));
            };
            {
                var __tmp__ = _z._w.write(_b);
                _err = __tmp__._1;
            };
        } else {
            {
                var __tmp__ = stdgo.io.Io.writeString(_z._w, _s);
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return _err;
        };
        if (_z._buf != null) _z._buf[((0 : GoInt))] = ((0 : GoUInt8));
        {
            var __tmp__ = _z._w.write(((_z._buf.__slice__(0, ((1 : GoInt))) : Slice<GoUInt8>)));
            _err = __tmp__._1;
        };
        return _err;
    }
    /**
        // writeBytes writes a length-prefixed byte slice to z.w.
    **/
    @:keep
    public static function _writeBytes( _z:Writer, _b:Slice<GoByte>):Error {
        if ((_b != null ? _b.length : ((0 : GoInt))) > ((65535 : GoInt))) {
            return stdgo.errors.Errors.new_(((("gzip.Write: Extra data is too large" : GoString))));
        };
        _le.putUint16(((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>)), (((_b != null ? _b.length : ((0 : GoInt))) : GoUInt16)));
        var __tmp__ = _z._w.write(((_z._buf.__slice__(0, ((2 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        {
            var __tmp__ = _z._w.write(_b);
            _err = __tmp__._1;
        };
        return _err;
    }
    /**
        // Reset discards the Writer z's state and makes it equivalent to the
        // result of its original state from NewWriter or NewWriterLevel, but
        // writing to w instead. This permits reusing a Writer rather than
        // allocating a new one.
    **/
    @:keep
    public static function reset( _z:Writer, _w:stdgo.io.Io.Writer):Void {
        _z._init(_w, _z._level);
    }
    @:keep
    public static function _init( _z:Writer, _w:stdgo.io.Io.Writer, _level:GoInt):Void {
        var _compressor = _z._compressor;
        if (_compressor != null) {
            _compressor.reset(_w);
        };
        {
            var __tmp__ = (({ header : (({ os : ((255 : GoUInt8)), comment : "", extra : ((null : Slice<GoUInt8>)), modTime : new stdgo.time.Time.Time(), name : "" } : Header)), _w : _w, _level : _level, _compressor : _compressor, _wroteHeader : false, _digest : 0, _size : 0, _closed : false, _buf : new GoArray<GoUInt8>(...[for (i in 0 ... 10) ((0 : GoUInt8))]), _err : new stdgo.Error() } : Writer));
            _z.header = __tmp__.header;
            _z._w = __tmp__._w;
            _z._level = __tmp__._level;
            _z._wroteHeader = __tmp__._wroteHeader;
            _z._compressor = __tmp__._compressor;
            _z._digest = __tmp__._digest;
            _z._size = __tmp__._size;
            _z._closed = __tmp__._closed;
            _z._buf = __tmp__._buf;
            _z._err = __tmp__._err;
        };
    }
}
class Writer_wrapper {
    /**
        // Close closes the Writer by flushing any unwritten data to the underlying
        // io.Writer and writing the GZIP footer.
        // It does not close the underlying io.Writer.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Flush flushes any pending compressed data to the underlying writer.
        //
        // It is useful mainly in compressed network protocols, to ensure that
        // a remote reader has enough data to reconstruct a packet. Flush does
        // not return until the data has been written. If the underlying
        // writer returns an error, Flush returns that error.
        //
        // In the terminology of the zlib library, Flush is equivalent to Z_SYNC_FLUSH.
    **/
    @:keep
    public var flush : () -> Error = null;
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // writeString writes a UTF-8 string s in GZIP's format to z.w.
        // GZIP (RFC 1952) specifies that strings are NUL-terminated ISO 8859-1 (Latin-1).
    **/
    @:keep
    public var _writeString : GoString -> Error = null;
    /**
        // writeBytes writes a length-prefixed byte slice to z.w.
    **/
    @:keep
    public var _writeBytes : Slice<GoByte> -> Error = null;
    /**
        // Reset discards the Writer z's state and makes it equivalent to the
        // result of its original state from NewWriter or NewWriterLevel, but
        // writing to w instead. This permits reusing a Writer rather than
        // allocating a new one.
    **/
    @:keep
    public var reset : stdgo.io.Io.Writer -> Void = null;
    @:keep
    public var _init : (stdgo.io.Io.Writer, GoInt) -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
