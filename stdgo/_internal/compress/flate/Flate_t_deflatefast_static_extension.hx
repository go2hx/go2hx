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
        var _offset_30:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _l_26:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_20:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_19:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_24:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_23:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextHash_18:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_16:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_14:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_28:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _t_25:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_29:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _bytesBetweenHashLookups_22:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_21:stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
        var _cv_17:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextEmit_15:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3681848i32;
                    } else {
                        _gotoNext = 3681992i32;
                    };
                } else if (__value__ == (3681848i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3681992i32;
                } else if (__value__ == (3681992i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3682029i32;
                    } else {
                        _gotoNext = 3682294i32;
                    };
                } else if (__value__ == (3682029i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, _src);
                    _gotoNext = 3682294i32;
                } else if (__value__ == (3682294i32)) {
                    _sLimit_14 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_15 = (0 : stdgo.GoInt32);
                    _s_16 = (0 : stdgo.GoInt32);
                    _cv_17 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_16);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_17);
                    var __blank__ = 0i32;
                    _gotoNext = 3682487i32;
                } else if (__value__ == (3682487i32)) {
                    if (true) {
                        _gotoNext = 3682491i32;
                    } else {
                        _gotoNext = 3685982i32;
                    };
                } else if (__value__ == (3682491i32)) {
                    _skip_19 = (32 : stdgo.GoInt32);
                    _nextS_20 = _s_16;
                    var __blank__ = 0i32;
                    _gotoNext = 3683400i32;
                } else if (__value__ == (3683400i32)) {
                    if (true) {
                        _gotoNext = 3683404i32;
                    } else {
                        _gotoNext = 3684109i32;
                    };
                } else if (__value__ == (3683404i32)) {
                    _s_16 = _nextS_20;
                    _bytesBetweenHashLookups_22 = (_skip_19 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_20 = (_s_16 + _bytesBetweenHashLookups_22 : stdgo.GoInt32);
                    _skip_19 = (_skip_19 + (_bytesBetweenHashLookups_22) : stdgo.GoInt32);
                    if ((_nextS_20 > _sLimit_14 : Bool)) {
                        _gotoNext = 3683554i32;
                    } else {
                        _gotoNext = 3683587i32;
                    };
                } else if (__value__ == (3683554i32)) {
                    _gotoNext = 3685982i32;
                } else if (__value__ == (3683587i32)) {
                    _candidate_21 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_18 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_23 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_20);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_18 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_16 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_17 } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_now_23);
                    _offset_24 = (_s_16 - ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_24 > (32768 : stdgo.GoInt32) : Bool) || (_cv_17 != _candidate_21._val) : Bool)) {
                        _gotoNext = 3683850i32;
                    } else {
                        _gotoNext = 3683922i32;
                    };
                } else if (__value__ == (3683850i32)) {
                    _cv_17 = _now_23;
                    var __blank__ = 0i32;
                    _gotoNext = 3683400i32;
                } else if (__value__ == (3683922i32)) {
                    _gotoNext = 3684109i32;
                } else if (__value__ == (3684109i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_15, _s_16) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3684640i32;
                } else if (__value__ == (3684640i32)) {
                    if (true) {
                        _gotoNext = 3684644i32;
                    } else {
                        _gotoNext = 3682487i32;
                    };
                } else if (__value__ == (3684644i32)) {
                    _s_16 = (_s_16 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_25 = ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_26 = @:check2r _e._matchLen(_s_16, _t_25, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((_l_26 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_16 - _t_25 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_16 = (_s_16 + (_l_26) : stdgo.GoInt32);
                    _nextEmit_15 = _s_16;
                    if ((_s_16 >= _sLimit_14 : Bool)) {
                        _gotoNext = 3685096i32;
                    } else {
                        _gotoNext = 3685496i32;
                    };
                } else if (__value__ == (3685096i32)) {
                    _gotoNext = 3685982i32;
                } else if (__value__ == (3685496i32)) {
                    _x_27 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_16 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_28 = stdgo._internal.compress.flate.Flate__hash._hash((_x_27 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_28 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_16 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_27 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _x_27 = (_x_27 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_29 = stdgo._internal.compress.flate.Flate__hash._hash((_x_27 : stdgo.GoUInt32));
                    _candidate_21 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_29 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_29 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_16 : stdgo.GoInt32), _val : (_x_27 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _offset_30 = (_s_16 - ((_candidate_21._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_30 > (32768 : stdgo.GoInt32) : Bool) || ((_x_27 : stdgo.GoUInt32) != _candidate_21._val) : Bool)) {
                        _gotoNext = 3685901i32;
                    } else {
                        _gotoNext = 3684640i32;
                    };
                } else if (__value__ == (3685901i32)) {
                    _cv_17 = ((_x_27 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_18 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_17);
                    _s_16++;
                    _gotoNext = 3682487i32;
                } else if (__value__ == (3685982i32)) {
                    _gotoNext = 3685982i32;
                    if (((_nextEmit_15 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3686026i32;
                    } else {
                        _gotoNext = 3686073i32;
                    };
                } else if (__value__ == (3686026i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_15) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3686073i32;
                } else if (__value__ == (3686073i32)) {
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
