package stdgo.compress.zlib;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var errChecksum : stdgo.Error = stdgo.errors.Errors.new_(((("zlib: invalid checksum" : GoString))));
var errDictionary : stdgo.Error = stdgo.errors.Errors.new_(((("zlib: invalid dictionary" : GoString))));
var errHeader : stdgo.Error = stdgo.errors.Errors.new_(((("zlib: invalid header" : GoString))));
typedef Resetter = StructType & {
    public function reset(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error;
};
@:structInit @:using(stdgo.compress.zlib.Zlib.T_reader_static_extension) class T_reader {
    public var _r : stdgo.compress.flate.Flate.Reader = ((null : stdgo.compress.flate.Flate.Reader));
    public var _decompressor : stdgo.io.Io.ReadCloser = ((null : stdgo.io.Io.ReadCloser));
    public var _digest : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public function new(?_r:stdgo.compress.flate.Flate.Reader, ?_decompressor:stdgo.io.Io.ReadCloser, ?_digest:stdgo.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:GoArray<GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_decompressor != null) this._decompressor = _decompressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reader(_r, _decompressor, _digest, _err, _scratch);
    }
}
@:structInit @:using(stdgo.compress.zlib.Zlib.Writer_static_extension) class Writer {
    public var _w : stdgo.io.Io.Writer = ((null : stdgo.io.Io.Writer));
    public var _level : GoInt = ((0 : GoInt));
    public var _dict : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public var _compressor : Ref<stdgo.compress.flate.Flate.Writer> = null;
    public var _digest : stdgo.hash.Hash.Hash32 = ((null : stdgo.hash.Hash.Hash32));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
    public var _wroteHeader : Bool = false;
    public function new(?_w:stdgo.io.Io.Writer, ?_level:GoInt, ?_dict:Slice<GoUInt8>, ?_compressor:Ref<stdgo.compress.flate.Flate.Writer>, ?_digest:stdgo.hash.Hash.Hash32, ?_err:stdgo.Error, ?_scratch:GoArray<GoUInt8>, ?_wroteHeader:Bool) {
        if (_w != null) this._w = _w;
        if (_level != null) this._level = _level;
        if (_dict != null) this._dict = _dict;
        if (_compressor != null) this._compressor = _compressor;
        if (_digest != null) this._digest = _digest;
        if (_err != null) this._err = _err;
        if (_scratch != null) this._scratch = _scratch;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _level, _dict, _compressor, _digest, _err, _scratch, _wroteHeader);
    }
}
/**
    // NewReader creates a new ReadCloser.
    // Reads from the returned ReadCloser read and decompress data from r.
    // If r does not implement io.ByteReader, the decompressor may read more
    // data than necessary from r.
    // It is the caller's responsibility to call Close on the ReadCloser when done.
    //
    // The ReadCloser returned by NewReader also implements Resetter.
**/
function newReader(_r:stdgo.io.Io.Reader):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        return newReaderDict(_r, ((null : Slice<GoUInt8>)));
    }
/**
    // NewReaderDict is like NewReader but uses a preset dictionary.
    // NewReaderDict ignores the dictionary if the compressed data does not refer to it.
    // If the compressed data refers to a different dictionary, NewReaderDict returns ErrDictionary.
    //
    // The ReadCloser returned by NewReaderDict also implements Resetter.
**/
function newReaderDict(_r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):{ var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; } {
        var _z = new T_reader();
        var _err:stdgo.Error = _z.reset(_r, _dict);
        if (_err != null) {
            return { _0 : ((null : stdgo.io.Io.ReadCloser)), _1 : _err };
        };
        return { _0 : _z, _1 : ((null : stdgo.Error)) };
    }
/**
    // NewWriter creates a new Writer.
    // Writes to the returned Writer are compressed and written to w.
    //
    // It is the caller's responsibility to call Close on the Writer when done.
    // Writes may be buffered and not flushed until Close.
**/
function newWriter(_w:stdgo.io.Io.Writer):Writer {
        var __tmp__ = newWriterLevelDict(_w, ((-1 : GoInt)), ((null : Slice<GoUInt8>))), _z:Ref<Writer> = __tmp__._0, _0:stdgo.Error = __tmp__._1;
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
        return newWriterLevelDict(_w, _level, ((null : Slice<GoUInt8>)));
    }
