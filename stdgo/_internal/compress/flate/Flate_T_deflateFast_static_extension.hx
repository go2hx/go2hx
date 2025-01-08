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
        var _t_3718341:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_3716861:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _cv_3715964:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _sLimit_3715816:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3717278:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3716882:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3715986:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_3715949:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3719168:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3719018:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _bytesBetweenHashLookups_3716944:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3716899:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _prevHash_3719043:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3718378:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3717152:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextEmit_3715927:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3719322:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3715370i32;
                    } else {
                        _gotoNext = 3715514i32;
                    };
                } else if (__value__ == (3715370i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3715514i32;
                } else if (__value__ == (3715514i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3715551i32;
                    } else {
                        _gotoNext = 3715816i32;
                    };
                } else if (__value__ == (3715551i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3715816i32;
                } else if (__value__ == (3715816i32)) {
                    _sLimit_3715816 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3715927 = (0 : stdgo.GoInt32);
                    _s_3715949 = (0 : stdgo.GoInt32);
                    _cv_3715964 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3715949);
                    _nextHash_3715986 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3715964);
                    var __blank__ = 0i32;
                    _gotoNext = 3716009i32;
                } else if (__value__ == (3716009i32)) {
                    if (true) {
                        _gotoNext = 3716013i32;
                    } else {
                        _gotoNext = 3719504i32;
                    };
                } else if (__value__ == (3716013i32)) {
                    _skip_3716861 = (32 : stdgo.GoInt32);
                    _nextS_3716882 = _s_3715949;
                    var __blank__ = 0i32;
                    _gotoNext = 3716922i32;
                } else if (__value__ == (3716922i32)) {
                    if (true) {
                        _gotoNext = 3716926i32;
                    } else {
                        _gotoNext = 3717631i32;
                    };
                } else if (__value__ == (3716926i32)) {
                    _s_3715949 = _nextS_3716882;
                    _bytesBetweenHashLookups_3716944 = (_skip_3716861 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3716882 = (_s_3715949 + _bytesBetweenHashLookups_3716944 : stdgo.GoInt32);
                    _skip_3716861 = (_skip_3716861 + (_bytesBetweenHashLookups_3716944) : stdgo.GoInt32);
                    if ((_nextS_3716882 > _sLimit_3715816 : Bool)) {
                        _gotoNext = 3717076i32;
                    } else {
                        _gotoNext = 3717109i32;
                    };
                } else if (__value__ == (3717076i32)) {
                    _gotoNext = 3719504i32;
                } else if (__value__ == (3717109i32)) {
                    _candidate_3716899 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3715986 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3717152 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3716882);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3715986 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3715949 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3715964 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3715986 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3717152);
                    _offset_3717278 = (_s_3715949 - ((_candidate_3716899._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3717278 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3715964 != _candidate_3716899._val) : Bool)) {
                        _gotoNext = 3717372i32;
                    } else {
                        _gotoNext = 3717444i32;
                    };
                } else if (__value__ == (3717372i32)) {
                    _cv_3715964 = _now_3717152;
                    var __blank__ = 0i32;
                    _gotoNext = 3716922i32;
                } else if (__value__ == (3717444i32)) {
                    _gotoNext = 3717631i32;
                } else if (__value__ == (3717631i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3715927, _s_3715949) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3718162i32;
                } else if (__value__ == (3718162i32)) {
                    if (true) {
                        _gotoNext = 3718166i32;
                    } else {
                        _gotoNext = 3716009i32;
                    };
                } else if (__value__ == (3718166i32)) {
                    _s_3715949 = (_s_3715949 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3718341 = ((_candidate_3716899._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3718378 = @:check2r _e._matchLen(_s_3715949, _t_3718341, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3718378 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3715949 - _t_3718341 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3715949 = (_s_3715949 + (_l_3718378) : stdgo.GoInt32);
                    _nextEmit_3715927 = _s_3715949;
                    if ((_s_3715949 >= _sLimit_3715816 : Bool)) {
                        _gotoNext = 3718618i32;
                    } else {
                        _gotoNext = 3719018i32;
                    };
                } else if (__value__ == (3718618i32)) {
                    _gotoNext = 3719504i32;
                } else if (__value__ == (3719018i32)) {
                    _x_3719018 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3715949 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3719043 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3719018 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3719043 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3715949 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3719018 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3719018 = (_x_3719018 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3719168 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3719018 : stdgo.GoUInt32));
                    _candidate_3716899 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3719168 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3719168 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3715949 : stdgo.GoInt32), _val : (_x_3719018 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3719322 = (_s_3715949 - ((_candidate_3716899._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3719322 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3719018 : stdgo.GoUInt32) != _candidate_3716899._val) : Bool)) {
                        _gotoNext = 3719423i32;
                    } else {
                        _gotoNext = 3718162i32;
                    };
                } else if (__value__ == (3719423i32)) {
                    _cv_3715964 = ((_x_3719018 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3715986 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3715964);
                    _s_3715949++;
                    _gotoNext = 3716009i32;
                } else if (__value__ == (3719504i32)) {
                    _gotoNext = 3719504i32;
                    if (((_nextEmit_3715927 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3719548i32;
                    } else {
                        _gotoNext = 3719595i32;
                    };
                } else if (__value__ == (3719548i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3715927) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3719595i32;
                } else if (__value__ == (3719595i32)) {
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
