package stdgo._internal.compress.lzw;
@:keep @:allow(stdgo._internal.compress.lzw.Lzw.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _init( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>, _src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        {
            final __value__ = _order;
            if (__value__ == ((0 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _r ?? throw "null pointer dereference")._read = stdgo._internal.compress.lzw.Lzw_reader_static_extension.Reader_static_extension._readLSB;
            } else if (__value__ == ((1 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _r ?? throw "null pointer dereference")._read = stdgo._internal.compress.lzw.Lzw_reader_static_extension.Reader_static_extension._readMSB;
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: unknown order" : stdgo.GoString));
                return;
            };
        };
        if (((_litWidth < (2 : stdgo.GoInt) : Bool) || ((8 : stdgo.GoInt) < _litWidth : Bool) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("lzw: litWidth %d out of range" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.io.Io_bytereader.ByteReader)) : stdgo._internal.io.Io_bytereader.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_bytereader.ByteReader), _1 : false };
        }, _br = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_src != null) : Bool)) {
            _br = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newreader.newReader(_src));
        };
        (@:checkr _r ?? throw "null pointer dereference")._r = _br;
        (@:checkr _r ?? throw "null pointer dereference")._litWidth = _litWidth;
        (@:checkr _r ?? throw "null pointer dereference")._width = ((1u32 : stdgo.GoUInt) + (_litWidth : stdgo.GoUInt) : stdgo.GoUInt);
        (@:checkr _r ?? throw "null pointer dereference")._clear = ((1 : stdgo.GoUInt16) << (_litWidth : stdgo.GoUInt) : stdgo.GoUInt16);
        {
            final __tmp__0 = ((@:checkr _r ?? throw "null pointer dereference")._clear + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            final __tmp__1 = ((@:checkr _r ?? throw "null pointer dereference")._clear + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            (@:checkr _r ?? throw "null pointer dereference")._eof = __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._hi = __tmp__1;
        };
        (@:checkr _r ?? throw "null pointer dereference")._overflow = ((1 : stdgo.GoUInt16) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt16);
        (@:checkr _r ?? throw "null pointer dereference")._last = (65535 : stdgo.GoUInt16);
    }
    @:keep
    @:tdfield
    static public function reset( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>, _src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.compress.lzw.Lzw_reader.Reader() : stdgo._internal.compress.lzw.Lzw_reader.Reader);
            var x = (_r : stdgo._internal.compress.lzw.Lzw_reader.Reader);
            x._r = __tmp__?._r;
            x._bits = __tmp__?._bits;
            x._nBits = __tmp__?._nBits;
            x._width = __tmp__?._width;
            x._read = __tmp__?._read;
            x._litWidth = __tmp__?._litWidth;
            x._err = __tmp__?._err;
            x._clear = __tmp__?._clear;
            x._eof = __tmp__?._eof;
            x._hi = __tmp__?._hi;
            x._overflow = __tmp__?._overflow;
            x._last = __tmp__?._last;
            x._suffix = __tmp__?._suffix;
            x._prefix = __tmp__?._prefix;
            x._output = __tmp__?._output;
            x._o = __tmp__?._o;
            x._toRead = __tmp__?._toRead;
        };
        @:check2r _r._init(_src, _order, _litWidth);
    }
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.compress.lzw.Lzw__errclosed._errClosed;
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _decode( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        var _err_3654680:stdgo.Error = (null : stdgo.Error);
        var _code_3654674:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _loopBreak = false;
        var _i_3655275:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3655272:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3654659i32;
                } else if (__value__ == (3654659i32)) {
                    var __blank__ = 0i32;
                    _loopBreak = false;
                    _gotoNext = 3654666i32;
                } else if (__value__ == (3654666i32)) {
                    if (!_loopBreak) {
                        _gotoNext = 3654670i32;
                    } else {
                        _gotoNext = 3656600i32;
                    };
                } else if (__value__ == (3654670i32)) {
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._read(_r);
                        _code_3654674 = @:tmpset0 __tmp__._0;
                        _err_3654680 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_3654680 != null) {
                        _gotoNext = 3654713i32;
                    } else {
                        _gotoNext = 3654802i32;
                    };
                } else if (__value__ == (3654713i32)) {
                    if (stdgo.Go.toInterface(_err_3654680) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3654735i32;
                    } else {
                        _gotoNext = 3654775i32;
                    };
                } else if (__value__ == (3654735i32)) {
                    _err_3654680 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 3654775i32;
                } else if (__value__ == (3654775i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = _err_3654680;
                    _gotoNext = 3656600i32;
                } else if (__value__ == (3654802i32)) {
                    _gotoNext = 3654802i32;
                    if ((_code_3654674 < (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3654813i32;
                    } else if (_code_3654674 == ((@:checkr _r ?? throw "null pointer dereference")._clear)) {
                        _gotoNext = 3655050i32;
                    } else if (_code_3654674 == ((@:checkr _r ?? throw "null pointer dereference")._eof)) {
                        _gotoNext = 3655196i32;
                    } else if ((_code_3654674 <= (@:checkr _r ?? throw "null pointer dereference")._hi : Bool)) {
                        _gotoNext = 3655250i32;
                    } else {
                        _gotoNext = 3656043i32;
                    };
                } else if (__value__ == (3654813i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[((@:checkr _r ?? throw "null pointer dereference")._o : stdgo.GoInt)] = (_code_3654674 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._o++;
                    if ((@:checkr _r ?? throw "null pointer dereference")._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3654939i32;
                    } else {
                        _gotoNext = 3656115i32;
                    };
                } else if (__value__ == (3654939i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._suffix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (_code_3654674 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._prefix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3656115i32;
                } else if (__value__ == (3655050i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._width = ((1u32 : stdgo.GoUInt) + ((@:checkr _r ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt) : stdgo.GoUInt);
                    (@:checkr _r ?? throw "null pointer dereference")._hi = (@:checkr _r ?? throw "null pointer dereference")._eof;
                    (@:checkr _r ?? throw "null pointer dereference")._overflow = ((1 : stdgo.GoUInt16) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt16);
                    (@:checkr _r ?? throw "null pointer dereference")._last = (65535 : stdgo.GoUInt16);
                    var __blank__ = 0i32;
                    _gotoNext = 3654666i32;
                } else if (__value__ == (3655196i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
                    _loopBreak = true;
                    _gotoNext = 3654666i32;
                } else if (__value__ == (3655250i32)) {
                    {
                        final __tmp__0 = _code_3654674;
                        final __tmp__1 = (8191 : stdgo.GoInt);
                        _c_3655272 = __tmp__0;
                        _i_3655275 = __tmp__1;
                    };
                    if (((_code_3654674 == (@:checkr _r ?? throw "null pointer dereference")._hi) && ((@:checkr _r ?? throw "null pointer dereference")._last != (65535 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3655353i32;
                    } else {
                        _gotoNext = 3655747i32;
                    };
                } else if (__value__ == (3655353i32)) {
                    _c_3655272 = (@:checkr _r ?? throw "null pointer dereference")._last;
                    var __blank__ = 0i32;
                    _gotoNext = 3655577i32;
                } else if (__value__ == (3655577i32)) {
                    if ((_c_3655272 >= (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3655594i32;
                    } else {
                        _gotoNext = 3655627i32;
                    };
                } else if (__value__ == (3655594i32)) {
                    _c_3655272 = (@:checkr _r ?? throw "null pointer dereference")._prefix[(_c_3655272 : stdgo.GoInt)];
                    _gotoNext = 3655577i32;
                } else if (__value__ == (3655627i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3655275 : stdgo.GoInt)] = (_c_3655272 : stdgo.GoUInt8);
                    _i_3655275--;
                    _c_3655272 = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3655747i32;
                } else if (__value__ == (3655747i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3655747i32;
                    if ((_c_3655272 >= (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3655764i32;
                    } else {
                        _gotoNext = 3655832i32;
                    };
                } else if (__value__ == (3655764i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3655275 : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._suffix[(_c_3655272 : stdgo.GoInt)];
                    _i_3655275--;
                    _c_3655272 = (@:checkr _r ?? throw "null pointer dereference")._prefix[(_c_3655272 : stdgo.GoInt)];
                    _gotoNext = 3655747i32;
                } else if (__value__ == (3655832i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3655275 : stdgo.GoInt)] = (_c_3655272 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._o = ((@:checkr _r ?? throw "null pointer dereference")._o + (((@:checkr _r ?? throw "null pointer dereference")._output.__slice__((@:checkr _r ?? throw "null pointer dereference")._o) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._output.__slice__(_i_3655275) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                    if ((@:checkr _r ?? throw "null pointer dereference")._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3655935i32;
                    } else {
                        _gotoNext = 3656115i32;
                    };
                } else if (__value__ == (3655935i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._suffix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (_c_3655272 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._prefix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3656115i32;
                } else if (__value__ == (3656043i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: invalid code" : stdgo.GoString));
                    _loopBreak = true;
                    _gotoNext = 3654666i32;
                } else if (__value__ == (3656115i32)) {
                    {
                        final __tmp__0 = _code_3654674;
                        final __tmp__1 = ((@:checkr _r ?? throw "null pointer dereference")._hi + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
                        (@:checkr _r ?? throw "null pointer dereference")._last = __tmp__0;
                        (@:checkr _r ?? throw "null pointer dereference")._hi = __tmp__1;
                    };
                    if (((@:checkr _r ?? throw "null pointer dereference")._hi >= (@:checkr _r ?? throw "null pointer dereference")._overflow : Bool)) {
                        _gotoNext = 3656167i32;
                    } else {
                        _gotoNext = 3656533i32;
                    };
                } else if (__value__ == (3656167i32)) {
                    if (((@:checkr _r ?? throw "null pointer dereference")._hi > (@:checkr _r ?? throw "null pointer dereference")._overflow : Bool)) {
                        _gotoNext = 3656193i32;
                    } else {
                        _gotoNext = 3656228i32;
                    };
                } else if (__value__ == (3656193i32)) {
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    _gotoNext = 3656228i32;
                } else if (__value__ == (3656228i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._width == ((12u32 : stdgo.GoUInt))) {
                        _gotoNext = 3656251i32;
                    } else {
                        _gotoNext = 3656476i32;
                    };
                } else if (__value__ == (3656251i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._last = (65535 : stdgo.GoUInt16);
                    (@:checkr _r ?? throw "null pointer dereference")._hi--;
                    _gotoNext = 3656533i32;
                } else if (__value__ == (3656476i32)) {
                    _gotoNext = 3656476i32;
                    (@:checkr _r ?? throw "null pointer dereference")._width++;
                    (@:checkr _r ?? throw "null pointer dereference")._overflow = ((1 : stdgo.GoUInt16) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt16);
                    var __blank__ = 0i32;
                    _gotoNext = 3656533i32;
                } else if (__value__ == (3656533i32)) {
                    if (((@:checkr _r ?? throw "null pointer dereference")._o >= (4096 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3656555i32;
                    } else {
                        _gotoNext = 3654666i32;
                    };
                } else if (__value__ == (3656555i32)) {
                    _gotoNext = 3656600i32;
                } else if (__value__ == (3656600i32)) {
                    (@:checkr _r ?? throw "null pointer dereference")._toRead = ((@:checkr _r ?? throw "null pointer dereference")._output.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._o) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._o = (0 : stdgo.GoInt);
                    _gotoNext = -1i32;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        while (true) {
            if ((((@:checkr _r ?? throw "null pointer dereference")._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_b.__copyTo__((@:checkr _r ?? throw "null pointer dereference")._toRead) : stdgo.GoInt);
                (@:checkr _r ?? throw "null pointer dereference")._toRead = ((@:checkr _r ?? throw "null pointer dereference")._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
            };
            @:check2r _r._decode();
        };
    }
    @:keep
    @:tdfield
    static public function _readMSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        while (((@:checkr _r ?? throw "null pointer dereference")._nBits < (@:checkr _r ?? throw "null pointer dereference")._width : Bool)) {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits | (((_x : stdgo.GoUInt32) << (((24u32 : stdgo.GoUInt) - (@:checkr _r ?? throw "null pointer dereference")._nBits : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = (((@:checkr _r ?? throw "null pointer dereference")._bits >> (((32u32 : stdgo.GoUInt) - (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits << ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt32);
        (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits - ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        while (((@:checkr _r ?? throw "null pointer dereference")._nBits < (@:checkr _r ?? throw "null pointer dereference")._width : Bool)) {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits | (((_x : stdgo.GoUInt32) << (@:checkr _r ?? throw "null pointer dereference")._nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = (((@:checkr _r ?? throw "null pointer dereference")._bits & ((((1u32 : stdgo.GoUInt32) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits >> ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt32);
        (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits - ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
}
