package stdgo._internal.mime.quotedprintable;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_Reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((_r._line.length) == ((0 : stdgo.GoInt))) {
                if (_r._rerr != null) {
                    return { _0 : _n, _1 : _r._rerr };
                };
                {
                    var __tmp__ = _r._br.readSlice((10 : stdgo.GoUInt8));
                    _r._line = __tmp__._0;
                    _r._rerr = __tmp__._1;
                };
                var _hasLF = (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_r._line, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) : Bool);
                var _hasCR = (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_r._line, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool);
                var _wholeLine = _r._line;
                _r._line = stdgo._internal.bytes.Bytes_trimRightFunc.trimRightFunc(_wholeLine, stdgo._internal.mime.quotedprintable.Quotedprintable__isQPDiscardWhitespace._isQPDiscardWhitespace);
                if (stdgo._internal.bytes.Bytes_hasSuffix.hasSuffix(_r._line, stdgo._internal.mime.quotedprintable.Quotedprintable__softSuffix._softSuffix)) {
                    var _rightStripped = (_wholeLine.__slice__((_r._line.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    _r._line = (_r._line.__slice__(0, ((_r._line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((!stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) && !stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool) && !((((_rightStripped.length) == ((0 : stdgo.GoInt)) && ((_r._line.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.toInterface(_r._rerr) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof)) : Bool)) : Bool)) {
                        _r._rerr = stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid bytes after =: %q" : stdgo.GoString), stdgo.Go.toInterface(_rightStripped));
                    };
                } else if (_hasLF) {
                    if (_hasCR) {
                        _r._line = (_r._line.__append__((13 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
                    } else {
                        _r._line = (_r._line.__append__((10 : stdgo.GoUInt8)));
                    };
                };
                continue;
            };
            var _b = (_r._line[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_b == ((61 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__readHexByte._readHexByte((_r._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _b = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            if (((((_r._line.length) >= (2 : stdgo.GoInt) : Bool) && _r._line[(1 : stdgo.GoInt)] != ((13 : stdgo.GoUInt8)) : Bool) && (_r._line[(1 : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                                _b = (61 : stdgo.GoUInt8);
                                break;
                            };
                            return { _0 : _n, _1 : _err };
                        };
                        _r._line = (_r._line.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                    } else if (((_b == ((9 : stdgo.GoUInt8)) || _b == ((13 : stdgo.GoUInt8)) : Bool) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                        break;
                        break;
                    } else if ((_b >= (128 : stdgo.GoUInt8) : Bool)) {
                        break;
                        break;
                    } else if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return { _0 : _n, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid unescaped byte 0x%02x in body" : stdgo.GoString), stdgo.Go.toInterface(_b)) };
                        break;
                    };
                    break;
                };
            };
            _p[(0 : stdgo.GoInt)] = _b;
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _r._line = (_r._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n++;
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
