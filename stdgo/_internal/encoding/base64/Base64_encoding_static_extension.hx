package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.Encoding_asInterface) class Encoding_static_extension {
    @:keep
    @:tdfield
    static public function decodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        if ((@:checkr _enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            return ((_n * (6 : stdgo.GoInt) : stdgo.GoInt) / (8 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((_n / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function decode( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Error) };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var __blank__ = (@:checkr _enc ?? throw "null pointer dereference")._decodeMap;
        var _si = (0 : stdgo.GoInt);
        while (((false && (((_src.length) - _si : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (8 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (8 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.base64.Base64__assemble64._assemble64((@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(4 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(5 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(6 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(7 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt64 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint64((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((6 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((8 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = @:check2r _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = @:tmpset0 __tmp__._0;
                        _ninc = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        while (((((_src.length) - _si : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) && (((_dst.length) - _n : stdgo.GoInt) >= (4 : stdgo.GoInt) : Bool) : Bool)) {
            var _src2 = (_src.__slice__(_si, (_si + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            {
                var __tmp__ = stdgo._internal.encoding.base64.Base64__assemble32._assemble32((@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(0 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(1 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(2 : stdgo.GoInt)] : stdgo.GoInt)], (@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_src2[(3 : stdgo.GoInt)] : stdgo.GoInt)]), _dn:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.putUint32((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _dn);
                    _n = (_n + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    _si = (_si + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                } else {
                    var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
                    {
                        var __tmp__ = @:check2r _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                        _si = @:tmpset0 __tmp__._0;
                        _ninc = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    _n = (_n + (_ninc) : stdgo.GoInt);
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        while ((_si < (_src.length) : Bool)) {
            var _ninc:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = @:check2r _enc._decodeQuantum((_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>), _src, _si);
                _si = @:tmpset0 __tmp__._0;
                _ninc = @:tmpset0 __tmp__._1;
                _err = @:tmpset0 __tmp__._2;
            };
            _n = (_n + (_ninc) : stdgo.GoInt);
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
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
            _n = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function decodeString( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r _enc.decodedLen((_s.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = @:check2r _enc.decode(_dbuf, (_s : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return { _0 : (_dbuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
    }
    @:keep
    @:tdfield
    static public function _decodeQuantum( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _nsi = (0 : stdgo.GoInt), _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _dbuf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        var _dlen = (4 : stdgo.GoInt);
        var __blank__ = (@:checkr _enc ?? throw "null pointer dereference")._decodeMap;
        {
            var _j = (0 : stdgo.GoInt);
            while ((_j < (_dbuf.length) : Bool)) {
                if ((_src.length) == (_si)) {
                    if (_j == ((0 : stdgo.GoInt))) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : (null : stdgo.Error) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    } else if (_j == ((1 : stdgo.GoInt)) || (@:checkr _enc ?? throw "null pointer dereference")._padChar != ((-1 : stdgo.GoInt32))) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - _j : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    };
                    _dlen = _j;
                    break;
                };
var _in = (_src[(_si : stdgo.GoInt)] : stdgo.GoUInt8);
_si++;
var _out = ((@:checkr _enc ?? throw "null pointer dereference")._decodeMap[(_in : stdgo.GoInt)] : stdgo.GoUInt8);
if (_out != ((255 : stdgo.GoUInt8))) {
                    _dbuf[(_j : stdgo.GoInt)] = _out;
                    {
                        _j++;
                        continue;
                    };
                };
if (((_in == (10 : stdgo.GoUInt8)) || (_in == (13 : stdgo.GoUInt8)) : Bool)) {
                    _j--;
                    {
                        _j++;
                        continue;
                    };
                };
if ((_in : stdgo.GoInt32) != ((@:checkr _enc ?? throw "null pointer dereference")._padChar)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                        _nsi = __tmp__._0;
                        _n = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
{
                    final __value__ = _j;
                    if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                            _nsi = __tmp__._0;
                            _n = __tmp__._1;
                            _err = __tmp__._2;
                            __tmp__;
                        };
                    } else if (__value__ == ((2 : stdgo.GoInt))) {
                        while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            _si++;
                        };
                        if (_si == ((_src.length))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface((_src.length : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        if ((_src[(_si : stdgo.GoInt)] : stdgo.GoInt32) != ((@:checkr _enc ?? throw "null pointer dereference")._padChar)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        _si++;
                    };
                };
while (((_si < (_src.length) : Bool) && (((_src[(_si : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) || (_src[(_si : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _si++;
                };
if ((_si < (_src.length) : Bool)) {
                    _err = stdgo.Go.asInterface((_si : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError));
                };
_dlen = _j;
break;
                _j++;
            };
        };
        var _val = (((((_dbuf[(0 : stdgo.GoInt)] : stdgo.GoUInt) << (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_dbuf[(1 : stdgo.GoInt)] : stdgo.GoUInt) << (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | ((_dbuf[(2 : stdgo.GoInt)] : stdgo.GoUInt) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_dbuf[(3 : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
        {
            final __tmp__0 = ((_val >> (0i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__1 = ((_val >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__2 = ((_val >> (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt8);
            final __tmp__3 = _dbuf;
            final __tmp__4 = (2 : stdgo.GoInt);
            final __tmp__5 = _dbuf;
            final __tmp__6 = (1 : stdgo.GoInt);
            final __tmp__7 = _dbuf;
            final __tmp__8 = (0 : stdgo.GoInt);
            __tmp__3[__tmp__4] = __tmp__0;
            __tmp__5[__tmp__6] = __tmp__1;
            __tmp__7[__tmp__8] = __tmp__2;
        };
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = _dlen;
                    if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (4 : stdgo.GoInt)))) {
                        _dst[(2 : stdgo.GoInt)] = _dbuf[(2 : stdgo.GoInt)];
                        _dbuf[(2 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 1;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (3 : stdgo.GoInt)))) {
                        _dst[(1 : stdgo.GoInt)] = _dbuf[(1 : stdgo.GoInt)];
                        if (((@:checkr _enc ?? throw "null pointer dereference")._strict && (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        _dbuf[(1 : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        @:fallthrough {
                            __switchIndex__ = 2;
                            __run__ = true;
                            continue;
                        };
                        break;
                    } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (2 : stdgo.GoInt)))) {
                        _dst[(0 : stdgo.GoInt)] = _dbuf[(0 : stdgo.GoInt)];
                        if (((@:checkr _enc ?? throw "null pointer dereference")._strict && (((_dbuf[(1 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) || (_dbuf[(2 : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (0 : stdgo.GoInt), _2 : stdgo.Go.asInterface(((_si - (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.encoding.base64.Base64_corruptinputerror.CorruptInputError)) };
                                _nsi = __tmp__._0;
                                _n = __tmp__._1;
                                _err = __tmp__._2;
                                __tmp__;
                            };
                        };
                        break;
                        break;
                    };
                };
                break;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } = { _0 : _si, _1 : (_dlen - (1 : stdgo.GoInt) : stdgo.GoInt), _2 : _err };
            _nsi = __tmp__._0;
            _n = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function encodedLen( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        if ((@:checkr _enc ?? throw "null pointer dereference")._padChar == ((-1 : stdgo.GoInt32))) {
            return ((((_n * (8 : stdgo.GoInt) : stdgo.GoInt) + (5 : stdgo.GoInt) : stdgo.GoInt)) / (6 : stdgo.GoInt) : stdgo.GoInt);
        };
        return ((((_n + (2 : stdgo.GoInt) : stdgo.GoInt)) / (3 : stdgo.GoInt) : stdgo.GoInt) * (4 : stdgo.GoInt) : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function encodeToString( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r _enc.encodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        @:check2r _enc.encode(_buf, _src);
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function encode( _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> = _enc;
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            return;
        };
        var __blank__ = (@:checkr _enc ?? throw "null pointer dereference")._encode;
        var __0 = (0 : stdgo.GoInt), __1 = (0 : stdgo.GoInt);
var _si = __1, _di = __0;
        var _n = ((((_src.length) / (3 : stdgo.GoInt) : stdgo.GoInt)) * (3 : stdgo.GoInt) : stdgo.GoInt);
        while ((_si < _n : Bool)) {
            var _val = ((((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt) | ((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoUInt) | (_src[(_si + (2 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) : stdgo.GoUInt);
            _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[((_val & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
            _si = (_si + ((3 : stdgo.GoInt)) : stdgo.GoInt);
            _di = (_di + ((4 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _remain = ((_src.length) - _si : stdgo.GoInt);
        if (_remain == ((0 : stdgo.GoInt))) {
            return;
        };
        var _val = ((_src[(_si + (0 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (16i64 : stdgo.GoUInt64) : stdgo.GoUInt);
        if (_remain == ((2 : stdgo.GoInt))) {
            _val = (_val | (((_src[(_si + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt) << (8i64 : stdgo.GoUInt64) : stdgo.GoUInt)) : stdgo.GoUInt);
        };
        _dst[(_di + (0 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (18i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        _dst[(_di + (1 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (12i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
        {
            final __value__ = _remain;
            if (__value__ == ((2 : stdgo.GoInt))) {
                _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = (@:checkr _enc ?? throw "null pointer dereference")._encode[(((_val >> (6i64 : stdgo.GoUInt64) : stdgo.GoUInt) & (63u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoInt)];
                if ((@:checkr _enc ?? throw "null pointer dereference")._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                };
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if ((@:checkr _enc ?? throw "null pointer dereference")._padChar != ((-1 : stdgo.GoInt32))) {
                    _dst[(_di + (2 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                    _dst[(_di + (3 : stdgo.GoInt) : stdgo.GoInt)] = ((@:checkr _enc ?? throw "null pointer dereference")._padChar : stdgo.GoUInt8);
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function strict( _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
        @:recv var _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding = _enc?.__copy__();
        _enc._strict = true;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    }
    @:keep
    @:tdfield
    static public function withPadding( _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding, _padding:stdgo.GoInt32):stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding> {
        @:recv var _enc:stdgo._internal.encoding.base64.Base64_encoding.Encoding = _enc?.__copy__();
        if (((_padding == ((13 : stdgo.GoInt32)) || _padding == ((10 : stdgo.GoInt32)) : Bool) || (_padding > (255 : stdgo.GoInt32) : Bool) : Bool)) {
            throw stdgo.Go.toInterface(("invalid padding" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_enc._encode.length) : Bool)) {
                if ((_enc._encode[(_i : stdgo.GoInt)] : stdgo.GoInt32) == (_padding)) {
                    throw stdgo.Go.toInterface(("padding contained in alphabet" : stdgo.GoString));
                };
                _i++;
            };
        };
        _enc._padChar = _padding;
        return (stdgo.Go.setRef(_enc) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_encoding.Encoding>);
    }
}
