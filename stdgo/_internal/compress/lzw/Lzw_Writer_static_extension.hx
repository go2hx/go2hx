package stdgo._internal.compress.lzw;
@:keep @:allow(stdgo._internal.compress.lzw.Lzw.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _init( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, _dst:stdgo._internal.io.Io_Writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        {
            final __value__ = _order;
            if (__value__ == ((0 : stdgo._internal.compress.lzw.Lzw_Order.Order))) {
                _w._write = stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeLSB;
            } else if (__value__ == ((1 : stdgo._internal.compress.lzw.Lzw_Order.Order))) {
                _w._write = stdgo._internal.compress.lzw.Lzw_Writer_static_extension.Writer_static_extension._writeMSB;
            } else {
                _w._err = stdgo._internal.errors.Errors_new_.new_(("lzw: unknown order" : stdgo.GoString));
                return;
            };
        };
        if (((_litWidth < (2 : stdgo.GoInt) : Bool) || ((8 : stdgo.GoInt) < _litWidth : Bool) : Bool)) {
            _w._err = stdgo._internal.fmt.Fmt_errorf.errorf(("lzw: litWidth %d out of range" : stdgo.GoString), stdgo.Go.toInterface(_litWidth));
            return;
        };
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_dst) : stdgo._internal.compress.lzw.Lzw_T_writer.T_writer)) : stdgo._internal.compress.lzw.Lzw_T_writer.T_writer), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.compress.lzw.Lzw_T_writer.T_writer), _1 : false };
        }, _bw = __tmp__._0, _ok = __tmp__._1;
        if ((!_ok && (_dst != null) : Bool)) {
            _bw = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newWriter.newWriter(_dst));
        };
        _w._w = _bw;
        var _lw = (_litWidth : stdgo.GoUInt);
        _w._order = _order;
        _w._width = ((1u32 : stdgo.GoUInt) + _lw : stdgo.GoUInt);
        _w._litWidth = _lw;
        _w._hi = (((1u32 : stdgo.GoUInt32) << _lw : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        _w._overflow = ((1u32 : stdgo.GoUInt32) << ((_lw + (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt32);
        _w._savedCode = (-1u32 : stdgo.GoUInt32);
    }
    @:keep
    static public function reset( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, _dst:stdgo._internal.io.Io_Writer.Writer, _order:stdgo._internal.compress.lzw.Lzw_Order.Order, _litWidth:stdgo.GoInt):Void {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        {
            var __tmp__ = (new stdgo._internal.compress.lzw.Lzw_Writer.Writer() : stdgo._internal.compress.lzw.Lzw_Writer.Writer);
            var x = (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer);
            x._w = __tmp__._w;
            x._order = __tmp__._order;
            x._write = __tmp__._write;
            x._bits = __tmp__._bits;
            x._nBits = __tmp__._nBits;
            x._width = __tmp__._width;
            x._litWidth = __tmp__._litWidth;
            x._hi = __tmp__._hi;
            x._overflow = __tmp__._overflow;
            x._savedCode = __tmp__._savedCode;
            x._err = __tmp__._err;
            x._table = __tmp__._table;
        };
        _w._init(_dst, _order, _litWidth);
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        if (_w._err != null) {
            if (stdgo.Go.toInterface(_w._err) == (stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__errClosed._errClosed))) {
                return (null : stdgo.Error);
            };
            return _w._err;
        };
        _w._err = stdgo._internal.compress.lzw.Lzw__errClosed._errClosed;
        if (_w._savedCode != ((-1u32 : stdgo.GoUInt32))) {
            {
                var _err = (_w._write(_w, _w._savedCode) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            {
                var _err = (_w._incHi() : stdgo.Error);
                if (((_err != null) && (stdgo.Go.toInterface(_err) != stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__errOutOfCodes._errOutOfCodes)) : Bool)) {
                    return _err;
                };
            };
        } else {
            var _clear = ((1u32 : stdgo.GoUInt32) << _w._litWidth : stdgo.GoUInt32);
            {
                var _err = (_w._write(_w, _clear) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        var _eof = (((1u32 : stdgo.GoUInt32) << _w._litWidth : stdgo.GoUInt32) + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        {
            var _err = (_w._write(_w, _eof) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        if ((_w._nBits > (0u32 : stdgo.GoUInt) : Bool)) {
            if (_w._order == ((1 : stdgo._internal.compress.lzw.Lzw_Order.Order))) {
                _w._bits = (_w._bits >> ((24i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            };
            {
                var _err = (_w._w.writeByte((_w._bits : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return _w._w.flush();
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _literal_3655049:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3654214:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _i_3654219_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _maxLit_3654152:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _t_3655250:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _key_3655072:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3655032:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err_3654815:stdgo.Error = (null : stdgo.Error);
        var _code_3654362:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _h_3655247:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _i_3655037_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _clear_3654777:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _err1_3655751:stdgo.Error = (null : stdgo.Error);
        var _hash_3655205:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (_w._err != null) {
                        _gotoNext = 3654088i32;
                    } else {
                        _gotoNext = 3654112i32;
                    };
                } else if (__value__ == (3654088i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3654112i32;
                } else if (__value__ == (3654112i32)) {
                    if ((_p.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3654127i32;
                    } else {
                        _gotoNext = 3654149i32;
                    };
                } else if (__value__ == (3654127i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3654149i32;
                } else if (__value__ == (3654149i32)) {
                    {
                        _maxLit_3654152 = (((1 : stdgo.GoUInt8) << _w._litWidth : stdgo.GoUInt8) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        if (_maxLit_3654152 != ((255 : stdgo.GoUInt8))) {
                            _gotoNext = 3654203i32;
                        } else {
                            _gotoNext = 3654350i32;
                        };
                    };
                } else if (__value__ == (3654203i32)) {
                    if ((0i32 : stdgo.GoInt) < (_p.length)) {
                        _gotoNext = 3654343i32;
                    } else {
                        _gotoNext = 3654350i32;
                    };
                } else if (__value__ == (3654211i32)) {
                    _i_3654219_0++;
                    _gotoNext = 3654344i32;
                } else if (__value__ == (3654227i32)) {
                    _x_3654214 = _p[(_i_3654219_0 : stdgo.GoInt)];
                    if ((_x_3654214 > _maxLit_3654152 : Bool)) {
                        _gotoNext = 3654246i32;
                    } else {
                        _gotoNext = 3654211i32;
                    };
                } else if (__value__ == (3654246i32)) {
                    _w._err = stdgo._internal.errors.Errors_new_.new_(("lzw: input byte too large for the litWidth" : stdgo.GoString));
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3654211i32;
                } else if (__value__ == (3654343i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _p[(0i32 : stdgo.GoInt)];
                        _i_3654219_0 = __tmp__0;
                        _x_3654214 = __tmp__1;
                    };
                    _gotoNext = 3654344i32;
                } else if (__value__ == (3654344i32)) {
                    if (_i_3654219_0 < (_p.length)) {
                        _gotoNext = 3654227i32;
                    } else {
                        _gotoNext = 3654350i32;
                    };
                } else if (__value__ == (3654350i32)) {
                    _n = (_p.length);
                    _code_3654362 = _w._savedCode;
                    if (_code_3654362 == ((-1u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3654406i32;
                    } else {
                        _gotoNext = 3655018i32;
                    };
                } else if (__value__ == (3654406i32)) {
                    _clear_3654777 = ((1u32 : stdgo.GoUInt32) << _w._litWidth : stdgo.GoUInt32);
                    {
                        _err_3654815 = _w._write(_w, _clear_3654777);
                        if (_err_3654815 != null) {
                            _gotoNext = 3654852i32;
                        } else {
                            _gotoNext = 3654985i32;
                        };
                    };
                } else if (__value__ == (3654852i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _err_3654815 };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3654985i32;
                } else if (__value__ == (3654985i32)) {
                    {
                        final __tmp__0 = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
                        final __tmp__1 = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _code_3654362 = __tmp__0;
                        _p = __tmp__1;
                    };
                    _gotoNext = 3655018i32;
                } else if (__value__ == (3655018i32)) {
                    _gotoNext = 3655018i32;
                    if ((0i32 : stdgo.GoInt) < (_p.length)) {
                        _gotoNext = 3656081i32;
                    } else {
                        _gotoNext = 3656085i32;
                    };
                } else if (__value__ == (3655029i32)) {
                    _i_3655037_0++;
                    _gotoNext = 3656082i32;
                } else if (__value__ == (3655045i32)) {
                    _x_3655032 = _p[(_i_3655037_0 : stdgo.GoInt)];
                    _literal_3655049 = (_x_3655032 : stdgo.GoUInt32);
                    _key_3655072 = ((_code_3654362 << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _literal_3655049 : stdgo.GoUInt32);
                    _hash_3655205 = ((((_key_3655072 >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) ^ _key_3655072 : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    {
                        final __tmp__0 = _hash_3655205;
                        final __tmp__1 = _w._table[(_hash_3655205 : stdgo.GoInt)];
                        _h_3655247 = __tmp__0;
                        _t_3655250 = __tmp__1;
                    };
                    _gotoNext = 3655243i32;
                } else if (__value__ == (3655243i32)) {
                    if (_t_3655250 != ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3655295i32;
                    } else {
                        _gotoNext = 3655516i32;
                    };
                } else if (__value__ == (3655295i32)) {
                    if (_key_3655072 == ((_t_3655250 >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                        _gotoNext = 3655316i32;
                    } else {
                        _gotoNext = 3655367i32;
                    };
                } else if (__value__ == (3655316i32)) {
                    _code_3654362 = (_t_3655250 & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    stdgo._internal.compress.lzw.Lzw__i_3655037._i_3655037++;
                    _gotoNext = 3656082i32;
                } else if (__value__ == (3655367i32)) {
                    _h_3655247 = (((_h_3655247 + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _t_3655250 = _w._table[(_h_3655247 : stdgo.GoInt)];
                    _gotoNext = 3655243i32;
                } else if (__value__ == (3655516i32)) {
                    {
                        _w._err = _w._write(_w, _code_3654362);
                        if (_w._err != null) {
                            _gotoNext = 3655558i32;
                        } else {
                            _gotoNext = 3655585i32;
                        };
                    };
                } else if (__value__ == (3655558i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3655585i32;
                } else if (__value__ == (3655585i32)) {
                    _code_3654362 = _literal_3655049;
                    {
                        _err1_3655751 = _w._incHi();
                        if (_err1_3655751 != null) {
                            _gotoNext = 3655782i32;
                        } else {
                            _gotoNext = 3655946i32;
                        };
                    };
                } else if (__value__ == (3655782i32)) {
                    if (stdgo.Go.toInterface(_err1_3655751) == (stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__errOutOfCodes._errOutOfCodes))) {
                        _gotoNext = 3655812i32;
                    } else {
                        _gotoNext = 3655835i32;
                    };
                } else if (__value__ == (3655812i32)) {
                    _i_3655037_0++;
                    _gotoNext = 3656082i32;
                } else if (__value__ == (3655835i32)) {
                    _w._err = _err1_3655751;
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3655946i32;
                } else if (__value__ == (3655946i32)) {
                    var __blank__ = 0i32;
                    _gotoNext = 3655946i32;
                    if (true) {
                        _gotoNext = 3655950i32;
                    } else {
                        _gotoNext = 3655029i32;
                    };
                } else if (__value__ == (3655950i32)) {
                    if (_w._table[(_hash_3655205 : stdgo.GoInt)] == ((0u32 : stdgo.GoUInt32))) {
                        _gotoNext = 3655988i32;
                    } else {
                        _gotoNext = 3656047i32;
                    };
                } else if (__value__ == (3655988i32)) {
                    _w._table[(_hash_3655205 : stdgo.GoInt)] = (((_key_3655072 << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | _w._hi : stdgo.GoUInt32);
                    _gotoNext = 3655029i32;
                } else if (__value__ == (3656047i32)) {
                    _hash_3655205 = (((_hash_3655205 + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    _gotoNext = 3655946i32;
                } else if (__value__ == (3656081i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _p[(0i32 : stdgo.GoInt)];
                        _i_3655037_0 = __tmp__0;
                        _x_3655032 = __tmp__1;
                    };
                    _gotoNext = 3656082i32;
                } else if (__value__ == (3656082i32)) {
                    if (_i_3655037_0 < (_p.length)) {
                        _gotoNext = 3655045i32;
                    } else {
                        _gotoNext = 3656085i32;
                    };
                } else if (__value__ == (3656085i32)) {
                    _w._savedCode = _code_3654362;
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
    static public function _incHi( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        _w._hi++;
        if (_w._hi == (_w._overflow)) {
            _w._width++;
            _w._overflow = (_w._overflow << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        };
        if (_w._hi == ((4095u32 : stdgo.GoUInt32))) {
            var _clear = ((1u32 : stdgo.GoUInt32) << _w._litWidth : stdgo.GoUInt32);
            {
                var _err = (_w._write(_w, _clear) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _w._width = (_w._litWidth + (1u32 : stdgo.GoUInt) : stdgo.GoUInt);
            _w._hi = (_clear + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _w._overflow = (_clear << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
            for (_i => _ in _w._table) {
                _w._table[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
            };
            return stdgo._internal.compress.lzw.Lzw__errOutOfCodes._errOutOfCodes;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _writeMSB( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, _c:stdgo.GoUInt32):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        _w._bits = (_w._bits | ((_c << ((((32u32 : stdgo.GoUInt) - _w._width : stdgo.GoUInt) - _w._nBits : stdgo.GoUInt)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _w._nBits = (_w._nBits + (_w._width) : stdgo.GoUInt);
        while ((_w._nBits >= (8u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = (_w._w.writeByte(((_w._bits >> (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _w._bits = (_w._bits << ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _w._nBits = (_w._nBits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _writeLSB( _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer>, _c:stdgo.GoUInt32):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.compress.lzw.Lzw_Writer.Writer> = _w;
        _w._bits = (_w._bits | ((_c << _w._nBits : stdgo.GoUInt32)) : stdgo.GoUInt32);
        _w._nBits = (_w._nBits + (_w._width) : stdgo.GoUInt);
        while ((_w._nBits >= (8u32 : stdgo.GoUInt) : Bool)) {
            {
                var _err = (_w._w.writeByte((_w._bits : stdgo.GoUInt8)) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
            _w._bits = (_w._bits >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
            _w._nBits = (_w._nBits - ((8u32 : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        return (null : stdgo.Error);
    }
}
