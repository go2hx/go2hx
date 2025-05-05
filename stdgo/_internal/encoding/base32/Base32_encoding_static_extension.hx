package stdgo._internal.encoding.base32;
@:keep @:allow(stdgo._internal.encoding.base32.Base32.Encoding_asInterface) class Encoding_static_extension {
    @:keep
    @:tdfield
    static public function decodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L547"
        if ((@:checkr _enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L548"
            return ((_n * (5 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L551"
        return ((_n / (8 : stdgo.GoInt) : stdgo.GoInt) * (5 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function decodeString( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        var _buf = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var _l = (stdgo._internal.encoding.base32.Base32__stripnewlines._stripNewlines(_buf, _buf) : stdgo.GoInt);
        var __tmp__ = _enc._decode(_buf, (_buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, __0:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L393"
        return { _0 : (_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function decode( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_src.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _l = (stdgo._internal.encoding.base32.Base32__stripnewlines._stripNewlines(_buf, _src) : stdgo.GoInt);
        {
            var __tmp__ = _enc._decode(_dst, (_buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L385"
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _decode( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        var _n = (0 : stdgo.GoInt), _end = false, _err = (null : stdgo.Error);
        (@:checkr _enc ?? throw "null pointer dereference")._decodeMap;
        var _dsti = (0 : stdgo.GoInt);
        var _olen = (_src.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L300"
        while ((((_src.length) > (0 : stdgo.GoInt) : Bool) && !_end : Bool)) {
            var _dbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
            var _dlen = (8 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L305"
            {
                var _j = (0 : stdgo.GoInt);
                while ((_j < (8 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L307"
                    if ((_src.length) == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L308"
                        if ((@:checkr _enc ?? throw "null pointer dereference")._padChar != ((-1 : stdgo.GoInt32))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L310"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : false, _2 : stdgo.Go.asInterface((((_olen - (_src.length) : stdgo.GoInt) - _j : stdgo.GoInt) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                                _n = __tmp__._0;
                                _end = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        {
                            final __tmp__0 = _j;
                            final __tmp__1 = true;
                            _dlen = @:binopAssign __tmp__0;
                            _end = @:binopAssign __tmp__1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L314"
                        break;
                    };
                    var _in = (_src[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                    _src = (_src.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L318"
                    if (((_in == (((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8)) && (_j >= (2 : stdgo.GoInt) : Bool) : Bool) && ((_src.length) < (8 : stdgo.GoInt) : Bool) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L320"
                        if ((((_src.length) + _j : stdgo.GoInt) < (7 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L322"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : false, _2 : stdgo.Go.asInterface((_olen : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                                _n = __tmp__._0;
                                _end = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L324"
                        {
                            var _k = (0 : stdgo.GoInt);
                            while ((_k < ((7 : stdgo.GoInt) - _j : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L325"
                                if ((((_src.length) > _k : Bool) && (_src[(_k : stdgo.GoInt)] != ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L327"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : false, _2 : stdgo.Go.asInterface(((((_olen - (_src.length) : stdgo.GoInt) + _k : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                                        _n = __tmp__._0;
                                        _end = __tmp__._1;
                                        _err = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                _k++;
                            };
                        };
                        {
                            final __tmp__0 = _j;
                            final __tmp__1 = true;
                            _dlen = @:binopAssign __tmp__0;
                            _end = @:binopAssign __tmp__1;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L336"
                        if (((_dlen == ((1 : stdgo.GoInt)) || _dlen == ((3 : stdgo.GoInt)) : Bool) || (_dlen == (6 : stdgo.GoInt)) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L337"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : false, _2 : stdgo.Go.asInterface((((_olen - (_src.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                                _n = __tmp__._0;
                                _end = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L339"
                        break;
                    };
                    _dbuf[(_j : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_in : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L342"
                    if (_dbuf[(_j : stdgo.GoInt)] == ((255 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L343"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : false, _2 : stdgo.Go.asInterface((((_olen - (_src.length) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) };
                            _n = __tmp__._0;
                            _end = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L345"
                    _j++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L350"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _dlen;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (8 : stdgo.GoInt)))) {
                            _dst[(_dsti + (4 : stdgo.GoInt) : stdgo.GoInt)] = ((_dbuf[(6 : stdgo.GoInt)] << (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | _dbuf[(7 : stdgo.GoInt)] : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L353"
                            _n++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L354"
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (7 : stdgo.GoInt)))) {
                            _dst[(_dsti + (3 : stdgo.GoInt) : stdgo.GoInt)] = (((_dbuf[(4 : stdgo.GoInt)] << (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (_dbuf[(5 : stdgo.GoInt)] << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8) | (_dbuf[(6 : stdgo.GoInt)] >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L357"
                            _n++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L358"
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (5 : stdgo.GoInt)))) {
                            _dst[(_dsti + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((_dbuf[(3 : stdgo.GoInt)] << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (_dbuf[(4 : stdgo.GoInt)] >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L361"
                            _n++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L362"
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                            _dst[(_dsti + (1 : stdgo.GoInt) : stdgo.GoInt)] = (((_dbuf[(1 : stdgo.GoInt)] << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (_dbuf[(2 : stdgo.GoInt)] << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8) | (_dbuf[(3 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L365"
                            _n++;
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L366"
                            @:fallthrough {
                                __switchIndex__ = 4;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _dst[(_dsti + (0 : stdgo.GoInt) : stdgo.GoInt)] = ((_dbuf[(0 : stdgo.GoInt)] << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) | (_dbuf[(1 : stdgo.GoInt)] >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L369"
                            _n++;
                            break;
                            break;
                        };
                    };
                    break;
                };
            };
            _dsti = (_dsti + ((5 : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L373"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _n, _1 : _end, _2 : (null : stdgo.Error) };
            _n = __tmp__._0;
            _end = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function encodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L273"
        if ((@:checkr _enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L274"
            return ((((_n * (8 : stdgo.GoInt) : stdgo.GoInt) + (4 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L276"
        return ((((_n + (4 : stdgo.GoInt) : stdgo.GoInt)) / (5 : stdgo.GoInt) : stdgo.GoInt) * (8 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function encodeToString( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_enc.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L189"
        _enc.encode(_buf, _src);
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L190"
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> = _enc;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L112"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L117"
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = (_src.length);
                        if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                            _b[(6 : stdgo.GoInt)] = (_b[(6 : stdgo.GoInt)] | ((((_src[(3 : stdgo.GoInt)] << (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                            _b[(5 : stdgo.GoInt)] = (((_src[(3 : stdgo.GoInt)] >> (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            _b[(4 : stdgo.GoInt)] = (_src[(3 : stdgo.GoInt)] >> (7i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L126"
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                            _b[(4 : stdgo.GoInt)] = (_b[(4 : stdgo.GoInt)] | ((((_src[(2 : stdgo.GoInt)] << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                            _b[(3 : stdgo.GoInt)] = (((_src[(2 : stdgo.GoInt)] >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L130"
                            @:fallthrough {
                                __switchIndex__ = 3;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                            _b[(3 : stdgo.GoInt)] = (_b[(3 : stdgo.GoInt)] | ((((_src[(1 : stdgo.GoInt)] << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                            _b[(2 : stdgo.GoInt)] = (((_src[(1 : stdgo.GoInt)] >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            _b[(1 : stdgo.GoInt)] = (((_src[(1 : stdgo.GoInt)] >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L135"
                            @:fallthrough {
                                __switchIndex__ = 4;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                            _b[(1 : stdgo.GoInt)] = (_b[(1 : stdgo.GoInt)] | ((((_src[(0 : stdgo.GoInt)] << (2i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) & (31 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt8);
                            _b[(0 : stdgo.GoInt)] = (_src[(0 : stdgo.GoInt)] >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                            break;
                            break;
                        } else {
                            _b[(7 : stdgo.GoInt)] = (_src[(4 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8);
                            _b[(6 : stdgo.GoInt)] = (_src[(4 : stdgo.GoInt)] >> (5i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L121"
                            @:fallthrough {
                                __switchIndex__ = 1;
                                __run__ = true;
                                continue;
                            };
                        };
                    };
                    break;
                };
            };
            var _size = (_dst.length : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L143"
            if ((_size >= (8 : stdgo.GoInt) : Bool)) {
                _dst[(0 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(0 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(1 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(1 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(2 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(2 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(3 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(3 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(4 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(4 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(5 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(5 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(6 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(6 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                _dst[(7 : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(7 : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L154"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < _size : Bool)) {
                        _dst[(_i : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_b[(_i : stdgo.GoInt)] & (31 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)];
                        _i++;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L160"
            if (((_src.length) < (5 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L161"
                if ((@:checkr _enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L162"
                    break;
                };
                _dst[(7 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L166"
                if (((_src.length) < (4 : stdgo.GoInt) : Bool)) {
                    _dst[(6 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                    _dst[(5 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L169"
                    if (((_src.length) < (3 : stdgo.GoInt) : Bool)) {
                        _dst[(4 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L171"
                        if (((_src.length) < (2 : stdgo.GoInt) : Bool)) {
                            _dst[(3 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                            _dst[(2 : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                        };
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L178"
                break;
            };
            _src = (_src.__slice__((5 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _dst = (_dst.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function withPadding( _enc:stdgo._internal.encoding.base32.Base32_encoding.Encoding, _padding:stdgo.GoInt32):stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding> {
        @:recv var _enc:stdgo._internal.encoding.base32.Base32_encoding.Encoding = _enc?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L87"
        if (((_padding == ((13 : stdgo.GoInt32)) || _padding == ((10 : stdgo.GoInt32)) : Bool) || (_padding > (255 : stdgo.GoInt32) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L88"
            throw stdgo.Go.toInterface(("invalid padding" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L91"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_enc._encode.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L92"
                if ((_enc._encode[(_i : stdgo.GoInt)] : stdgo.GoInt32) == (_padding)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L93"
                    throw stdgo.Go.toInterface(("padding contained in alphabet" : stdgo.GoString));
                };
                _i++;
            };
        };
        _enc._padChar = _padding;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base32/base32.go#L98"
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_encoding.Encoding>);
    }
}
