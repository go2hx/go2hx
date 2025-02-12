package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    @:tdfield
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference")._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
                (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry() : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
            };
            (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry>)) {
            var _v = ((((@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            @:check2r _e._shiftOffsets();
        };
    }
    @:keep
    @:tdfield
    static public function _matchLen( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _s1 = (((_s : stdgo.GoInt) + (258 : stdgo.GoInt) : stdgo.GoInt) - (4 : stdgo.GoInt) : stdgo.GoInt);
        if ((_s1 > (_src.length) : Bool)) {
            _s1 = (_src.length);
        };
        if ((_t >= (0 : stdgo.GoInt32) : Bool)) {
            var _b = (_src.__slice__(_t) : stdgo.Slice<stdgo.GoUInt8>);
            var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _a) {
                if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                    return (_i : stdgo.GoInt32);
                };
            };
            return (_a.length : stdgo.GoInt32);
        };
        var _tp = (((@:checkr _e ?? throw "null pointer dereference")._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
        if (((_b.length) > (_a.length) : Bool)) {
            _b = (_b.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _a = (_a.__slice__(0, (_b.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return (_i : stdgo.GoInt32);
            };
        };
        var _n = (_b.length : stdgo.GoInt32);
        if (((_s + _n : stdgo.GoInt32) : stdgo.GoInt) == (_s1)) {
            return _n;
        };
        _a = (_src.__slice__((_s + _n : stdgo.GoInt32), _s1) : stdgo.Slice<stdgo.GoUInt8>);
        _b = (_src.__slice__(0, (_a.length)) : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _a) {
            if (_a[(_i : stdgo.GoInt)] != (_b[(_i : stdgo.GoInt)])) {
                return ((_i : stdgo.GoInt32) + _n : stdgo.GoInt32);
            };
        };
        return ((_a.length : stdgo.GoInt32) + _n : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_deflatefast.T_deflateFast> = _e;
        var _candidate_3702202:stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
        var _nextEmit_3701230:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_3701119:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3704625:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_3704321:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _bytesBetweenHashLookups_3702247:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3701289:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_3701267:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _currHash_3704471:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_3702581:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3702455:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _skip_3702164:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _s_3701252:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3704346:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3703681:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3703644:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3702185:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3700673i32;
                    } else {
                        _gotoNext = 3700817i32;
                    };
                } else if (__value__ == (3700673i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3700817i32;
                } else if (__value__ == (3700817i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3700854i32;
                    } else {
                        _gotoNext = 3701119i32;
                    };
                } else if (__value__ == (3700854i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, _src);
                    _gotoNext = 3701119i32;
                } else if (__value__ == (3701119i32)) {
                    _sLimit_3701119 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3701230 = (0 : stdgo.GoInt32);
                    _s_3701252 = (0 : stdgo.GoInt32);
                    _cv_3701267 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3701252);
                    _nextHash_3701289 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3701267);
                    var __blank__ = 0i32;
                    _gotoNext = 3701312i32;
                } else if (__value__ == (3701312i32)) {
                    if (true) {
                        _gotoNext = 3701316i32;
                    } else {
                        _gotoNext = 3704807i32;
                    };
                } else if (__value__ == (3701316i32)) {
                    _skip_3702164 = (32 : stdgo.GoInt32);
                    _nextS_3702185 = _s_3701252;
                    var __blank__ = 0i32;
                    _gotoNext = 3702225i32;
                } else if (__value__ == (3702225i32)) {
                    if (true) {
                        _gotoNext = 3702229i32;
                    } else {
                        _gotoNext = 3702934i32;
                    };
                } else if (__value__ == (3702229i32)) {
                    _s_3701252 = _nextS_3702185;
                    _bytesBetweenHashLookups_3702247 = (_skip_3702164 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3702185 = (_s_3701252 + _bytesBetweenHashLookups_3702247 : stdgo.GoInt32);
                    _skip_3702164 = (_skip_3702164 + (_bytesBetweenHashLookups_3702247) : stdgo.GoInt32);
                    if ((_nextS_3702185 > _sLimit_3701119 : Bool)) {
                        _gotoNext = 3702379i32;
                    } else {
                        _gotoNext = 3702412i32;
                    };
                } else if (__value__ == (3702379i32)) {
                    _gotoNext = 3704807i32;
                } else if (__value__ == (3702412i32)) {
                    _candidate_3702202 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3701289 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3702455 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3702185);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3701289 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3701252 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3701267 } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _nextHash_3701289 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3702455);
                    _offset_3702581 = (_s_3701252 - ((_candidate_3702202._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3702581 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3701267 != _candidate_3702202._val) : Bool)) {
                        _gotoNext = 3702675i32;
                    } else {
                        _gotoNext = 3702747i32;
                    };
                } else if (__value__ == (3702675i32)) {
                    _cv_3701267 = _now_3702455;
                    var __blank__ = 0i32;
                    _gotoNext = 3702225i32;
                } else if (__value__ == (3702747i32)) {
                    _gotoNext = 3702934i32;
                } else if (__value__ == (3702934i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3701230, _s_3701252) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3703465i32;
                } else if (__value__ == (3703465i32)) {
                    if (true) {
                        _gotoNext = 3703469i32;
                    } else {
                        _gotoNext = 3701312i32;
                    };
                } else if (__value__ == (3703469i32)) {
                    _s_3701252 = (_s_3701252 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3703644 = ((_candidate_3702202._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3703681 = @:check2r _e._matchLen(_s_3701252, _t_3703644, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((_l_3703681 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3701252 - _t_3703644 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3701252 = (_s_3701252 + (_l_3703681) : stdgo.GoInt32);
                    _nextEmit_3701230 = _s_3701252;
                    if ((_s_3701252 >= _sLimit_3701119 : Bool)) {
                        _gotoNext = 3703921i32;
                    } else {
                        _gotoNext = 3704321i32;
                    };
                } else if (__value__ == (3703921i32)) {
                    _gotoNext = 3704807i32;
                } else if (__value__ == (3704321i32)) {
                    _x_3704321 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3701252 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3704346 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3704321 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3704346 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3701252 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3704321 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _x_3704321 = (_x_3704321 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3704471 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3704321 : stdgo.GoUInt32));
                    _candidate_3702202 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3704471 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3704471 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3701252 : stdgo.GoInt32), _val : (_x_3704321 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _offset_3704625 = (_s_3701252 - ((_candidate_3702202._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3704625 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3704321 : stdgo.GoUInt32) != _candidate_3702202._val) : Bool)) {
                        _gotoNext = 3704726i32;
                    } else {
                        _gotoNext = 3703465i32;
                    };
                } else if (__value__ == (3704726i32)) {
                    _cv_3701267 = ((_x_3704321 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3701289 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3701267);
                    _s_3701252++;
                    _gotoNext = 3701312i32;
                } else if (__value__ == (3704807i32)) {
                    _gotoNext = 3704807i32;
                    if (((_nextEmit_3701230 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3704851i32;
                    } else {
                        _gotoNext = 3704898i32;
                    };
                } else if (__value__ == (3704851i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3701230) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3704898i32;
                } else if (__value__ == (3704898i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _e ?? throw "null pointer dereference")._prev.__copyTo__(_src);
                    return _dst;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
