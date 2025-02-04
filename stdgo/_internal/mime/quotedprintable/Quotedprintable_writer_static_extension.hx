package stdgo._internal.mime.quotedprintable;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Writer_asInterface) class Writer_static_extension {
    @:keep
    @:tdfield
    static public function _flush( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        {
            var __tmp__ = (@:checkr _w ?? throw "null pointer dereference")._w.write(((@:checkr _w ?? throw "null pointer dereference")._line.__slice__(0, (@:checkr _w ?? throw "null pointer dereference")._i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return _err;
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._i = (0 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _insertCRLF( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i : stdgo.GoInt)] = (13 : stdgo.GoUInt8);
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
        (@:checkr _w ?? throw "null pointer dereference")._i = ((@:checkr _w ?? throw "null pointer dereference")._i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
        return @:check2r _w._flush();
    }
    @:keep
    @:tdfield
    static public function _insertSoftLineBreak( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        (@:checkr _w ?? throw "null pointer dereference")._i++;
        return @:check2r _w._insertCRLF();
    }
    @:keep
    @:tdfield
    static public function _checkLastByte( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        if ((@:checkr _w ?? throw "null pointer dereference")._i == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        var _b = ((@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
        if (stdgo._internal.mime.quotedprintable.Quotedprintable__iswhitespace._isWhitespace(_b)) {
            (@:checkr _w ?? throw "null pointer dereference")._i--;
            {
                var _err = (@:check2r _w._encode(_b) : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _encode( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _b:stdgo.GoUInt8):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        if ((((75 : stdgo.GoInt) - (@:checkr _w ?? throw "null pointer dereference")._i : stdgo.GoInt) < (3 : stdgo.GoInt) : Bool)) {
            {
                var _err = (@:check2r _w._insertSoftLineBreak() : stdgo.Error);
                if (_err != null) {
                    return _err;
                };
            };
        };
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i : stdgo.GoInt)] = (61 : stdgo.GoUInt8);
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i + (1 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)];
        (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i + (2 : stdgo.GoInt) : stdgo.GoInt)] = ("0123456789ABCDEF" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
        (@:checkr _w ?? throw "null pointer dereference")._i = ((@:checkr _w ?? throw "null pointer dereference")._i + ((3 : stdgo.GoInt)) : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        for (__0 => _b in _p) {
            if (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) {
                if (((@:checkr _w ?? throw "null pointer dereference")._cr && (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                    (@:checkr _w ?? throw "null pointer dereference")._cr = false;
                    continue;
                };
                if (_b == ((13 : stdgo.GoUInt8))) {
                    (@:checkr _w ?? throw "null pointer dereference")._cr = true;
                };
                {
                    var _err = (@:check2r _w._checkLastByte() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                {
                    var _err = (@:check2r _w._insertCRLF() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                continue;
            };
            if ((@:checkr _w ?? throw "null pointer dereference")._i == ((75 : stdgo.GoInt))) {
                {
                    var _err = (@:check2r _w._insertSoftLineBreak() : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            };
            (@:checkr _w ?? throw "null pointer dereference")._line[((@:checkr _w ?? throw "null pointer dereference")._i : stdgo.GoInt)] = _b;
            (@:checkr _w ?? throw "null pointer dereference")._i++;
            (@:checkr _w ?? throw "null pointer dereference")._cr = false;
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function close( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>):stdgo.Error {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        {
            var _err = (@:check2r _w._checkLastByte() : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        return @:check2r _w._flush();
    }
    @:keep
    @:tdfield
    static public function write( _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_writer.Writer> = _w;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _b in _p) {
            if ((((_b >= (33 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && (_b != (61 : stdgo.GoUInt8)) : Bool)) {
                continue;
            } else if ((stdgo._internal.mime.quotedprintable.Quotedprintable__iswhitespace._isWhitespace(_b) || (!(@:checkr _w ?? throw "null pointer dereference").binary && (((_b == (10 : stdgo.GoUInt8)) || (_b == (13 : stdgo.GoUInt8)) : Bool)) : Bool) : Bool)) {
                continue;
            };
            if ((_i > _n : Bool)) {
                {
                    var _err = (@:check2r _w._write((_p.__slice__(_n, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
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
                var _err = (@:check2r _w._encode(_b) : stdgo.Error);
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
            var _err = (@:check2r _w._write((_p.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Error);
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
