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
        var _l_3697450:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_3695933:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _s_3695021:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextEmit_3694999:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3698394:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3698115:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _now_3696224:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextHash_3695058:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _cv_3695036:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _sLimit_3694888:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _x_3698090:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _offset_3696350:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bytesBetweenHashLookups_3696016:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3698240:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _t_3697413:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3695971:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _nextS_3695954:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3694442i32;
                    } else {
                        _gotoNext = 3694586i32;
                    };
                } else if (__value__ == (3694442i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3694586i32;
                } else if (__value__ == (3694586i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3694623i32;
                    } else {
                        _gotoNext = 3694888i32;
                    };
                } else if (__value__ == (3694623i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3694888i32;
                } else if (__value__ == (3694888i32)) {
                    _sLimit_3694888 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3694999 = (0 : stdgo.GoInt32);
                    _s_3695021 = (0 : stdgo.GoInt32);
                    _cv_3695036 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3695021);
                    _nextHash_3695058 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3695036);
                    var __blank__ = 0i32;
                    _gotoNext = 3695081i32;
                } else if (__value__ == (3695081i32)) {
                    if (true) {
                        _gotoNext = 3695085i32;
                    } else {
                        _gotoNext = 3698576i32;
                    };
                } else if (__value__ == (3695085i32)) {
                    _skip_3695933 = (32 : stdgo.GoInt32);
                    _nextS_3695954 = _s_3695021;
                    var __blank__ = 0i32;
                    _gotoNext = 3695994i32;
                } else if (__value__ == (3695994i32)) {
                    if (true) {
                        _gotoNext = 3695998i32;
                    } else {
                        _gotoNext = 3696703i32;
                    };
                } else if (__value__ == (3695998i32)) {
                    _s_3695021 = _nextS_3695954;
                    _bytesBetweenHashLookups_3696016 = (_skip_3695933 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3695954 = (_s_3695021 + _bytesBetweenHashLookups_3696016 : stdgo.GoInt32);
                    _skip_3695933 = (_skip_3695933 + (_bytesBetweenHashLookups_3696016) : stdgo.GoInt32);
                    if ((_nextS_3695954 > _sLimit_3694888 : Bool)) {
                        _gotoNext = 3696148i32;
                    } else {
                        _gotoNext = 3696181i32;
                    };
                } else if (__value__ == (3696148i32)) {
                    _gotoNext = 3698576i32;
                } else if (__value__ == (3696181i32)) {
                    _candidate_3695971 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3695058 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3696224 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3695954);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3695058 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3695021 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3695036 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3695058 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3696224);
                    _offset_3696350 = (_s_3695021 - ((_candidate_3695971._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3696350 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3695036 != _candidate_3695971._val) : Bool)) {
                        _gotoNext = 3696444i32;
                    } else {
                        _gotoNext = 3696516i32;
                    };
                } else if (__value__ == (3696444i32)) {
                    _cv_3695036 = _now_3696224;
                    var __blank__ = 0i32;
                    _gotoNext = 3695994i32;
                } else if (__value__ == (3696516i32)) {
                    _gotoNext = 3696703i32;
                } else if (__value__ == (3696703i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3694999, _s_3695021) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3697234i32;
                } else if (__value__ == (3697234i32)) {
                    if (true) {
                        _gotoNext = 3697238i32;
                    } else {
                        _gotoNext = 3695081i32;
                    };
                } else if (__value__ == (3697238i32)) {
                    _s_3695021 = (_s_3695021 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3697413 = ((_candidate_3695971._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3697450 = @:check2r _e._matchLen(_s_3695021, _t_3697413, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3697450 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3695021 - _t_3697413 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3695021 = (_s_3695021 + (_l_3697450) : stdgo.GoInt32);
                    _nextEmit_3694999 = _s_3695021;
                    if ((_s_3695021 >= _sLimit_3694888 : Bool)) {
                        _gotoNext = 3697690i32;
                    } else {
                        _gotoNext = 3698090i32;
                    };
                } else if (__value__ == (3697690i32)) {
                    _gotoNext = 3698576i32;
                } else if (__value__ == (3698090i32)) {
                    _x_3698090 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3695021 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3698115 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3698090 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3698115 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3695021 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3698090 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3698090 = (_x_3698090 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3698240 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3698090 : stdgo.GoUInt32));
                    _candidate_3695971 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3698240 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3698240 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3695021 : stdgo.GoInt32), _val : (_x_3698090 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3698394 = (_s_3695021 - ((_candidate_3695971._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3698394 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3698090 : stdgo.GoUInt32) != _candidate_3695971._val) : Bool)) {
                        _gotoNext = 3698495i32;
                    } else {
                        _gotoNext = 3697234i32;
                    };
                } else if (__value__ == (3698495i32)) {
                    _cv_3695036 = ((_x_3698090 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3695058 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3695036);
                    _s_3695021++;
                    _gotoNext = 3695081i32;
                } else if (__value__ == (3698576i32)) {
                    _gotoNext = 3698576i32;
                    if (((_nextEmit_3694999 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3698620i32;
                    } else {
                        _gotoNext = 3698667i32;
                    };
                } else if (__value__ == (3698620i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3694999) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3698667i32;
                } else if (__value__ == (3698667i32)) {
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
