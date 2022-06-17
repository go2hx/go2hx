package stdgo.compress.lzw;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _errClosed : stdgo.Error = stdgo.errors.Errors.new_(((("lzw: reader/writer is closed" : GoString))));
var _errOutOfCodes : stdgo.Error = stdgo.errors.Errors.new_(((("lzw: out of codes" : GoString))));
typedef T_writer = StructType & {
    > stdgo.io.Io.ByteWriter,
    public function flush():Error;
};
@:structInit @:using(stdgo.compress.lzw.Lzw.Reader_static_extension) class Reader {
    public var _r : stdgo.io.Io.ByteReader = ((null : stdgo.io.Io.ByteReader));
    public var _bits : GoUInt32 = ((0 : GoUInt32));
    public var _nBits : GoUInt = ((0 : GoUInt));
    public var _width : GoUInt = ((0 : GoUInt));
    public var _read : Ref<Reader> -> { var _0 : GoUInt16; var _1 : stdgo.Error; } = null;
    public var _litWidth : GoInt = ((0 : GoInt));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _clear : GoUInt16 = ((0 : GoUInt16));
    public var _eof : GoUInt16 = ((0 : GoUInt16));
    public var _hi : GoUInt16 = ((0 : GoUInt16));
    public var _overflow : GoUInt16 = ((0 : GoUInt16));
    public var _last : GoUInt16 = ((0 : GoUInt16));
    public var _suffix : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 4096) ((0 : GoUInt8))]);
    public var _prefix : GoArray<GoUInt16> = new GoArray<GoUInt16>(...[for (i in 0 ... 4096) ((0 : GoUInt16))]);
    public var _output : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8192) ((0 : GoUInt8))]);
    public var _o : GoInt = ((0 : GoInt));
    public var _toRead : Slice<GoUInt8> = ((null : Slice<GoUInt8>));
    public function new(?_r:stdgo.io.Io.ByteReader, ?_bits:GoUInt32, ?_nBits:GoUInt, ?_width:GoUInt, ?_read:Ref<Reader> -> { var _0 : GoUInt16; var _1 : stdgo.Error; }, ?_litWidth:GoInt, ?_err:stdgo.Error, ?_clear:GoUInt16, ?_eof:GoUInt16, ?_hi:GoUInt16, ?_overflow:GoUInt16, ?_last:GoUInt16, ?_suffix:GoArray<GoUInt8>, ?_prefix:GoArray<GoUInt16>, ?_output:GoArray<GoUInt8>, ?_o:GoInt, ?_toRead:Slice<GoUInt8>) {
        if (_r != null) this._r = _r;
        if (_bits != null) this._bits = _bits;
        if (_nBits != null) this._nBits = _nBits;
        if (_width != null) this._width = _width;
        if (_read != null) this._read = _read;
        if (_litWidth != null) this._litWidth = _litWidth;
        if (_err != null) this._err = _err;
        if (_clear != null) this._clear = _clear;
        if (_eof != null) this._eof = _eof;
        if (_hi != null) this._hi = _hi;
        if (_overflow != null) this._overflow = _overflow;
        if (_last != null) this._last = _last;
        if (_suffix != null) this._suffix = _suffix;
        if (_prefix != null) this._prefix = _prefix;
        if (_output != null) this._output = _output;
        if (_o != null) this._o = _o;
        if (_toRead != null) this._toRead = _toRead;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Reader(
_r,
_bits,
_nBits,
_width,
_read,
_litWidth,
_err,
_clear,
_eof,
_hi,
_overflow,
_last,
_suffix,
_prefix,
_output,
_o,
_toRead);
    }
}
@:structInit @:using(stdgo.compress.lzw.Lzw.Writer_static_extension) class Writer {
    public var _w : T_writer = ((null : T_writer));
    public var _order : Order = new Order();
    public var _write : (Ref<Writer>, GoUInt32) -> stdgo.Error = null;
    public var _bits : GoUInt32 = ((0 : GoUInt32));
    public var _nBits : GoUInt = ((0 : GoUInt));
    public var _width : GoUInt = ((0 : GoUInt));
    public var _litWidth : GoUInt = ((0 : GoUInt));
    public var _hi : GoUInt32 = ((0 : GoUInt32));
    public var _overflow : GoUInt32 = ((0 : GoUInt32));
    public var _savedCode : GoUInt32 = ((0 : GoUInt32));
    public var _err : stdgo.Error = ((null : stdgo.Error));
    public var _table : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 16384) ((0 : GoUInt32))]);
    public function new(?_w:T_writer, ?_order:Order, ?_write:(Ref<Writer>, GoUInt32) -> stdgo.Error, ?_bits:GoUInt32, ?_nBits:GoUInt, ?_width:GoUInt, ?_litWidth:GoUInt, ?_hi:GoUInt32, ?_overflow:GoUInt32, ?_savedCode:GoUInt32, ?_err:stdgo.Error, ?_table:GoArray<GoUInt32>) {
        if (_w != null) this._w = _w;
        if (_order != null) this._order = _order;
        if (_write != null) this._write = _write;
        if (_bits != null) this._bits = _bits;
        if (_nBits != null) this._nBits = _nBits;
        if (_width != null) this._width = _width;
        if (_litWidth != null) this._litWidth = _litWidth;
        if (_hi != null) this._hi = _hi;
        if (_overflow != null) this._overflow = _overflow;
        if (_savedCode != null) this._savedCode = _savedCode;
        if (_err != null) this._err = _err;
        if (_table != null) this._table = _table;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Writer(
_w,
_order,
_write,
_bits,
_nBits,
_width,
_litWidth,
_hi,
_overflow,
_savedCode,
_err,
_table);
    }
}
@:named typedef Order = GoInt;
/**
    // NewReader creates a new io.ReadCloser.
    // Reads from the returned io.ReadCloser read and decompress data from r.
    // If r does not also implement io.ByteReader,
    // the decompressor may read more data than necessary from r.
    // It is the caller's responsibility to call Close on the ReadCloser when
    // finished reading.
    // The number of bits to use for literal codes, litWidth, must be in the
    // range [2,8] and is typically 8. It must equal the litWidth
    // used during compression.
    //
    // It is guaranteed that the underlying type of the returned io.ReadCloser
    // is a *Reader.
**/
function newReader(_r:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):stdgo.io.Io.ReadCloser {
        return _newReader(_r, _order, _litWidth);
    }
