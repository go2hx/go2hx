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
        var _code_3646616:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _loopBreak = false;
        var _i_3647217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3647214:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_3646622:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3646601i32;
                } else if (__value__ == (3646601i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 3646608i32;
                } else if (__value__ == (3646608i32)) {
                    if (!_loopBreak) {
                        _gotoNext = 3646612i32;
                    } else {
                        _gotoNext = 3648542i32;
                    };
                } else if (__value__ == (3646612i32)) {
                    {
                        var __tmp__ = _r._read(_r);
                        _code_3646616 = __tmp__._0;
                        _err_3646622 = __tmp__._1;
                    };
                    if (_err_3646622 != null) {
                        _gotoNext = 3646655i32;
                    } else {
                        _gotoNext = 3646744i32;
                    };
                } else if (__value__ == (3646655i32)) {
                    if (stdgo.Go.toInterface(_err_3646622) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        _gotoNext = 3646677i32;
                    } else {
                        _gotoNext = 3646717i32;
                    };
                } else if (__value__ == (3646677i32)) {
                    _err_3646622 = stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF;
                    _gotoNext = 3646717i32;
                } else if (__value__ == (3646717i32)) {
                    _r._err = _err_3646622;
                    _gotoNext = 3648542i32;
                } else if (__value__ == (3646744i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3646744i32;
                    if ((_code_3646616 < _r._clear : Bool)) {
                        _gotoNext = 3646755i32;
                    } else if (_code_3646616 == (_r._clear)) {
                        _gotoNext = 3646992i32;
                    } else if (_code_3646616 == (_r._eof)) {
                        _gotoNext = 3647138i32;
                    } else if ((_code_3646616 <= _r._hi : Bool)) {
                        _gotoNext = 3647192i32;
                    } else {
                        _gotoNext = 3647985i32;
                    };
                } else if (__value__ == (3646755i32)) {
                    _r._output[(_r._o : stdgo.GoInt)] = (_code_3646616 : stdgo.GoUInt8);
                    _r._o++;
                    if (_r._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3646881i32;
                    } else {
                        _gotoNext = 3648057i32;
                    };
                } else if (__value__ == (3646881i32)) {
                    _r._suffix[(_r._hi : stdgo.GoInt)] = (_code_3646616 : stdgo.GoUInt8);
                    _r._prefix[(_r._hi : stdgo.GoInt)] = _r._last;
                    _gotoNext = 3648057i32;
                } else if (__value__ == (3646992i32)) {
                    _r._width = ((1u32 : stdgo.GoUInt) + (_r._litWidth : stdgo.GoUInt) : stdgo.GoUInt);
                    _r._hi = _r._eof;
                    _r._overflow = ((1 : stdgo.GoUInt16) << _r._width : stdgo.GoUInt16);
                    _r._last = (65535 : stdgo.GoUInt16);
                    var __blank__ = 0i32;
                    _gotoNext = 3646608i32;
                } else if (__value__ == (3647138i32)) {
                    _r._err = stdgo._internal.io.Io_eof.eof;
                    _loopBreak = true;
                    _gotoNext = 3646608i32;
                } else if (__value__ == (3647192i32)) {
                    {
                        final __tmp__0 = _code_3646616;
                        final __tmp__1 = (8191 : stdgo.GoInt);
                        _c_3647214 = __tmp__0;
                        _i_3647217 = __tmp__1;
                    };
                    if (((_code_3646616 == _r._hi) && (_r._last != (65535 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3647295i32;
                    } else {
                        _gotoNext = 3647689i32;
                    };
                } else if (__value__ == (3647295i32)) {
                    _c_3647214 = _r._last;
                    var __blank__ = 0i32;
                    _gotoNext = 3647519i32;
                } else if (__value__ == (3647519i32)) {
                    if ((_c_3647214 >= _r._clear : Bool)) {
                        _gotoNext = 3647536i32;
                    } else {
                        _gotoNext = 3647569i32;
                    };
                } else if (__value__ == (3647536i32)) {
                    _c_3647214 = _r._prefix[(_c_3647214 : stdgo.GoInt)];
                    _gotoNext = 3647519i32;
                } else if (__value__ == (3647569i32)) {
                    _r._output[(_i_3647217 : stdgo.GoInt)] = (_c_3647214 : stdgo.GoUInt8);
                    _i_3647217--;
                    _c_3647214 = _r._last;
                    _gotoNext = 3647689i32;
                } else if (__value__ == (3647689i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3647689i32;
                    if ((_c_3647214 >= _r._clear : Bool)) {
                        _gotoNext = 3647706i32;
                    } else {
                        _gotoNext = 3647774i32;
                    };
                } else if (__value__ == (3647706i32)) {
                    _r._output[(_i_3647217 : stdgo.GoInt)] = _r._suffix[(_c_3647214 : stdgo.GoInt)];
                    _i_3647217--;
                    _c_3647214 = _r._prefix[(_c_3647214 : stdgo.GoInt)];
                    _gotoNext = 3647689i32;
                } else if (__value__ == (3647774i32)) {
                    _r._output[(_i_3647217 : stdgo.GoInt)] = (_c_3647214 : stdgo.GoUInt8);
                    _r._o = (_r._o + (stdgo.Go.copySlice((_r._output.__slice__(_r._o) : stdgo.Slice<stdgo.GoUInt8>), (_r._output.__slice__(_i_3647217) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                    if (_r._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3647877i32;
                    } else {
                        _gotoNext = 3648057i32;
                    };
                } else if (__value__ == (3647877i32)) {
                    _r._suffix[(_r._hi : stdgo.GoInt)] = (_c_3647214 : stdgo.GoUInt8);
                    _r._prefix[(_r._hi : stdgo.GoInt)] = _r._last;
                    _gotoNext = 3648057i32;
                } else if (__value__ == (3647985i32)) {
                    _r._err = stdgo._internal.errors.Errors_new_.new_(("lzw: invalid code" : stdgo.GoString));
                    _loopBreak = true;
                    _gotoNext = 3646608i32;
                } else if (__value__ == (3648057i32)) {
                    {
                        final __tmp__0 = _code_3646616;
                        final __tmp__1 = (_r._hi + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
                        _r._last = __tmp__0;
                        _r._hi = __tmp__1;
                    };
                    if ((_r._hi >= _r._overflow : Bool)) {
                        _gotoNext = 3648109i32;
                    } else {
                        _gotoNext = 3648475i32;
                    };
                } else if (__value__ == (3648109i32)) {
                    if ((_r._hi > _r._overflow : Bool)) {
                        _gotoNext = 3648135i32;
                    } else {
                        _gotoNext = 3648170i32;
                    };
                } else if (__value__ == (3648135i32)) {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    _gotoNext = 3648170i32;
                } else if (__value__ == (3648170i32)) {
                    if (_r._width == ((12u32 : stdgo.GoUInt))) {
                        _gotoNext = 3648193i32;
                    } else {
                        _gotoNext = 3648418i32;
                    };
                } else if (__value__ == (3648193i32)) {
                    _r._last = (65535 : stdgo.GoUInt16);
                    _r._hi--;
                    _gotoNext = 3648475i32;
                } else if (__value__ == (3648418i32)) {
                    _gotoNext = 3648418i32;
                    _r._width++;
                    _r._overflow = ((1 : stdgo.GoUInt16) << _r._width : stdgo.GoUInt16);
                    var __blank__ = 0i32;
                    _gotoNext = 3648475i32;
                } else if (__value__ == (3648475i32)) {
                    if ((_r._o >= (4096 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3648497i32;
                    } else {
                        _gotoNext = 3648542i32;
                    };
                } else if (__value__ == (3648497i32)) {
                    _gotoNext = 3648542i32;
                } else if (__value__ == (3648542i32)) {
                    _r._toRead = (_r._output.__slice__(0, _r._o) : stdgo.Slice<stdgo.GoUInt8>);
                    _r._o = (0 : stdgo.GoInt);
                    _gotoNext = -1i32;
                };
            };
        };
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
