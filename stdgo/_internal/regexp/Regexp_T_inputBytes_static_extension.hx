package stdgo._internal.regexp;
@:keep @:allow(stdgo._internal.regexp.Regexp.T_inputBytes_asInterface) class T_inputBytes_static_extension {
    @:keep
    static public function _context( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>, _pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes> = _i;
        var __0 = (-1 : stdgo.GoInt32), __1 = (-1 : stdgo.GoInt32);
var _r2 = __1, _r1 = __0;
        if ((((_pos - (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r1 = (_i._str[(_pos - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r1 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeLastRune.decodeLastRune((_i._str.__slice__(0, _pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r1 = __tmp__._0;
                };
            };
        };
        if (((_pos : stdgo.GoUInt) < (_i._str.length : stdgo.GoUInt) : Bool)) {
            _r2 = (_i._str[(_pos : stdgo.GoInt)] : stdgo.GoInt32);
            if ((_r2 >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
                    _r2 = __tmp__._0;
                };
            };
        };
        return stdgo._internal.regexp.Regexp__newLazyFlag._newLazyFlag(_r1, _r2);
    }
    @:keep
    static public function _index( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes> = _i;
        return stdgo._internal.bytes.Bytes_index.index((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>), _re._prefixBytes);
    }
    @:keep
    static public function _hasPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes> = _i;
        return stdgo._internal.bytes.Bytes_hasPrefix.hasPrefix(_i._str, _re._prefixBytes);
    }
    @:keep
    static public function _canCheckPrefix( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>):Bool {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes> = _i;
        return true;
    }
    @:keep
    static public function _step( _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>, _pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } {
        @:recv var _i:stdgo.Ref<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes> = _i;
        if ((_pos < (_i._str.length) : Bool)) {
            var _c = (_i._str[(_pos : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                return { _0 : (_c : stdgo.GoInt32), _1 : (1 : stdgo.GoInt) };
            };
            return stdgo._internal.unicode.utf8.Utf8_decodeRune.decodeRune((_i._str.__slice__(_pos) : stdgo.Slice<stdgo.GoUInt8>));
        };
        return { _0 : (-1 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt) };
    }
}