/**
    // NewWriterLevelDict is like NewWriterLevel but specifies a dictionary to
    // compress with.
    //
    // The dictionary may be nil. If not, its contents should not be modified until
    // the Writer is closed.
**/
function newWriterLevelDict(_w:stdgo.io.Io.Writer, _level:GoInt, _dict:Slice<GoByte>):{ var _0 : Writer; var _1 : Error; } {
        if ((_level < ((-2 : GoInt))) || (_level > ((9 : GoInt)))) {
            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(((("zlib: invalid compression level: %d" : GoString))), Go.toInterface(_level)) };
        };
        return { _0 : (({ _w : _w, _level : _level, _dict : _dict, _compressor : null, _digest : ((null : stdgo.hash.Hash.Hash32)), _err : new stdgo.Error(), _scratch : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]), _wroteHeader : false } : Writer)), _1 : ((null : stdgo.Error)) };
    }
@:keep class T_reader_static_extension {
    @:keep
    public static function reset( _z:T_reader, _r:stdgo.io.Io.Reader, _dict:Slice<GoByte>):Error {
        {
            var __tmp__ = (({ _decompressor : _z._decompressor, _r : ((null : stdgo.compress.flate.Flate.Reader)), _digest : ((null : stdgo.hash.Hash.Hash32)), _err : new stdgo.Error(), _scratch : new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]) } : T_reader));
            _z._r = __tmp__._r;
            _z._decompressor = __tmp__._decompressor;
            _z._digest = __tmp__._digest;
            _z._err = __tmp__._err;
            _z._scratch = __tmp__._scratch;
        };
        {
            var __tmp__ = try {
                { value : ((((_r.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Reader)), ok : true };
            } catch(_) {
                { value : ((null : stdgo.compress.flate.Flate.Reader)), ok : false };
            }, _fr = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _z._r = _fr;
            } else {
                _z._r = stdgo.bufio.Bufio.newReader(_r);
            };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._scratch.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
            _z._err = __tmp__._1;
        };
        if (_z._err != null) {
            if (_z._err == stdgo.io.Io.eof) {
                _z._err = stdgo.io.Io.errUnexpectedEOF;
            };
            return _z._err;
        };
        var _h:GoUInt = ((((_z._scratch != null ? _z._scratch[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt)) << ((8 : GoUnTypedInt))) | (((_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt));
        if ((((_z._scratch != null ? _z._scratch[((0 : GoInt))] : ((0 : GoUInt8))) & ((15 : GoUInt8))) != ((8 : GoUInt8))) || ((_h % ((31 : GoUInt))) != ((0 : GoUInt)))) {
            _z._err = errHeader;
            return _z._err;
        };
        var _haveDict:Bool = ((_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) & ((32 : GoUInt8))) != ((0 : GoUInt8));
        if (_haveDict) {
            {
                var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>)));
                _z._err = __tmp__._1;
            };
            if (_z._err != null) {
                if (_z._err == stdgo.io.Io.eof) {
                    _z._err = stdgo.io.Io.errUnexpectedEOF;
                };
                return _z._err;
            };
            var _checksum:GoUInt32 = ((((((_z._scratch != null ? _z._scratch[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))) | ((((_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_z._scratch != null ? _z._scratch[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_z._scratch != null ? _z._scratch[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
            if (_checksum != stdgo.hash.adler32.Adler32.checksum(_dict)) {
                _z._err = errDictionary;
                return _z._err;
            };
        };
        if (_z._decompressor == null) {
            if (_haveDict) {
                _z._decompressor = stdgo.compress.flate.Flate.newReaderDict(_z._r, _dict);
            } else {
                _z._decompressor = stdgo.compress.flate.Flate.newReader(_z._r);
            };
        } else {
            ((((_z._decompressor.__underlying__().value : Dynamic)) : stdgo.compress.flate.Flate.Resetter)).reset(_z._r, _dict);
        };
        _z._digest = stdgo.hash.adler32.Adler32.new_();
        return ((null : stdgo.Error));
    }
    /**
        // Calling Close does not close the wrapped io.Reader originally passed to NewReader.
        // In order for the ZLIB checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    public static function close( _z:T_reader):Error {
        if ((_z._err != null) && (_z._err != stdgo.io.Io.eof)) {
            return _z._err;
        };
        _z._err = _z._decompressor.close();
        return _z._err;
    }
    @:keep
    public static function read( _z:T_reader, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        if (_z._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _z._err };
        };
        var _n:GoInt = ((0 : GoInt));
        {
            var __tmp__ = _z._decompressor.read(_p);
            _n = __tmp__._0;
            _z._err = __tmp__._1;
        };
        _z._digest.write(((_p.__slice__(((0 : GoInt)), _n) : Slice<GoUInt8>)));
        if (_z._err != stdgo.io.Io.eof) {
            return { _0 : _n, _1 : _z._err };
        };
        {
            var __tmp__ = stdgo.io.Io.readFull(_z._r, ((_z._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>))), _0:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                if (_err == stdgo.io.Io.eof) {
                    _err = stdgo.io.Io.errUnexpectedEOF;
                };
                _z._err = _err;
                return { _0 : _n, _1 : _z._err };
            };
        };
        var _checksum:GoUInt32 = ((((((_z._scratch != null ? _z._scratch[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))) | ((((_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_z._scratch != null ? _z._scratch[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_z._scratch != null ? _z._scratch[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
        if (_checksum != _z._digest.sum32()) {
            _z._err = errChecksum;
            return { _0 : _n, _1 : _z._err };
        };
        return { _0 : _n, _1 : stdgo.io.Io.eof };
    }
}
class T_reader_wrapper {
    @:keep
    public var reset : (stdgo.io.Io.Reader, Slice<GoByte>) -> Error = null;
    /**
        // Calling Close does not close the wrapped io.Reader originally passed to NewReader.
        // In order for the ZLIB checksum to be verified, the reader must be
        // fully consumed until the io.EOF.
    **/
    @:keep
    public var close : () -> Error = null;
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_reader;
}
@:keep class Writer_static_extension {
    /**
        // Close closes the Writer, flushing any unwritten data to the underlying
        // io.Writer, but does not close the underlying io.Writer.
    **/
    @:keep
    public static function close( _z:Writer):Error {
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.close();
        if (_z._err != null) {
            return _z._err;
        };
        var _checksum:GoUInt32 = _z._digest.sum32();
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_z._scratch.__slice__(0) : Slice<GoUInt8>)), _checksum);
        {
            var __tmp__ = _z._w.write(((_z._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>)));
            _z._err = __tmp__._1;
        };
        return _z._err;
    }
    /**
        // Flush flushes the Writer to its underlying io.Writer.
    **/
    @:keep
    public static function flush( _z:Writer):Error {
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return _z._err;
        };
        _z._err = _z._compressor.flush();
        return _z._err;
    }
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed or
        // explicitly flushed.
    **/
    @:keep
    public static function write( _z:Writer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (!_z._wroteHeader) {
            _z._err = _z._writeHeader();
        };
        if (_z._err != null) {
            return { _0 : ((0 : GoInt)), _1 : _z._err };
        };
        if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
        };
        {
            var __tmp__ = _z._compressor.write(_p);
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            _z._err = _err;
            return { _0 : _n, _1 : _err };
        };
        _z._digest.write(_p);
        return { _0 : _n, _1 : _err };
    }
    /**
        // writeHeader writes the ZLIB header.
    **/
    @:keep
    public static function _writeHeader( _z:Writer):Error {
        var _err:Error = ((null : stdgo.Error));
        _z._wroteHeader = true;
        if (_z._scratch != null) _z._scratch[((0 : GoInt))] = ((120 : GoUInt8));
        if (_z._level == ((-2 : GoInt)) || _z._level == ((0 : GoInt)) || _z._level == ((1 : GoInt))) {
            if (_z._scratch != null) _z._scratch[((1 : GoInt))] = ((0 : GoUInt8));
        } else if (_z._level == ((2 : GoInt)) || _z._level == ((3 : GoInt)) || _z._level == ((4 : GoInt)) || _z._level == ((5 : GoInt))) {
            if (_z._scratch != null) _z._scratch[((1 : GoInt))] = ((64 : GoUInt8));
        } else if (_z._level == ((6 : GoInt)) || _z._level == ((-1 : GoInt))) {
            if (_z._scratch != null) _z._scratch[((1 : GoInt))] = ((128 : GoUInt8));
        } else if (_z._level == ((7 : GoInt)) || _z._level == ((8 : GoInt)) || _z._level == ((9 : GoInt))) {
            if (_z._scratch != null) _z._scratch[((1 : GoInt))] = ((192 : GoUInt8));
        } else {
            throw Go.toInterface(((("unreachable" : GoString))));
        };
        if (_z._dict != null) {
            if (_z._scratch != null) (_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) | (((32 : GoUInt8)));
        };
        if (_z._scratch != null) (_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) + ((((((31 : GoUInt16)) - ((((((_z._scratch != null ? _z._scratch[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt16)) << ((8 : GoUnTypedInt))) + (((_z._scratch != null ? _z._scratch[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt16))) % ((31 : GoUInt16)))) : GoUInt8)));
        {
            {
                var __tmp__ = _z._w.write(((_z._scratch.__slice__(((0 : GoInt)), ((2 : GoInt))) : Slice<GoUInt8>)));
                _err = __tmp__._1;
            };
            if (_err != null) {
                return _err;
            };
        };
        if (_z._dict != null) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32(((_z._scratch.__slice__(0) : Slice<GoUInt8>)), stdgo.hash.adler32.Adler32.checksum(_z._dict));
            {
                {
                    var __tmp__ = _z._w.write(((_z._scratch.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>)));
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
        };
        if (_z._compressor == null) {
            {
                var __tmp__ = stdgo.compress.flate.Flate.newWriterDict(_z._w, _z._level, _z._dict);
                _z._compressor = __tmp__._0;
                _err = {
                    final __self__ = new stdgo.Error_wrapper(__tmp__._1);
                    __self__;
                };
            };
            if (_err != null) {
                return _err;
            };
            _z._digest = stdgo.hash.adler32.Adler32.new_();
        };
        return ((null : stdgo.Error));
    }
    /**
        // Reset clears the state of the Writer z such that it is equivalent to its
        // initial state from NewWriterLevel or NewWriterLevelDict, but instead writing
        // to w.
    **/
    @:keep
    public static function reset( _z:Writer, _w:stdgo.io.Io.Writer):Void {
        _z._w = _w;
        if (_z._compressor != null) {
            _z._compressor.reset(_w);
        };
        if (_z._digest != null) {
            _z._digest.reset();
        };
        _z._err = ((null : stdgo.Error));
        _z._scratch = ((new GoArray<GoUInt8>(...([].concat([for (i in 0 ... 4) ((0 : GoUInt8))]))) : GoArray<GoByte>));
        _z._wroteHeader = false;
    }
}
class Writer_wrapper {
    /**
        // Close closes the Writer, flushing any unwritten data to the underlying
        // io.Writer, but does not close the underlying io.Writer.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Flush flushes the Writer to its underlying io.Writer.
    **/
    @:keep
    public var flush : () -> Error = null;
    /**
        // Write writes a compressed form of p to the underlying io.Writer. The
        // compressed bytes are not necessarily flushed until the Writer is closed or
        // explicitly flushed.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // writeHeader writes the ZLIB header.
    **/
    @:keep
    public var _writeHeader : () -> Error = null;
    /**
        // Reset clears the state of the Writer z such that it is equivalent to its
        // initial state from NewWriterLevel or NewWriterLevelDict, but instead writing
        // to w.
    **/
    @:keep
    public var reset : stdgo.io.Io.Writer -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
