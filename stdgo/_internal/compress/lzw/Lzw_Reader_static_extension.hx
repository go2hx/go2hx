package stdgo._internal.compress.lzw;
@:keep @:allow(stdgo._internal.compress.lzw.Lzw.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function _init( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>, _src:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        {
            final __value__ = _order;
            if (__value__ == ((0 : stdgo._internal.compress.lzw.Lzw_Order.Order))) {
                _r._read = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readLSB;
            } else if (__value__ == ((1 : stdgo._internal.compress.lzw.Lzw_Order.Order))) {
                _r._read = stdgo._internal.compress.lzw.Lzw_Reader_static_extension.Reader_static_extension._readMSB;
            } else {
                _r._err = stdgo._internal.errors.Errors_new_.new_(("lzw: unknown order" : stdgo.GoString));
                return;
            };
        };
        if (((_litWidth < (2 : stdgo.GoInt) : Bool) || ((8 : stdgo.GoInt) < _litWidth : Bool) : Bool)) {
            _r._err = stdgo._internal.fmt.Fmt_errorf.errorf(("lzw: litWidth %d out of range" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.io.Io_ByteReader.ByteReader)) : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : false };
        }, _br = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_src != null) : Bool)) {
            _br = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_src));
        };
        _r._r = _br;
        _r._litWidth = _litWidth;
        _r._width = ((1u32 : stdgo.GoUInt) + (_litWidth : stdgo.GoUInt) : stdgo.GoUInt);
        _r._clear = ((1 : stdgo.GoUInt16) << (_litWidth : stdgo.GoUInt) : stdgo.GoUInt16);
        {
            final __tmp__0 = (_r._clear + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            final __tmp__1 = (_r._clear + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            _r._eof = __tmp__0;
            _r._hi = __tmp__1;
        };
        _r._overflow = ((1 : stdgo.GoUInt16) << _r._width : stdgo.GoUInt16);
        _r._last = (65535 : stdgo.GoUInt16);
    }
    @:keep
    static public function reset( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>, _src:stdgo._internal.io.Io_Reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.compress.lzw.Lzw_Reader.Reader() : stdgo._internal.compress.lzw.Lzw_Reader.Reader);
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._r = __tmp__._r;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._bits = __tmp__._bits;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._nBits = __tmp__._nBits;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._width = __tmp__._width;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._read = __tmp__._read;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._litWidth = __tmp__._litWidth;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._err = __tmp__._err;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._clear = __tmp__._clear;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._eof = __tmp__._eof;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._hi = __tmp__._hi;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._overflow = __tmp__._overflow;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._last = __tmp__._last;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._suffix = __tmp__._suffix;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._prefix = __tmp__._prefix;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._output = __tmp__._output;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._o = __tmp__._o;
            (_r : stdgo._internal.compress.lzw.Lzw_Reader.Reader)._toRead = __tmp__._toRead;
        };
        _r._init(_src, _order, _litWidth);
    }
    @:keep
    static public function close( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        _r._err = stdgo._internal.compress.lzw.Lzw__errClosed._errClosed;
        return (null : stdgo.Error);
    }
    @:keep
    static public function _decode( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        stdgo._internal.internal.Macro.controlFlow({
            @:label("loop") while (true) {
                var __tmp__ = _r._read(_r), _code:stdgo.GoUInt16 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _err = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    };
                    _r._err = _err;
                    break;
                };
                {
                    var __continue__ = false;
                    var __switchIndex__ = -1;
                    var __run__ = true;
                    while (__run__) {
                        __run__ = false;
                        if ((_code < _r._clear : Bool)) {
                            _r._output[(_r._o : stdgo.GoInt)] = (_code : stdgo.GoUInt8);
                            _r._o++;
                            if (_r._last != ((65535 : stdgo.GoUInt16))) {
                                _r._suffix[(_r._hi : stdgo.GoInt)] = (_code : stdgo.GoUInt8);
                                _r._prefix[(_r._hi : stdgo.GoInt)] = _r._last;
                            };
                            break;
                        } else if (_code == (_r._clear)) {
                            _r._width = ((1u32 : stdgo.GoUInt) + (_r._litWidth : stdgo.GoUInt) : stdgo.GoUInt);
                            _r._hi = _r._eof;
                            _r._overflow = ((1 : stdgo.GoUInt16) << _r._width : stdgo.GoUInt16);
                            _r._last = (65535 : stdgo.GoUInt16);
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                        } else if (_code == (_r._eof)) {
                            _r._err = stdgo._internal.io.Io_eof.eof;
                            @:jump("loop") break;
                            break;
                        } else if ((_code <= _r._hi : Bool)) {
                            var __0 = (_code : stdgo.GoUInt16), __1 = (8191 : stdgo.GoInt);
var _i = __1, _c = __0;
                            if (((_code == _r._hi) && (_r._last != (65535 : stdgo.GoUInt16)) : Bool)) {
                                _c = _r._last;
                                while ((_c >= _r._clear : Bool)) {
                                    _c = _r._prefix[(_c : stdgo.GoInt)];
                                };
                                _r._output[(_i : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
                                _i--;
                                _c = _r._last;
                            };
                            while ((_c >= _r._clear : Bool)) {
                                _r._output[(_i : stdgo.GoInt)] = _r._suffix[(_c : stdgo.GoInt)];
                                _i--;
                                _c = _r._prefix[(_c : stdgo.GoInt)];
                            };
                            _r._output[(_i : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
                            _r._o = (_r._o + (stdgo.Go.copySlice((_r._output.__slice__(_r._o) : stdgo.Slice<stdgo.GoUInt8>), (_r._output.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                            if (_r._last != ((65535 : stdgo.GoUInt16))) {
                                _r._suffix[(_r._hi : stdgo.GoInt)] = (_c : stdgo.GoUInt8);
                                _r._prefix[(_r._hi : stdgo.GoInt)] = _r._last;
                            };
                            break;
                        } else {
                            _r._err = stdgo._internal.errors.Errors_new_.new_(("lzw: invalid code" : stdgo.GoString));
                            @:jump("loop") break;
                        };
                        break;
                    };
                    if (__continue__) continue;
                };
                {
                    final __tmp__0 = _code;
                    final __tmp__1 = (_r._hi + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
                    _r._last = __tmp__0;
                    _r._hi = __tmp__1;
                };
                if ((_r._hi >= _r._overflow : Bool)) {
                    if ((_r._hi > _r._overflow : Bool)) {
                        throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    };
                    if (_r._width == ((12u32 : stdgo.GoUInt))) {
                        _r._last = (65535 : stdgo.GoUInt16);
                        _r._hi--;
                    } else {
                        _r._width++;
                        _r._overflow = ((1 : stdgo.GoUInt16) << _r._width : stdgo.GoUInt16);
                    };
                };
                if ((_r._o >= (4096 : stdgo.GoInt) : Bool)) {
                    break;
                };
            };
            _r._toRead = (_r._output.__slice__(0, _r._o) : stdgo.Slice<stdgo.GoUInt8>);
            _r._o = (0 : stdgo.GoInt);
        });
    }
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        while (true) {
            if (((_r._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (stdgo.Go.copySlice(_b, _r._toRead) : stdgo.GoInt);
                _r._toRead = (_r._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if (_r._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _r._err };
            };
            _r._decode();
        };
    }
    @:keep
    static public function _readMSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        while ((_r._nBits < _r._width : Bool)) {
            var __tmp__ = _r._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            _r._bits = (_r._bits | (((_x : stdgo.GoUInt32) << (((24u32 : stdgo.GoUInt) - _r._nBits : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _r._nBits = (_r._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = ((_r._bits >> (((32u32 : stdgo.GoUInt) - _r._width : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        _r._bits = (_r._bits << (_r._width) : stdgo.GoUInt32);
        _r._nBits = (_r._nBits - (_r._width) : stdgo.GoUInt);
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function _readLSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Reader.Reader> = _r;
        while ((_r._nBits < _r._width : Bool)) {
            var __tmp__ = _r._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            _r._bits = (_r._bits | (((_x : stdgo.GoUInt32) << _r._nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
            _r._nBits = (_r._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = ((_r._bits & ((((1u32 : stdgo.GoUInt32) << _r._width : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        _r._bits = (_r._bits >> (_r._width) : stdgo.GoUInt32);
        _r._nBits = (_r._nBits - (_r._width) : stdgo.GoUInt);
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
}
