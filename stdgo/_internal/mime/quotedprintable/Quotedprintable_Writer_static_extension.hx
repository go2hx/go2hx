package stdgo._internal.mime.quotedprintable;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Writer_asInterface) class Writer_static_extension {
    @:keep
    static public function _flush( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        {
            var __tmp__ = _w._w.write((_w._line.__slice__(0, _w._i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        _w._i = (0 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _insertCRLF( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        _w._line[(_w._i : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
        _w._line[(_w._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        _w._i = (_w._i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return _w._flush();
    }
    @:keep
    static public function _insertSoftLineBreak( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        _w._line[(_w._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        _w._i++;
        return _w._insertCRLF();
    }
    @:keep
    static public function _checkLastByte( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        if (_w._i == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _b = (_w._line[(_w._i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        if (stdgo._internal.mime.quotedprintable.Quotedprintable__isWhitespace._isWhitespace(_b)) {
            _w._i--;
            {
                var _err = (_w._encode(_b) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _encode( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        if ((((75 : stdgo.GoInt) - _w._i : stdgo.GoInt) < (3 : stdgo.GoInt) : Bool)) {
            {
                var _err = (_w._insertSoftLineBreak() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        _w._line[(_w._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        _w._line[(_w._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
        _w._line[(_w._i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
        _w._i = (_w._i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function _write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        for (__0 => _b in _p) {
            if (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) {
                if ((_w._cr && (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                    _w._cr = false;
                    continue;
                };
                if (_b == ((13 : stdgo.GoUInt8))) {
                    _w._cr = true;
                };
                {
                    var _err = (_w._checkLastByte() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var _err = (_w._insertCRLF() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                continue;
            };
            if (_w._i == ((75 : stdgo.GoInt))) {
                {
                    var _err = (_w._insertSoftLineBreak() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            _w._line[(_w._i : stdgo.GoInt)] = _b;
            _w._i++;
            _w._cr = false;
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function close( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        {
            var _err = (_w._checkLastByte() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return _w._flush();
    }
    @:keep
    static public function write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _b in _p) {
            if ((((_b >= (33 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && (_b != (61 : stdgo.GoUInt8)) : Bool)) {
                continue;
            } else if ((stdgo._internal.mime.quotedprintable.Quotedprintable__isWhitespace._isWhitespace(_b) || (!_w.binary && (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) : Bool) : Bool)) {
                continue;
            };
            if ((_i > _n : Bool)) {
                {
                    var _err = (_w._write((_p.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
                _n = _i;
            };
            {
                var _err = (_w._encode(_b) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _n++;
        };
        if (_n == ((_p.length))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        {
            var _err = (_w._write((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (_p.length), _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
