package stdgo._internal.compress.lzw;
@:keep @:allow(stdgo._internal.compress.lzw.Lzw.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _init( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, _dst:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        {
            final __value__ = _order;
            if (__value__ == ((0 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _w ?? throw "null pointer dereference")._write = stdgo._internal.compress.lzw.Lzw_writer_static_extension.Writer_static_extension._writeLSB;
            } else if (__value__ == ((1 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _w ?? throw "null pointer dereference")._write = stdgo._internal.compress.lzw.Lzw_writer_static_extension.Writer_static_extension._writeMSB;
            } else {
                (@:checkr _w ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: unknown order" : stdgo.GoString));
                return;
            };
        };
        if (((_litWidth < (2 : stdgo.GoInt) : Bool) || ((8 : stdgo.GoInt) < _litWidth : Bool) : Bool)) {
            (@:checkr _w ?? throw "null pointer dereference")._err = stdgo._internal.fmt.Fmt_errorf.errorf(("lzw: litWidth %d out of range" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.compress.lzw.Lzw_t_writer.T_writer)) : stdgo._internal.compress.lzw.Lzw_t_writer.T_writer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.compress.lzw.Lzw_t_writer.T_writer), _1 : false };
        }, _bw = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_dst != null) : Bool)) {
            _bw = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newwriter.newWriter(_dst));
        };
        (@:checkr _w ?? throw "null pointer dereference")._w = _bw;
        var _lw = (_litWidth : stdgo.GoUInt);
        (@:checkr _w ?? throw "null pointer dereference")._order = _order;
        (@:checkr _w ?? throw "null pointer dereference")._width = ((1u32 : stdgo.GoUInt) + _lw : stdgo.GoUInt);
        (@:checkr _w ?? throw "null pointer dereference")._litWidth = _lw;
        (@:checkr _w ?? throw "null pointer dereference")._hi = (((1u32 : stdgo.GoUInt32) << _lw : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        (@:checkr _w ?? throw "null pointer dereference")._overflow = ((1u32 : stdgo.GoUInt32) << ((_lw + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
        (@:checkr _w ?? throw "null pointer dereference")._savedCode = (-1u32 : stdgo.GoUInt32);
    }
    @:keep
    @:tdfield
    static public function reset( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, _dst:stdgo._internal.io.Io_writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        {
            var __tmp__ = (new stdgo._internal.compress.lzw.Lzw_writer.Writer() : stdgo._internal.compress.lzw.Lzw_writer.Writer);
            var x = (_w : stdgo._internal.compress.lzw.Lzw_writer.Writer);
            x._w = __tmp__?._w;
            x._order = __tmp__?._order;
            x._write = __tmp__?._write;
            x._bits = __tmp__?._bits;
            x._nBits = __tmp__?._nBits;
            x._width = __tmp__?._width;
            x._litWidth = __tmp__?._litWidth;
            x._hi = __tmp__?._hi;
            x._overflow = __tmp__?._overflow;
            x._savedCode = __tmp__?._savedCode;
            x._err = __tmp__?._err;
            x._table = __tmp__?._table;
        };
        @:check2r _w._init(_dst, _order, _litWidth);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
            if (stdgo.Go.toInterface((@:checkr _w ?? throw "null pointer dereference")._err) == (stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__errclosed._errClosed))) {
                return (null : stdgo.Error);
            };
            return (@:checkr _w ?? throw "null pointer dereference")._err;
        };
        (@:checkr _w ?? throw "null pointer dereference")._err = stdgo._internal.compress.lzw.Lzw__errclosed._errClosed;
        if ((@:checkr _w ?? throw "null pointer dereference")._savedCode != ((-1u32 : stdgo.GoUInt32))) {
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._write(_w, (@:checkr _w ?? throw "null pointer dereference")._savedCode) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (@:check2r _w._incHi() : stdgo.Error);
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__erroutofcodes._errOutOfCodes)) : Bool)) {
                    return _err;
                };
            };
        } else {
            var _clear = ((1u32 : stdgo.GoUInt32) << (@:checkr _w ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt32);
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._write(_w, _clear) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _eof = (((1u32 : stdgo.GoUInt32) << (@:checkr _w ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _err = ((@:checkr _w ?? throw "null pointer dereference")._write(_w, _eof) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if (((@:checkr _w ?? throw "null pointer dereference")._nBits > (0u32 : stdgo.GoUInt) : Bool)) {
            if ((@:checkr _w ?? throw "null pointer dereference")._order == ((1 : stdgo._internal.compress.lzw.Lzw_order.Order))) {
                (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((24i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            };
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._w.writeByte(((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (@:checkr _w ?? throw "null pointer dereference")._w.flush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _hash_3647061:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _clear_3646633:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _code_3646218:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_3646075_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err1_3647607:stdgo.Error = (null : stdgo.Error);
        var _t_3647106:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3646888:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3646893_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3646671:stdgo.Error = (null : stdgo.Error);
        var _x_3646070:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _h_3647103:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _key_3646928:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _literal_3646905:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _maxLit_3646008:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 3645944i32;
                    } else {
                        _gotoNext = 3645968i32;
                    };
                } else if (__value__ == (3645944i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _w ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3645968i32;
                } else if (__value__ == (3645968i32)) {
                    if ((_p.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3645983i32;
                    } else {
                        _gotoNext = 3646005i32;
                    };
                } else if (__value__ == (3645983i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3646005i32;
                } else if (__value__ == (3646005i32)) {
                    {
                        _maxLit_3646008 = (((1 : stdgo.GoUInt8) << (@:checkr _w ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt8) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        if (_maxLit_3646008 != ((255 : stdgo.GoUInt8))) {
                            _gotoNext = 3646059i32;
                        } else {
                            _gotoNext = 3646206i32;
                        };
                    };
                } else if (__value__ == (3646059i32)) {
                    if ((0i32 : stdgo.GoInt) < (_p.length)) {
                        _gotoNext = 3646199i32;
                    } else {
                        _gotoNext = 3646206i32;
                    };
                } else if (__value__ == (3646067i32)) {
                    _i_3646075_0++;
                    _gotoNext = 3646200i32;
                } else if (__value__ == (3646083i32)) {
                    _x_3646070 = _p[(_i_3646075_0 : stdgo.GoInt)];
                    if ((_x_3646070 > _maxLit_3646008 : Bool)) {
                        _gotoNext = 3646102i32;
                    } else {
                        _gotoNext = 3646067i32;
                    };
                } else if (__value__ == (3646102i32)) {
                    (@:checkr _w ?? throw "null pointer dereference")._err = stdgo._internal.errors.Errors_new_.new_(("lzw: input byte too large for the litWidth" : stdgo.GoString));
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _w ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3646067i32;
                } else if (__value__ == (3646199i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _p[(0i32 : stdgo.GoInt)];
                        _i_3646075_0 = __tmp__0;
                        _x_3646070 = __tmp__1;
                    };
                    _gotoNext = 3646200i32;
                } else if (__value__ == (3646200i32)) {
                    if (_i_3646075_0 < (_p.length)) {
                        _gotoNext = 3646083i32;
                    } else {
                        _gotoNext = 3646206i32;
                    };
                } else if (__value__ == (3646206i32)) {
                    _n = (_p.length);
                    _code_3646218 = (@:checkr _w ?? throw "null pointer dereference")._savedCode;
                    if (_code_3646218 == ((-1u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3646262i32;
                    } else {
                        _gotoNext = 3646874i32;
                    };
                } else if (__value__ == (3646262i32)) {
                    _clear_3646633 = ((1u32 : stdgo.GoUInt32) << (@:checkr _w ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt32);
                    {
                        _err_3646671 = (@:checkr _w ?? throw "null pointer dereference")._write(_w, _clear_3646633);
                        if (_err_3646671 != null) {
                            _gotoNext = 3646708i32;
                        } else {
                            _gotoNext = 3646841i32;
                        };
                    };
                } else if (__value__ == (3646708i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err_3646671 };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3646841i32;
                } else if (__value__ == (3646841i32)) {
                    {
                        final __tmp__0 = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
                        final __tmp__1 = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _code_3646218 = __tmp__0;
                        _p = __tmp__1;
                    };
                    _gotoNext = 3646874i32;
                } else if (__value__ == (3646874i32)) {
                    _gotoNext = 3646874i32;
                    if ((0i32 : stdgo.GoInt) < (_p.length)) {
                        _gotoNext = 3647937i32;
                    } else {
                        _gotoNext = 3647941i32;
                    };
                } else if (__value__ == (3646885i32)) {
                    _i_3646893_0++;
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3646901i32)) {
                    _x_3646888 = _p[(_i_3646893_0 : stdgo.GoInt)];
                    _literal_3646905 = (_x_3646888 : stdgo.GoUInt32);
                    _key_3646928 = ((_code_3646218 << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _literal_3646905 : stdgo.GoUInt32);
                    _hash_3647061 = ((((_key_3646928 >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) ^ _key_3646928 : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    {
                        final __tmp__0 = _hash_3647061;
                        final __tmp__1 = (@:checkr _w ?? throw "null pointer dereference")._table[(_hash_3647061 : stdgo.GoInt)];
                        _h_3647103 = __tmp__0;
                        _t_3647106 = __tmp__1;
                    };
                    _gotoNext = 3647099i32;
                } else if (__value__ == (3647099i32)) {
                    if (_t_3647106 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3647151i32;
                    } else {
                        _gotoNext = 3647372i32;
                    };
                } else if (__value__ == (3647151i32)) {
                    if (_key_3646928 == ((_t_3647106 >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                        _gotoNext = 3647172i32;
                    } else {
                        _gotoNext = 3647223i32;
                    };
                } else if (__value__ == (3647172i32)) {
                    _code_3646218 = (_t_3647106 & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    stdgo._internal.compress.lzw.Lzw__i_3646893._i_3646893++;
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3647223i32)) {
                    _h_3647103 = (((_h_3647103 + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _t_3647106 = (@:checkr _w ?? throw "null pointer dereference")._table[(_h_3647103 : stdgo.GoInt)];
                    _gotoNext = 3647099i32;
                } else if (__value__ == (3647372i32)) {
                    {
                        (@:checkr _w ?? throw "null pointer dereference")._err = (@:checkr _w ?? throw "null pointer dereference")._write(_w, _code_3646218);
                        if ((@:checkr _w ?? throw "null pointer dereference")._err != null) {
                            _gotoNext = 3647414i32;
                        } else {
                            _gotoNext = 3647441i32;
                        };
                    };
                } else if (__value__ == (3647414i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _w ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3647441i32;
                } else if (__value__ == (3647441i32)) {
                    _code_3646218 = _literal_3646905;
                    {
                        _err1_3647607 = @:check2r _w._incHi();
                        if (_err1_3647607 != null) {
                            _gotoNext = 3647638i32;
                        } else {
                            _gotoNext = 3647802i32;
                        };
                    };
                } else if (__value__ == (3647638i32)) {
                    if (stdgo.Go.toInterface(_err1_3647607) == (stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__erroutofcodes._errOutOfCodes))) {
                        _gotoNext = 3647668i32;
                    } else {
                        _gotoNext = 3647691i32;
                    };
                } else if (__value__ == (3647668i32)) {
                    _i_3646893_0++;
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3647691i32)) {
                    (@:checkr _w ?? throw "null pointer dereference")._err = _err1_3647607;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _w ?? throw "null pointer dereference")._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3647802i32;
                } else if (__value__ == (3647802i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3647802i32;
                    if (true) {
                        _gotoNext = 3647806i32;
                    } else {
                        _gotoNext = 3646885i32;
                    };
                } else if (__value__ == (3647806i32)) {
                    if ((@:checkr _w ?? throw "null pointer dereference")._table[(_hash_3647061 : stdgo.GoInt)] == ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3647844i32;
                    } else {
                        _gotoNext = 3647903i32;
                    };
                } else if (__value__ == (3647844i32)) {
                    (@:checkr _w ?? throw "null pointer dereference")._table[(_hash_3647061 : stdgo.GoInt)] = (((_key_3646928 << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | (@:checkr _w ?? throw "null pointer dereference")._hi : stdgo.GoUInt32);
                    _gotoNext = 3646885i32;
                } else if (__value__ == (3647903i32)) {
                    _hash_3647061 = (((_hash_3647061 + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _gotoNext = 3647802i32;
                } else if (__value__ == (3647937i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _p[(0i32 : stdgo.GoInt)];
                        _i_3646893_0 = __tmp__0;
                        _x_3646888 = __tmp__1;
                    };
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3647938i32)) {
                    if (_i_3646893_0 < (_p.length)) {
                        _gotoNext = 3646901i32;
                    } else {
                        _gotoNext = 3647941i32;
                    };
                } else if (__value__ == (3647941i32)) {
                    (@:checkr _w ?? throw "null pointer dereference")._savedCode = _code_3646218;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _incHi( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._hi++;
        if ((@:checkr _w ?? throw "null pointer dereference")._hi == ((@:checkr _w ?? throw "null pointer dereference")._overflow)) {
            (@:checkr _w ?? throw "null pointer dereference")._width++;
            (@:checkr _w ?? throw "null pointer dereference")._overflow = ((@:checkr _w ?? throw "null pointer dereference")._overflow << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        };
        if ((@:checkr _w ?? throw "null pointer dereference")._hi == ((4095u32 : stdgo.GoUInt32))) {
            var _clear = ((1u32 : stdgo.GoUInt32) << (@:checkr _w ?? throw "null pointer dereference")._litWidth : stdgo.GoUInt32);
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._write(_w, _clear) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._width = ((@:checkr _w ?? throw "null pointer dereference")._litWidth + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            (@:checkr _w ?? throw "null pointer dereference")._hi = (_clear + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            (@:checkr _w ?? throw "null pointer dereference")._overflow = (_clear << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            for (_i => _ in (@:checkr _w ?? throw "null pointer dereference")._table) {
                (@:checkr _w ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
            };
            return stdgo._internal.compress.lzw.Lzw__erroutofcodes._errOutOfCodes;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeMSB( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, _c:stdgo.GoUInt32):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits | ((_c << ((((32u32 : stdgo.GoUInt) - (@:checkr _w ?? throw "null pointer dereference")._width : stdgo.GoUInt) - (@:checkr _w ?? throw "null pointer dereference")._nBits : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _w ?? throw "null pointer dereference")._nBits = ((@:checkr _w ?? throw "null pointer dereference")._nBits + ((@:checkr _w ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        while (((@:checkr _w ?? throw "null pointer dereference")._nBits >= (8u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._w.writeByte((((@:checkr _w ?? throw "null pointer dereference")._bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            (@:checkr _w ?? throw "null pointer dereference")._nBits = ((@:checkr _w ?? throw "null pointer dereference")._nBits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _writeLSB( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer>, _c:stdgo.GoUInt32):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_writer.Writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits | ((_c << (@:checkr _w ?? throw "null pointer dereference")._nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
        (@:checkr _w ?? throw "null pointer dereference")._nBits = ((@:checkr _w ?? throw "null pointer dereference")._nBits + ((@:checkr _w ?? throw "null pointer dereference")._width) : stdgo.GoUInt);
        while (((@:checkr _w ?? throw "null pointer dereference")._nBits >= (8u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = ((@:checkr _w ?? throw "null pointer dereference")._w.writeByte(((@:checkr _w ?? throw "null pointer dereference")._bits : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._bits = ((@:checkr _w ?? throw "null pointer dereference")._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            (@:checkr _w ?? throw "null pointer dereference")._nBits = ((@:checkr _w ?? throw "null pointer dereference")._nBits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return (null : stdgo.Error);
    }
}
