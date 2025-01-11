package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    @:tdfield
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        if (((@:checkr _e ?? throw "null pointer dereference")._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
                (@:checkr _e ?? throw "null pointer dereference")._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry() : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
            };
            (@:checkr _e ?? throw "null pointer dereference")._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in ((@:checkr _e ?? throw "null pointer dereference")._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
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
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            @:check2r _e._shiftOffsets();
        };
    }
    @:keep
    @:tdfield
    static public function _matchLen( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _s:stdgo.GoInt32, _t:stdgo.GoInt32, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt32 {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
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
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        var _offset_3677592:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3677438:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3676648:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_3675131:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3675152:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3674256:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_3674234:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_3674219:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextEmit_3674197:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3677313:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _now_3675422:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _bytesBetweenHashLookups_3675214:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_3677288:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _sLimit_3674086:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3676611:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3675548:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3675169:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3673640i32;
                    } else {
                        _gotoNext = 3673784i32;
                    };
                } else if (__value__ == (3673640i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3673784i32;
                } else if (__value__ == (3673784i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3673821i32;
                    } else {
                        _gotoNext = 3674086i32;
                    };
                } else if (__value__ == (3673821i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3674086i32;
                } else if (__value__ == (3674086i32)) {
                    _sLimit_3674086 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3674197 = (0 : stdgo.GoInt32);
                    _s_3674219 = (0 : stdgo.GoInt32);
                    _cv_3674234 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3674219);
                    _nextHash_3674256 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3674234);
                    var __blank__ = 0i32;
                    _gotoNext = 3674279i32;
                } else if (__value__ == (3674279i32)) {
                    if (true) {
                        _gotoNext = 3674283i32;
                    } else {
                        _gotoNext = 3677774i32;
                    };
                } else if (__value__ == (3674283i32)) {
                    _skip_3675131 = (32 : stdgo.GoInt32);
                    _nextS_3675152 = _s_3674219;
                    var __blank__ = 0i32;
                    _gotoNext = 3675192i32;
                } else if (__value__ == (3675192i32)) {
                    if (true) {
                        _gotoNext = 3675196i32;
                    } else {
                        _gotoNext = 3675901i32;
                    };
                } else if (__value__ == (3675196i32)) {
                    _s_3674219 = _nextS_3675152;
                    _bytesBetweenHashLookups_3675214 = (_skip_3675131 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3675152 = (_s_3674219 + _bytesBetweenHashLookups_3675214 : stdgo.GoInt32);
                    _skip_3675131 = (_skip_3675131 + (_bytesBetweenHashLookups_3675214) : stdgo.GoInt32);
                    if ((_nextS_3675152 > _sLimit_3674086 : Bool)) {
                        _gotoNext = 3675346i32;
                    } else {
                        _gotoNext = 3675379i32;
                    };
                } else if (__value__ == (3675346i32)) {
                    _gotoNext = 3677774i32;
                } else if (__value__ == (3675379i32)) {
                    _candidate_3675169 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3674256 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3675422 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3675152);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3674256 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3674219 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3674234 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3674256 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3675422);
                    _offset_3675548 = (_s_3674219 - ((_candidate_3675169._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3675548 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3674234 != _candidate_3675169._val) : Bool)) {
                        _gotoNext = 3675642i32;
                    } else {
                        _gotoNext = 3675714i32;
                    };
                } else if (__value__ == (3675642i32)) {
                    _cv_3674234 = _now_3675422;
                    var __blank__ = 0i32;
                    _gotoNext = 3675192i32;
                } else if (__value__ == (3675714i32)) {
                    _gotoNext = 3675901i32;
                } else if (__value__ == (3675901i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3674197, _s_3674219) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3676432i32;
                } else if (__value__ == (3676432i32)) {
                    if (true) {
                        _gotoNext = 3676436i32;
                    } else {
                        _gotoNext = 3674279i32;
                    };
                } else if (__value__ == (3676436i32)) {
                    _s_3674219 = (_s_3674219 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3676611 = ((_candidate_3675169._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3676648 = @:check2r _e._matchLen(_s_3674219, _t_3676611, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3676648 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3674219 - _t_3676611 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3674219 = (_s_3674219 + (_l_3676648) : stdgo.GoInt32);
                    _nextEmit_3674197 = _s_3674219;
                    if ((_s_3674219 >= _sLimit_3674086 : Bool)) {
                        _gotoNext = 3676888i32;
                    } else {
                        _gotoNext = 3677288i32;
                    };
                } else if (__value__ == (3676888i32)) {
                    _gotoNext = 3677774i32;
                } else if (__value__ == (3677288i32)) {
                    _x_3677288 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3674219 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3677313 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3677288 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3677313 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3674219 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3677288 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3677288 = (_x_3677288 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3677438 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3677288 : stdgo.GoUInt32));
                    _candidate_3675169 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3677438 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3677438 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3674219 : stdgo.GoInt32), _val : (_x_3677288 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3677592 = (_s_3674219 - ((_candidate_3675169._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3677592 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3677288 : stdgo.GoUInt32) != _candidate_3675169._val) : Bool)) {
                        _gotoNext = 3677693i32;
                    } else {
                        _gotoNext = 3676432i32;
                    };
                } else if (__value__ == (3677693i32)) {
                    _cv_3674234 = ((_x_3677288 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3674256 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3674234);
                    _s_3674219++;
                    _gotoNext = 3674279i32;
                } else if (__value__ == (3677774i32)) {
                    _gotoNext = 3677774i32;
                    if (((_nextEmit_3674197 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3677818i32;
                    } else {
                        _gotoNext = 3677865i32;
                    };
                } else if (__value__ == (3677818i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3674197) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3677865i32;
                } else if (__value__ == (3677865i32)) {
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
