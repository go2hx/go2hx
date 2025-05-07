package stdgo._internal.compress.lzw;
@:keep @:allow(stdgo._internal.compress.lzw.Lzw.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function _init( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>, _src:stdgo._internal.io.Io_reader.Reader, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L265"
        {
            final __value__ = _order;
            if (__value__ == ((0 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _r ?? throw "null pointer dereference")._read = stdgo._internal.compress.lzw.Lzw_reader_static_extension.Reader_static_extension._readLSB;
            } else if (__value__ == ((1 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _r ?? throw "null pointer dereference")._read = stdgo._internal.compress.lzw.Lzw_reader_static_extension.Reader_static_extension._readMSB;
            } else {
                (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: unknown order" : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L272"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L274"
        if (((_litWidth < (2 : stdgo.GoInt) : Bool) || ((8 : stdgo.GoInt) < _litWidth : Bool) : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("lzw: litWidth %d out of range" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L276"
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.io.Io_bytereader.ByteReader)) : stdgo._internal.io.Io_bytereader.ByteReader), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io_bytereader.ByteReader), _1 : false };
        }, _br = __tmp__._0, _ok = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L280"
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
            (@:checkr _r ?? throw "null pointer dereference")._eof = @:binopAssign __tmp__0;
            (@:checkr _r ?? throw "null pointer dereference")._hi = @:binopAssign __tmp__1;
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
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L239"
        _r._init(_src, _order, _litWidth);
    }
    @:keep
    @:tdfield
    static public function close( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.compress.lzw.Lzw__errclosed._errClosed;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L232"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _decode( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        var _c_2:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _code_0:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
        var _loopBreak = false;
        var _i_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3646601i64;
                } else if (__value__ == (3646601i64)) {
                    0i64;
                    _loopBreak = false;
                    _gotoNext = 3646608i64;
                } else if (__value__ == (3646608i64)) {
                    //"file://#L0"
                    if (!_loopBreak) {
                        _gotoNext = 3646612i64;
                    } else {
                        _gotoNext = 3648542i64;
                    };
                } else if (__value__ == (3646612i64)) {
                    {
                        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._read(_r);
                        _code_0 = @:tmpset0 __tmp__._0;
                        _err_1 = @:tmpset0 __tmp__._1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L144"
                    if (_err_1 != null) {
                        _gotoNext = 3646655i64;
                    } else {
                        _gotoNext = 3646744i64;
                    };
                } else if (__value__ == (3646655i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L145"
                    if (stdgo.Go.toInterface(_err_1) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 3646677i64;
                    } else {
                        _gotoNext = 3646717i64;
                    };
                } else if (__value__ == (3646677i64)) {
                    _err_1 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 3646717i64;
                } else if (__value__ == (3646717i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = _err_1;
                    _gotoNext = 3648542i64;
                } else if (__value__ == (3646744i64)) {
                    _gotoNext = 3646744i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L151"
                    if ((_code_0 < (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3646755i64;
                    } else if (_code_0 == ((@:checkr _r ?? throw "null pointer dereference")._clear)) {
                        _gotoNext = 3646992i64;
                    } else if (_code_0 == ((@:checkr _r ?? throw "null pointer dereference")._eof)) {
                        _gotoNext = 3647138i64;
                    } else if ((_code_0 <= (@:checkr _r ?? throw "null pointer dereference")._hi : Bool)) {
                        _gotoNext = 3647192i64;
                    } else {
                        _gotoNext = 3647985i64;
                    };
                } else if (__value__ == (3646755i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[((@:checkr _r ?? throw "null pointer dereference")._o : stdgo.GoInt)] = (_code_0 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L155"
                    (@:checkr _r ?? throw "null pointer dereference")._o++;
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L156"
                    if ((@:checkr _r ?? throw "null pointer dereference")._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3646881i64;
                    } else {
                        _gotoNext = 3648057i64;
                    };
                } else if (__value__ == (3646881i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._suffix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (_code_0 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._prefix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3648057i64;
                } else if (__value__ == (3646992i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._width = ((1u32 : stdgo.GoUInt) + ((@:checkr _r ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt) : stdgo.GoUInt);
                    (@:checkr _r ?? throw "null pointer dereference")._hi = (@:checkr _r ?? throw "null pointer dereference")._eof;
                    (@:checkr _r ?? throw "null pointer dereference")._overflow = ((1 : stdgo.GoUInt16) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt16);
                    (@:checkr _r ?? throw "null pointer dereference")._last = (65535 : stdgo.GoUInt16);
                    0i64;
                    _gotoNext = 3646608i64;
                } else if (__value__ == (3647138i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.io.Io_eof.eOF;
                    _loopBreak = true;
                    _gotoNext = 3646608i64;
                } else if (__value__ == (3647192i64)) {
                    {
                        final __tmp__0 = _code_0;
                        final __tmp__1 = (8191 : stdgo.GoInt);
                        _c_2 = @:binopAssign __tmp__0;
                        _i_3 = @:binopAssign __tmp__1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L172"
                    if (((_code_0 == (@:checkr _r ?? throw "null pointer dereference")._hi) && ((@:checkr _r ?? throw "null pointer dereference")._last != (65535 : stdgo.GoUInt16)) : Bool)) {
                        _gotoNext = 3647295i64;
                    } else {
                        _gotoNext = 3647689i64;
                    };
                } else if (__value__ == (3647295i64)) {
                    _c_2 = (@:checkr _r ?? throw "null pointer dereference")._last;
                    0i64;
                    _gotoNext = 3647519i64;
                } else if (__value__ == (3647519i64)) {
                    //"file://#L0"
                    if ((_c_2 >= (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3647536i64;
                    } else {
                        _gotoNext = 3647569i64;
                    };
                } else if (__value__ == (3647536i64)) {
                    _c_2 = (@:checkr _r ?? throw "null pointer dereference")._prefix[(_c_2 : stdgo.GoInt)];
                    _gotoNext = 3647519i64;
                } else if (__value__ == (3647569i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3 : stdgo.GoInt)] = (_c_2 : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L181"
                    _i_3--;
                    _c_2 = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3647689i64;
                } else if (__value__ == (3647689i64)) {
                    0i64;
                    _gotoNext = 3647689i64;
                    //"file://#L0"
                    if ((_c_2 >= (@:checkr _r ?? throw "null pointer dereference")._clear : Bool)) {
                        _gotoNext = 3647706i64;
                    } else {
                        _gotoNext = 3647774i64;
                    };
                } else if (__value__ == (3647706i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3 : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._suffix[(_c_2 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L187"
                    _i_3--;
                    _c_2 = (@:checkr _r ?? throw "null pointer dereference")._prefix[(_c_2 : stdgo.GoInt)];
                    _gotoNext = 3647689i64;
                } else if (__value__ == (3647774i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._output[(_i_3 : stdgo.GoInt)] = (_c_2 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._o = ((@:checkr _r ?? throw "null pointer dereference")._o + (((@:checkr _r ?? throw "null pointer dereference")._output.__slice__((@:checkr _r ?? throw "null pointer dereference")._o) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _r ?? throw "null pointer dereference")._output.__slice__(_i_3) : stdgo.Slice<stdgo.GoUInt8>))) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L192"
                    if ((@:checkr _r ?? throw "null pointer dereference")._last != ((65535 : stdgo.GoUInt16))) {
                        _gotoNext = 3647877i64;
                    } else {
                        _gotoNext = 3648057i64;
                    };
                } else if (__value__ == (3647877i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._suffix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (_c_2 : stdgo.GoUInt8);
                    (@:checkr _r ?? throw "null pointer dereference")._prefix[((@:checkr _r ?? throw "null pointer dereference")._hi : stdgo.GoInt)] = (@:checkr _r ?? throw "null pointer dereference")._last;
                    _gotoNext = 3648057i64;
                } else if (__value__ == (3647985i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: invalid code" : stdgo.GoString));
                    _loopBreak = true;
                    _gotoNext = 3646608i64;
                } else if (__value__ == (3648057i64)) {
                    {
                        final __tmp__0 = _code_0;
                        final __tmp__1 = ((@:checkr _r ?? throw "null pointer dereference")._hi + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
                        (@:checkr _r ?? throw "null pointer dereference")._last = @:binopAssign __tmp__0;
                        (@:checkr _r ?? throw "null pointer dereference")._hi = @:binopAssign __tmp__1;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L202"
                    if (((@:checkr _r ?? throw "null pointer dereference")._hi >= (@:checkr _r ?? throw "null pointer dereference")._overflow : Bool)) {
                        _gotoNext = 3648109i64;
                    } else {
                        _gotoNext = 3648475i64;
                    };
                } else if (__value__ == (3648109i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L203"
                    if (((@:checkr _r ?? throw "null pointer dereference")._hi > (@:checkr _r ?? throw "null pointer dereference")._overflow : Bool)) {
                        _gotoNext = 3648135i64;
                    } else {
                        _gotoNext = 3648170i64;
                    };
                } else if (__value__ == (3648135i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L204"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
                    _gotoNext = 3648170i64;
                } else if (__value__ == (3648170i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L206"
                    if ((@:checkr _r ?? throw "null pointer dereference")._width == ((12u32 : stdgo.GoUInt))) {
                        _gotoNext = 3648193i64;
                    } else {
                        _gotoNext = 3648418i64;
                    };
                } else if (__value__ == (3648193i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._last = (65535 : stdgo.GoUInt16);
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L211"
                    (@:checkr _r ?? throw "null pointer dereference")._hi--;
                    _gotoNext = 3648475i64;
                } else if (__value__ == (3648418i64)) {
                    _gotoNext = 3648418i64;
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L213"
                    (@:checkr _r ?? throw "null pointer dereference")._width++;
                    (@:checkr _r ?? throw "null pointer dereference")._overflow = ((1 : stdgo.GoUInt16) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt16);
                    0i64;
                    _gotoNext = 3648475i64;
                } else if (__value__ == (3648475i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L217"
                    if (((@:checkr _r ?? throw "null pointer dereference")._o >= (4096 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3648497i64;
                    } else {
                        _gotoNext = 3646608i64;
                    };
                } else if (__value__ == (3648497i64)) {
                    _gotoNext = 3648542i64;
                } else if (__value__ == (3648542i64)) {
                    (@:checkr _r ?? throw "null pointer dereference")._toRead = ((@:checkr _r ?? throw "null pointer dereference")._output.__slice__(0, (@:checkr _r ?? throw "null pointer dereference")._o) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._o = (0 : stdgo.GoInt);
                    _gotoNext = -1i64;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L123"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L124"
            if ((((@:checkr _r ?? throw "null pointer dereference")._toRead.length) > (0 : stdgo.GoInt) : Bool)) {
                var _n = (_b.__copyTo__((@:checkr _r ?? throw "null pointer dereference")._toRead) : stdgo.GoInt);
                (@:checkr _r ?? throw "null pointer dereference")._toRead = ((@:checkr _r ?? throw "null pointer dereference")._toRead.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L127"
                return { _0 : _n, _1 : (null : stdgo.Error) };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L129"
            if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L130"
                return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
            };
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L132"
            _r._decode();
        };
    }
    @:keep
    @:tdfield
    static public function _readMSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L107"
        while (((@:checkr _r ?? throw "null pointer dereference")._nBits < (@:checkr _r ?? throw "null pointer dereference")._width : Bool)) {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L109"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L110"
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits | (((_x : stdgo.GoUInt32) << (((24u32 : stdgo.GoUInt) - (@:checkr _r ?? throw "null pointer dereference")._nBits : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = (((@:checkr _r ?? throw "null pointer dereference")._bits >> (((32u32 : stdgo.GoUInt) - (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits << ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt32);
        (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits - ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L118"
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readLSB( _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_reader.Reader> = _r;
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L91"
        while (((@:checkr _r ?? throw "null pointer dereference")._nBits < (@:checkr _r ?? throw "null pointer dereference")._width : Bool)) {
            var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._r.readByte(), _x:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L93"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L94"
                return { _0 : (0 : stdgo.GoUInt16), _1 : _err };
            };
            (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits | (((_x : stdgo.GoUInt32) << (@:checkr _r ?? throw "null pointer dereference")._nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
            (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits + ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        var _code = (((@:checkr _r ?? throw "null pointer dereference")._bits & ((((1u32 : stdgo.GoUInt32) << (@:checkr _r ?? throw "null pointer dereference")._width : stdgo.GoUInt32) - (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32) : stdgo.GoUInt16);
        (@:checkr _r ?? throw "null pointer dereference")._bits = ((@:checkr _r ?? throw "null pointer dereference")._bits >> ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt32);
        (@:checkr _r ?? throw "null pointer dereference")._nBits = ((@:checkr _r ?? throw "null pointer dereference")._nBits - ((@:checkr _r ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        //"file:///home/runner/.go/go1.21.3/src/compress/lzw/reader.go#L102"
        return { _0 : _code, _1 : (null : stdgo.Error) };
    }
}