function _newReader(_src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Reader {
        var _r = new Reader();
        _r._init(_src, _order, _litWidth);
        return _r;
    }
/**
    // NewWriter creates a new io.WriteCloser.
    // Writes to the returned io.WriteCloser are compressed and written to w.
    // It is the caller's responsibility to call Close on the WriteCloser when
    // finished writing.
    // The number of bits to use for literal codes, litWidth, must be in the
    // range [2,8] and is typically 8. Input bytes must be less than 1<<litWidth.
    //
    // It is guaranteed that the underlying type of the returned io.WriteCloser
    // is a *Writer.
**/
function newWriter(_w:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):stdgo.io.Io.WriteCloser {
        return _newWriter(_w, _order, _litWidth);
    }
function _newWriter(_dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Writer {
        var _w = new Writer();
        _w._init(_dst, _order, _litWidth);
        return _w;
    }
@:keep class Reader_static_extension {
    @:keep
    public static function _init( _r:Reader, _src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void {
        if (_order == ((0 : GoInt))) {
            _r._read = (Reader_static_extension)._readLSB;
        } else if (_order == ((1 : GoInt))) {
            _r._read = (Reader_static_extension)._readMSB;
        } else {
            _r._err = stdgo.errors.Errors.new_(((("lzw: unknown order" : GoString))));
            return;
        };
        if ((_litWidth < ((2 : GoInt))) || (((8 : GoInt)) < _litWidth)) {
            _r._err = stdgo.fmt.Fmt.errorf(((("lzw: litWidth %d out of range" : GoString))), Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { value : ((((_src.__underlying__().value : Dynamic)) : stdgo.io.Io.ByteReader)), ok : true };
        } catch(_) {
            { value : ((null : stdgo.io.Io.ByteReader)), ok : false };
        }, _br = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok && (_src != null)) {
            _br = stdgo.bufio.Bufio.newReader(_src);
        };
        _r._r = _br;
        _r._litWidth = _litWidth;
        _r._width = ((1 : GoUInt)) + ((_litWidth : GoUInt));
        _r._clear = ((((1 : GoUInt16)) : GoUInt16)) << ((_litWidth : GoUInt));
        {
            final __tmp__0 = _r._clear + ((1 : GoUInt16));
            final __tmp__1 = _r._clear + ((1 : GoUInt16));
            _r._eof = __tmp__0;
            _r._hi = __tmp__1;
        };
        _r._overflow = ((((1 : GoUInt16)) : GoUInt16)) << _r._width;
        _r._last = ((65535 : GoUInt16));
    }
    /**
        // Reset clears the Reader's state and allows it to be reused again
        // as a new Reader.
    **/
    @:keep
    public static function reset( _r:Reader, _src:stdgo.io.Io.Reader, _order:Order, _litWidth:GoInt):Void {
        {
            var __tmp__ = ((new Reader() : Reader));
            _r._r = __tmp__._r;
            _r._bits = __tmp__._bits;
            _r._nBits = __tmp__._nBits;
            _r._width = __tmp__._width;
            _r._read = __tmp__._read;
            _r._litWidth = __tmp__._litWidth;
            _r._err = __tmp__._err;
            _r._clear = __tmp__._clear;
            _r._eof = __tmp__._eof;
            _r._hi = __tmp__._hi;
            _r._overflow = __tmp__._overflow;
            _r._last = __tmp__._last;
            _r._suffix = __tmp__._suffix;
            _r._prefix = __tmp__._prefix;
            _r._output = __tmp__._output;
            _r._o = __tmp__._o;
            _r._toRead = __tmp__._toRead;
        };
        _r._init(_src, _order, _litWidth);
    }
    /**
        // Close closes the Reader and returns an error for any future read operation.
        // It does not close the underlying io.Reader.
    **/
    @:keep
    public static function close( _r:Reader):Error {
        _r._err = _errClosed;
        return ((null : stdgo.Error));
    }
    /**
        // decode decompresses bytes from r and leaves them in d.toRead.
        // read specifies how to decode bytes into codes.
        // litWidth is the width in bits of literal codes.
    **/
    @:keep
    public static function _decode( _r:Reader):Void {
        stdgo.internal.Macro.controlFlow({
            @:label("loop") while (true) {
                var __tmp__ = _r._read(_r), _code:GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (_err == stdgo.io.Io.eof) {
                        _err = stdgo.io.Io.errUnexpectedEOF;
                    };
                    _r._err = _err;
                    break;
                };
                {
                    var __switchIndex__ = -1;
                    while (true) {
                        if (_code < _r._clear) {
                            if (_r._output != null) _r._output[_r._o] = ((_code : GoUInt8));
                            _r._o++;
                            if (_r._last != ((65535 : GoUInt16))) {
                                if (_r._suffix != null) _r._suffix[_r._hi] = ((_code : GoUInt8));
                                if (_r._prefix != null) _r._prefix[_r._hi] = _r._last;
                            };
                            break;
                        } else if (_code == _r._clear) {
                            _r._width = ((1 : GoUInt)) + ((_r._litWidth : GoUInt));
                            _r._hi = _r._eof;
                            _r._overflow = ((1 : GoUInt16)) << _r._width;
                            _r._last = ((65535 : GoUInt16));
                            continue;
                            break;
                        } else if (_code == _r._eof) {
                            _r._err = stdgo.io.Io.eof;
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                            break;
                        } else if (_code <= _r._hi) {
                            var _c:GoUInt16 = _code, _i:GoInt = ((8191 : GoInt));
                            if ((_code == _r._hi) && (_r._last != ((65535 : GoUInt16)))) {
                                _c = _r._last;
                                while (_c >= _r._clear) {
                                    _c = (_r._prefix != null ? _r._prefix[_c] : ((0 : GoUInt16)));
                                };
                                if (_r._output != null) _r._output[_i] = ((_c : GoUInt8));
                                _i--;
                                _c = _r._last;
                            };
                            while (_c >= _r._clear) {
                                if (_r._output != null) _r._output[_i] = (_r._suffix != null ? _r._suffix[_c] : ((0 : GoUInt8)));
                                _i--;
                                _c = (_r._prefix != null ? _r._prefix[_c] : ((0 : GoUInt16)));
                            };
                            if (_r._output != null) _r._output[_i] = ((_c : GoUInt8));
                            _r._o = _r._o + (Go.copySlice(((_r._output.__slice__(_r._o) : Slice<GoUInt8>)), ((_r._output.__slice__(_i) : Slice<GoUInt8>))));
                            if (_r._last != ((65535 : GoUInt16))) {
                                if (_r._suffix != null) _r._suffix[_r._hi] = ((_c : GoUInt8));
                                if (_r._prefix != null) _r._prefix[_r._hi] = _r._last;
                            };
                            break;
                        } else {
                            _r._err = stdgo.errors.Errors.new_(((("lzw: invalid code" : GoString))));
                            @:break {
                                ____exit____ = true;
                                ____break____ = true;
                                break;
                            };
                        };
                        break;
                    };
                };
                {
                    final __tmp__0 = _code;
                    final __tmp__1 = _r._hi + ((1 : GoUInt16));
                    _r._last = __tmp__0;
                    _r._hi = __tmp__1;
                };
                if (_r._hi >= _r._overflow) {
                    if (_r._hi > _r._overflow) {
                        throw Go.toInterface(((("unreachable" : GoString))));
                    };
                    if (_r._width == ((12 : GoUInt))) {
                        _r._last = ((65535 : GoUInt16));
                        _r._hi--;
                    } else {
                        _r._width++;
                        _r._overflow = ((1 : GoUInt16)) << _r._width;
                    };
                };
                if (_r._o >= ((4096 : GoInt))) {
                    break;
                };
            };
            _r._toRead = ((_r._output.__slice__(0, _r._o) : Slice<GoUInt8>));
            _r._o = ((0 : GoInt));
        });
    }
    /**
        // Read implements io.Reader, reading uncompressed bytes from its underlying Reader.
    **/
    @:keep
    public static function read( _r:Reader, _b:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        while (true) {
            if ((_r._toRead != null ? _r._toRead.length : ((0 : GoInt))) > ((0 : GoInt))) {
                var _n:GoInt = Go.copySlice(_b, _r._toRead);
                _r._toRead = ((_r._toRead.__slice__(_n) : Slice<GoUInt8>));
                return { _0 : _n, _1 : ((null : stdgo.Error)) };
            };
            if (_r._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _r._err };
            };
            _r._decode();
        };
    }
    /**
        // readMSB returns the next code for "Most Significant Bits first" data.
    **/
    @:keep
    public static function _readMSB( _r:Reader):{ var _0 : GoUInt16; var _1 : Error; } {
        while (_r._nBits < _r._width) {
            var __tmp__ = _r._r.readByte(), _x:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoUInt16)), _1 : _err };
            };
            _r._bits = _r._bits | (((_x : GoUInt32)) << (((24 : GoUInt)) - _r._nBits));
            _r._nBits = _r._nBits + (((8 : GoUInt)));
        };
        var _code:GoUInt16 = (((_r._bits >> (((32 : GoUInt)) - _r._width)) : GoUInt16));
        _r._bits = _r._bits << (_r._width);
        _r._nBits = _r._nBits - (_r._width);
        return { _0 : _code, _1 : ((null : stdgo.Error)) };
    }
    /**
        // readLSB returns the next code for "Least Significant Bits first" data.
    **/
    @:keep
    public static function _readLSB( _r:Reader):{ var _0 : GoUInt16; var _1 : Error; } {
        while (_r._nBits < _r._width) {
            var __tmp__ = _r._r.readByte(), _x:GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : ((0 : GoUInt16)), _1 : _err };
            };
            _r._bits = _r._bits | (((_x : GoUInt32)) << _r._nBits);
            _r._nBits = _r._nBits + (((8 : GoUInt)));
        };
        var _code:GoUInt16 = (((_r._bits & ((((1 : GoUInt32)) << _r._width) - ((1 : GoUInt32)))) : GoUInt16));
        _r._bits = _r._bits >> (_r._width);
        _r._nBits = _r._nBits - (_r._width);
        return { _0 : _code, _1 : ((null : stdgo.Error)) };
    }
}
class Reader_wrapper {
    @:keep
    public var _init : (stdgo.io.Io.Reader, Order, GoInt) -> Void = null;
    /**
        // Reset clears the Reader's state and allows it to be reused again
        // as a new Reader.
    **/
    @:keep
    public var reset : (stdgo.io.Io.Reader, Order, GoInt) -> Void = null;
    /**
        // Close closes the Reader and returns an error for any future read operation.
        // It does not close the underlying io.Reader.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // decode decompresses bytes from r and leaves them in d.toRead.
        // read specifies how to decode bytes into codes.
        // litWidth is the width in bits of literal codes.
    **/
    @:keep
    public var _decode : () -> Void = null;
    /**
        // Read implements io.Reader, reading uncompressed bytes from its underlying Reader.
    **/
    @:keep
    public var read : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // readMSB returns the next code for "Most Significant Bits first" data.
    **/
    @:keep
    public var _readMSB : () -> { var _0 : GoUInt16; var _1 : Error; } = null;
    /**
        // readLSB returns the next code for "Least Significant Bits first" data.
    **/
    @:keep
    public var _readLSB : () -> { var _0 : GoUInt16; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Reader;
}
@:keep class Writer_static_extension {
    @:keep
    public static function _init( _w:Writer, _dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void {
        if (_order == ((0 : GoInt))) {
            _w._write = (Writer_static_extension)._writeLSB;
        } else if (_order == ((1 : GoInt))) {
            _w._write = (Writer_static_extension)._writeMSB;
        } else {
            _w._err = stdgo.errors.Errors.new_(((("lzw: unknown order" : GoString))));
            return;
        };
        if ((_litWidth < ((2 : GoInt))) || (((8 : GoInt)) < _litWidth)) {
            _w._err = stdgo.fmt.Fmt.errorf(((("lzw: litWidth %d out of range" : GoString))), Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { value : ((((_dst.__underlying__().value : Dynamic)) : T_writer)), ok : true };
        } catch(_) {
            { value : ((null : T_writer)), ok : false };
        }, _bw = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok && (_dst != null)) {
            _bw = stdgo.bufio.Bufio.newWriter(_dst);
        };
        _w._w = _bw;
        var _lw:GoUInt = ((_litWidth : GoUInt));
        _w._order = _order;
        _w._width = ((1 : GoUInt)) + _lw;
        _w._litWidth = _lw;
        _w._hi = (((1 : GoUInt32)) << _lw) + ((1 : GoUInt32));
        _w._overflow = ((1 : GoUInt32)) << (_lw + ((1 : GoUInt)));
        _w._savedCode = (("4294967295" : GoUInt32));
    }
    /**
        // Reset clears the Writer's state and allows it to be reused again
        // as a new Writer.
    **/
    @:keep
    public static function reset( _w:Writer, _dst:stdgo.io.Io.Writer, _order:Order, _litWidth:GoInt):Void {
        {
            var __tmp__ = ((new Writer() : Writer));
            _w._w = __tmp__._w;
            _w._order = __tmp__._order;
            _w._write = __tmp__._write;
            _w._bits = __tmp__._bits;
            _w._nBits = __tmp__._nBits;
            _w._width = __tmp__._width;
            _w._litWidth = __tmp__._litWidth;
            _w._hi = __tmp__._hi;
            _w._overflow = __tmp__._overflow;
            _w._savedCode = __tmp__._savedCode;
            _w._err = __tmp__._err;
            _w._table = __tmp__._table;
        };
        _w._init(_dst, _order, _litWidth);
    }
    /**
        // Close closes the Writer, flushing any pending output. It does not close
        // w's underlying writer.
    **/
    @:keep
    public static function close( _w:Writer):Error {
        if (_w._err != null) {
            if (_w._err == _errClosed) {
                return ((null : stdgo.Error));
            };
            return _w._err;
        };
        _w._err = _errClosed;
        if (_w._savedCode != (("4294967295" : GoUInt32))) {
            {
                var _err:stdgo.Error = _w._write(_w, _w._savedCode);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err:stdgo.Error = _w._incHi();
                if ((_err != null) && (_err != _errOutOfCodes)) {
                    return _err;
                };
            };
        } else {
            var _clear:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32)) << _w._litWidth;
            {
                var _err:stdgo.Error = _w._write(_w, _clear);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _eof:GoUInt32 = (((((1 : GoUInt32)) : GoUInt32)) << _w._litWidth) + ((1 : GoUInt32));
        {
            var _err:stdgo.Error = _w._write(_w, _eof);
            if (_err != null) {
                return _err;
            };
        };
        if (_w._nBits > ((0 : GoUInt))) {
            if (_w._order == ((1 : GoInt))) {
                _w._bits = _w._bits >> (((24 : GoUnTypedInt)));
            };
            {
                var _err:stdgo.Error = _w._w.writeByte(((_w._bits : GoUInt8)));
                if (_err != null) {
                    return _err;
                };
            };
        };
        return _w._w.flush();
    }
    /**
        // Write writes a compressed representation of p to w's underlying writer.
    **/
    @:keep
    public static function write( _w:Writer, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        return stdgo.internal.Macro.controlFlow({
            var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
            if (_w._err != null) {
                return { _0 : ((0 : GoInt)), _1 : _w._err };
            };
            if ((_p != null ? _p.length : ((0 : GoInt))) == ((0 : GoInt))) {
                return { _0 : ((0 : GoInt)), _1 : ((null : stdgo.Error)) };
            };
            {
                var _maxLit:GoUInt8 = ((((((1 : GoUInt8)) << _w._litWidth) - ((1 : GoUInt8))) : GoUInt8));
                if (_maxLit != ((255 : GoUInt8))) {
                    for (_0 => _x in _p) {
                        if (_x > _maxLit) {
                            _w._err = stdgo.errors.Errors.new_(((("lzw: input byte too large for the litWidth" : GoString))));
                            return { _0 : ((0 : GoInt)), _1 : _w._err };
                        };
                    };
                };
            };
            _n = (_p != null ? _p.length : ((0 : GoInt)));
            var _code:GoUInt32 = _w._savedCode;
            if (_code == (("4294967295" : GoUInt32))) {
                var _clear:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32)) << _w._litWidth;
                {
                    var _err:stdgo.Error = _w._write(_w, _clear);
                    if (_err != null) {
                        return { _0 : ((0 : GoInt)), _1 : _err };
                    };
                };
                {
                    final __tmp__0 = (((_p != null ? _p[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
                    final __tmp__1 = ((_p.__slice__(((1 : GoInt))) : Slice<GoUInt8>));
                    _code = __tmp__0;
                    _p = __tmp__1;
                };
            };
            @:label("loop") for (_1 => _x in _p) {
                var _literal:GoUInt32 = ((_x : GoUInt32));
                var _key:GoUInt32 = (_code << ((8 : GoUnTypedInt))) | _literal;
                var _hash:GoUInt32 = ((_key >> ((12 : GoUnTypedInt))) ^ _key) & ((16383 : GoUInt32));
                {
                    var _h:GoUInt32 = _hash, _t:GoUInt32 = (_w._table != null ? _w._table[_hash] : ((0 : GoUInt32)));
                    while (_t != ((0 : GoUInt32))) {
                        if (_key == (_t >> ((12 : GoUnTypedInt)))) {
                            _code = _t & ((4095 : GoUInt32));
                            continue;
                        };
                        _h = (_h + ((1 : GoUInt32))) & ((16383 : GoUInt32));
                        _t = (_w._table != null ? _w._table[_h] : ((0 : GoUInt32)));
                    };
                };
                {
                    _w._err = _w._write(_w, _code);
                    if (_w._err != null) {
                        return { _0 : ((0 : GoInt)), _1 : _w._err };
                    };
                };
                _code = _literal;
                {
                    var _err1:stdgo.Error = _w._incHi();
                    if (_err1 != null) {
                        if (_err1 == _errOutOfCodes) {
                            continue;
                        };
                        _w._err = _err1;
                        return { _0 : ((0 : GoInt)), _1 : _w._err };
                    };
                };
                while (true) {
                    if ((_w._table != null ? _w._table[_hash] : ((0 : GoUInt32))) == ((0 : GoUInt32))) {
                        if (_w._table != null) _w._table[_hash] = (_key << ((12 : GoUnTypedInt))) | _w._hi;
                        break;
                    };
                    _hash = (_hash + ((1 : GoUInt32))) & ((16383 : GoUInt32));
                };
            };
            _w._savedCode = _code;
            return { _0 : _n, _1 : ((null : stdgo.Error)) };
        });
    }
    /**
        // incHi increments e.hi and checks for both overflow and running out of
        // unused codes. In the latter case, incHi sends a clear code, resets the
        // writer state and returns errOutOfCodes.
    **/
    @:keep
    public static function _incHi( _w:Writer):Error {
        _w._hi++;
        if (_w._hi == _w._overflow) {
            _w._width++;
            _w._overflow = _w._overflow << (((1 : GoUnTypedInt)));
        };
        if (_w._hi == ((4095 : GoUInt32))) {
            var _clear:GoUInt32 = ((((1 : GoUInt32)) : GoUInt32)) << _w._litWidth;
            {
                var _err:stdgo.Error = _w._write(_w, _clear);
                if (_err != null) {
                    return _err;
                };
            };
            _w._width = _w._litWidth + ((1 : GoUInt));
            _w._hi = _clear + ((1 : GoUInt32));
            _w._overflow = _clear << ((1 : GoUnTypedInt));
            for (_i => _ in _w._table) {
                if (_w._table != null) _w._table[_i] = ((0 : GoUInt32));
            };
            return _errOutOfCodes;
        };
        return ((null : stdgo.Error));
    }
    /**
        // writeMSB writes the code c for "Most Significant Bits first" data.
    **/
    @:keep
    public static function _writeMSB( _w:Writer, _c:GoUInt32):Error {
        _w._bits = _w._bits | (_c << ((((32 : GoUInt)) - _w._width) - _w._nBits));
        _w._nBits = _w._nBits + (_w._width);
        while (_w._nBits >= ((8 : GoUInt))) {
            {
                var _err:stdgo.Error = _w._w.writeByte((((_w._bits >> ((24 : GoUnTypedInt))) : GoUInt8)));
                if (_err != null) {
                    return _err;
                };
            };
            _w._bits = _w._bits << (((8 : GoUnTypedInt)));
            _w._nBits = _w._nBits - (((8 : GoUInt)));
        };
        return ((null : stdgo.Error));
    }
    /**
        // writeLSB writes the code c for "Least Significant Bits first" data.
    **/
    @:keep
    public static function _writeLSB( _w:Writer, _c:GoUInt32):Error {
        _w._bits = _w._bits | (_c << _w._nBits);
        _w._nBits = _w._nBits + (_w._width);
        while (_w._nBits >= ((8 : GoUInt))) {
            {
                var _err:stdgo.Error = _w._w.writeByte(((_w._bits : GoUInt8)));
                if (_err != null) {
                    return _err;
                };
            };
            _w._bits = _w._bits >> (((8 : GoUnTypedInt)));
            _w._nBits = _w._nBits - (((8 : GoUInt)));
        };
        return ((null : stdgo.Error));
    }
}
class Writer_wrapper {
    @:keep
    public var _init : (stdgo.io.Io.Writer, Order, GoInt) -> Void = null;
    /**
        // Reset clears the Writer's state and allows it to be reused again
        // as a new Writer.
    **/
    @:keep
    public var reset : (stdgo.io.Io.Writer, Order, GoInt) -> Void = null;
    /**
        // Close closes the Writer, flushing any pending output. It does not close
        // w's underlying writer.
    **/
    @:keep
    public var close : () -> Error = null;
    /**
        // Write writes a compressed representation of p to w's underlying writer.
    **/
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    /**
        // incHi increments e.hi and checks for both overflow and running out of
        // unused codes. In the latter case, incHi sends a clear code, resets the
        // writer state and returns errOutOfCodes.
    **/
    @:keep
    public var _incHi : () -> Error = null;
    /**
        // writeMSB writes the code c for "Most Significant Bits first" data.
    **/
    @:keep
    public var _writeMSB : GoUInt32 -> Error = null;
    /**
        // writeLSB writes the code c for "Least Significant Bits first" data.
    **/
    @:keep
    public var _writeLSB : GoUInt32 -> Error = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Writer;
}
