package stdgo._internal.mime.quotedprintable;
@:keep @:allow(stdgo._internal.mime.quotedprintable.Quotedprintable.Reader_asInterface) class Reader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.mime.quotedprintable.Quotedprintable_reader.Reader> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((@:checkr _r ?? throw "null pointer dereference")._line.length) == ((0 : stdgo.GoInt))) {
                if ((@:checkr _r ?? throw "null pointer dereference")._rerr != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (@:checkr _r ?? throw "null pointer dereference")._rerr };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                {
                    var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._br.readSlice((10 : stdgo.GoUInt8));
                    (@:checkr _r ?? throw "null pointer dereference")._line = @:tmpset0 __tmp__._0;
                    (@:checkr _r ?? throw "null pointer dereference")._rerr = @:tmpset0 __tmp__._1;
                };
                var _hasLF = (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw "null pointer dereference")._line, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) : Bool);
                var _hasCR = (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw "null pointer dereference")._line, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool);
                var _wholeLine = (@:checkr _r ?? throw "null pointer dereference")._line;
                (@:checkr _r ?? throw "null pointer dereference")._line = stdgo._internal.bytes.Bytes_trimrightfunc.trimRightFunc(_wholeLine, stdgo._internal.mime.quotedprintable.Quotedprintable__isqpdiscardwhitespace._isQPDiscardWhitespace);
                if (stdgo._internal.bytes.Bytes_hassuffix.hasSuffix((@:checkr _r ?? throw "null pointer dereference")._line, stdgo._internal.mime.quotedprintable.Quotedprintable__softsuffix._softSuffix)) {
                    var _rightStripped = (_wholeLine.__slice__(((@:checkr _r ?? throw "null pointer dereference")._line.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _r ?? throw "null pointer dereference")._line = ((@:checkr _r ?? throw "null pointer dereference")._line.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__lf._lf) && !stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_rightStripped, stdgo._internal.mime.quotedprintable.Quotedprintable__crlf._crlf) : Bool) && !((((_rightStripped.length) == ((0 : stdgo.GoInt)) && (((@:checkr _r ?? throw "null pointer dereference")._line.length) > (0 : stdgo.GoInt) : Bool) : Bool) && (stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._rerr) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) : Bool)) {
                        (@:checkr _r ?? throw "null pointer dereference")._rerr = stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid bytes after =: %q" : stdgo.GoString), stdgo.Go.toInterface(_rightStripped));
                    };
                } else if (_hasLF) {
                    if (_hasCR) {
                        (@:checkr _r ?? throw "null pointer dereference")._line = ((@:checkr _r ?? throw "null pointer dereference")._line.__append__((13 : stdgo.GoUInt8), (10 : stdgo.GoUInt8)));
                    } else {
                        (@:checkr _r ?? throw "null pointer dereference")._line = ((@:checkr _r ?? throw "null pointer dereference")._line.__append__((10 : stdgo.GoUInt8)));
                    };
                };
                continue;
            };
            var _b = ((@:checkr _r ?? throw "null pointer dereference")._line[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_b == ((61 : stdgo.GoUInt8))) {
                        {
                            var __tmp__ = stdgo._internal.mime.quotedprintable.Quotedprintable__readhexbyte._readHexByte(((@:checkr _r ?? throw "null pointer dereference")._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                            _b = @:tmpset0 __tmp__._0;
                            _err = @:tmpset0 __tmp__._1;
                        };
                        if (_err != null) {
                            if ((((((@:checkr _r ?? throw "null pointer dereference")._line.length) >= (2 : stdgo.GoInt) : Bool) && (@:checkr _r ?? throw "null pointer dereference")._line[(1 : stdgo.GoInt)] != ((13 : stdgo.GoUInt8)) : Bool) && ((@:checkr _r ?? throw "null pointer dereference")._line[(1 : stdgo.GoInt)] != (10 : stdgo.GoUInt8)) : Bool)) {
                                _b = (61 : stdgo.GoUInt8);
                                break;
                            };
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                                _n = __tmp__._0;
                                _err = __tmp__._1;
                                __tmp__;
                            };
                        };
                        (@:checkr _r ?? throw "null pointer dereference")._line = ((@:checkr _r ?? throw "null pointer dereference")._line.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        break;
                    } else if (((_b == ((9 : stdgo.GoUInt8)) || _b == ((13 : stdgo.GoUInt8)) : Bool) || (_b == (10 : stdgo.GoUInt8)) : Bool)) {
                        break;
                        break;
                    } else if ((_b >= (128 : stdgo.GoUInt8) : Bool)) {
                        break;
                        break;
                    } else if (((_b < (32 : stdgo.GoUInt8) : Bool) || (_b > (126 : stdgo.GoUInt8) : Bool) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("quotedprintable: invalid unescaped byte 0x%02x in body" : stdgo.GoString), stdgo.Go.toInterface(_b)) };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                        break;
                    };
                    break;
                };
            };
            _p[(0 : stdgo.GoInt)] = _b;
            _p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw "null pointer dereference")._line = ((@:checkr _r ?? throw "null pointer dereference")._line.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _n++;
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
}
