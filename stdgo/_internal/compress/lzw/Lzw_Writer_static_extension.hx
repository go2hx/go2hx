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
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._w = __tmp__._w;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._order = __tmp__._order;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._write = __tmp__._write;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._bits = __tmp__._bits;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._nBits = __tmp__._nBits;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._width = __tmp__._width;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._litWidth = __tmp__._litWidth;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._hi = __tmp__._hi;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._overflow = __tmp__._overflow;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._savedCode = __tmp__._savedCode;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._err = __tmp__._err;
            (_w : stdgo._internal.compress.lzw.Lzw_Writer.Writer)._table = __tmp__._table;
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
        stdgo._internal.internal.Macro.controlFlow({
            var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
            if (_w._err != null) {
                return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
            };
            if ((_p.length) == ((0 : stdgo.GoInt))) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
            };
            {
                var _maxLit = ((((1 : stdgo.GoUInt8) << _w._litWidth : stdgo.GoUInt8) - (1 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt8);
                if (_maxLit != ((255 : stdgo.GoUInt8))) {
                    for (__0 => _x in _p) {
                        if ((_x > _maxLit : Bool)) {
                            _w._err = stdgo._internal.errors.Errors_new_.new_(("lzw: input byte too large for the litWidth" : stdgo.GoString));
                            return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                        };
                    };
                };
            };
            _n = (_p.length);
            var _code = (_w._savedCode : stdgo.GoUInt32);
            if (_code == ((-1u32 : stdgo.GoUInt32))) {
                var _clear = ((1u32 : stdgo.GoUInt32) << _w._litWidth : stdgo.GoUInt32);
                {
                    var _err = (_w._write(_w, _clear) : stdgo.Error);
                    if (_err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _err };
                    };
                };
                {
                    final __tmp__0 = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt32);
                    final __tmp__1 = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _code = __tmp__0;
                    _p = __tmp__1;
                };
            };
            @:label("loop") for (__0 => _x in _p) {
                var _literal = (_x : stdgo.GoUInt32);
                var _key = ((_code << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) | _literal : stdgo.GoUInt32);
                var _hash = ((((_key >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32) ^ _key : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                {
                    var __0 = (_hash : stdgo.GoUInt32), __1 = (_w._table[(_hash : stdgo.GoInt)] : stdgo.GoUInt32);
var _t = __1, _h = __0;
                    while (_t != ((0u32 : stdgo.GoUInt32))) {
                        if (_key == ((_t >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32))) {
                            _code = (_t & (4095u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                            @:jump("loop") continue;
                        };
                        _h = (((_h + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        _t = _w._table[(_h : stdgo.GoInt)];
                    };
                };
                {
                    _w._err = _w._write(_w, _code);
                    if (_w._err != null) {
                        return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                    };
                };
                _code = _literal;
                {
                    var _err1 = (_w._incHi() : stdgo.Error);
                    if (_err1 != null) {
                        if (stdgo.Go.toInterface(_err1) == (stdgo.Go.toInterface(stdgo._internal.compress.lzw.Lzw__errOutOfCodes._errOutOfCodes))) {
                            continue;
                        };
                        _w._err = _err1;
                        return { _0 : (0 : stdgo.GoInt), _1 : _w._err };
                    };
                };
                while (true) {
                    if (_w._table[(_hash : stdgo.GoInt)] == ((0u32 : stdgo.GoUInt32))) {
                        _w._table[(_hash : stdgo.GoInt)] = (((_key << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) | _w._hi : stdgo.GoUInt32);
                        break;
                    };
                    _hash = (((_hash + (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                };
            };
            _w._savedCode = _code;
            return { _0 : _n, _1 : (null : stdgo.Error) };
        });
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
