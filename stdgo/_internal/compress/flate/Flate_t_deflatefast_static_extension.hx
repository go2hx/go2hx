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
        var _prevHash_3706369:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _offset_3706648:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _l_3705704:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3705667:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3704478:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextS_3704208:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_3704187:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3706494:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3706344:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _candidate_3704225:stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
        var _cv_3703290:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_3703275:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextEmit_3703253:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_3703142:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3704604:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bytesBetweenHashLookups_3704270:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3703312:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if (((@:checkr _e ?? throw "null pointer dereference")._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3702696i32;
                    } else {
                        _gotoNext = 3702840i32;
                    };
                } else if (__value__ == (3702696i32)) {
                    @:check2r _e._shiftOffsets();
                    _gotoNext = 3702840i32;
                } else if (__value__ == (3702840i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3702877i32;
                    } else {
                        _gotoNext = 3703142i32;
                    };
                } else if (__value__ == (3702877i32)) {
                    (@:checkr _e ?? throw "null pointer dereference")._cur = ((@:checkr _e ?? throw "null pointer dereference")._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    (@:checkr _e ?? throw "null pointer dereference")._prev = ((@:checkr _e ?? throw "null pointer dereference")._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, _src);
                    _gotoNext = 3703142i32;
                } else if (__value__ == (3703142i32)) {
                    _sLimit_3703142 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3703253 = (0 : stdgo.GoInt32);
                    _s_3703275 = (0 : stdgo.GoInt32);
                    _cv_3703290 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3703275);
                    _nextHash_3703312 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3703290);
                    var __blank__ = 0i32;
                    _gotoNext = 3703335i32;
                } else if (__value__ == (3703335i32)) {
                    if (true) {
                        _gotoNext = 3703339i32;
                    } else {
                        _gotoNext = 3706830i32;
                    };
                } else if (__value__ == (3703339i32)) {
                    _skip_3704187 = (32 : stdgo.GoInt32);
                    _nextS_3704208 = _s_3703275;
                    var __blank__ = 0i32;
                    _gotoNext = 3704248i32;
                } else if (__value__ == (3704248i32)) {
                    if (true) {
                        _gotoNext = 3704252i32;
                    } else {
                        _gotoNext = 3704957i32;
                    };
                } else if (__value__ == (3704252i32)) {
                    _s_3703275 = _nextS_3704208;
                    _bytesBetweenHashLookups_3704270 = (_skip_3704187 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3704208 = (_s_3703275 + _bytesBetweenHashLookups_3704270 : stdgo.GoInt32);
                    _skip_3704187 = (_skip_3704187 + (_bytesBetweenHashLookups_3704270) : stdgo.GoInt32);
                    if ((_nextS_3704208 > _sLimit_3703142 : Bool)) {
                        _gotoNext = 3704402i32;
                    } else {
                        _gotoNext = 3704435i32;
                    };
                } else if (__value__ == (3704402i32)) {
                    _gotoNext = 3706830i32;
                } else if (__value__ == (3704435i32)) {
                    _candidate_3704225 = (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3703312 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3704478 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3704208);
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_nextHash_3703312 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3703275 + (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32), _val : _cv_3703290 } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _nextHash_3703312 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3704478);
                    _offset_3704604 = (_s_3703275 - ((_candidate_3704225._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3704604 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3703290 != _candidate_3704225._val) : Bool)) {
                        _gotoNext = 3704698i32;
                    } else {
                        _gotoNext = 3704770i32;
                    };
                } else if (__value__ == (3704698i32)) {
                    _cv_3703290 = _now_3704478;
                    var __blank__ = 0i32;
                    _gotoNext = 3704248i32;
                } else if (__value__ == (3704770i32)) {
                    _gotoNext = 3704957i32;
                } else if (__value__ == (3704957i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3703253, _s_3703275) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3705488i32;
                } else if (__value__ == (3705488i32)) {
                    if (true) {
                        _gotoNext = 3705492i32;
                    } else {
                        _gotoNext = 3703335i32;
                    };
                } else if (__value__ == (3705492i32)) {
                    _s_3703275 = (_s_3703275 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3705667 = ((_candidate_3704225._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3705704 = @:check2r _e._matchLen(_s_3703275, _t_3705667, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchtoken._matchToken((((_l_3705704 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3703275 - _t_3705667 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3703275 = (_s_3703275 + (_l_3705704) : stdgo.GoInt32);
                    _nextEmit_3703253 = _s_3703275;
                    if ((_s_3703275 >= _sLimit_3703142 : Bool)) {
                        _gotoNext = 3705944i32;
                    } else {
                        _gotoNext = 3706344i32;
                    };
                } else if (__value__ == (3705944i32)) {
                    _gotoNext = 3706830i32;
                } else if (__value__ == (3706344i32)) {
                    _x_3706344 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3703275 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3706369 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3706344 : stdgo.GoUInt32));
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_prevHash_3706369 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3703275 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3706344 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _x_3706344 = (_x_3706344 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3706494 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3706344 : stdgo.GoUInt32));
                    _candidate_3704225 = (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3706494 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    (@:checkr _e ?? throw "null pointer dereference")._table[((_currHash_3706494 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((@:checkr _e ?? throw "null pointer dereference")._cur + _s_3703275 : stdgo.GoInt32), _val : (_x_3706344 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_t_tableentry.T_tableEntry);
                    _offset_3706648 = (_s_3703275 - ((_candidate_3704225._offset - (@:checkr _e ?? throw "null pointer dereference")._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3706648 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3706344 : stdgo.GoUInt32) != _candidate_3704225._val) : Bool)) {
                        _gotoNext = 3706749i32;
                    } else {
                        _gotoNext = 3705488i32;
                    };
                } else if (__value__ == (3706749i32)) {
                    _cv_3703290 = ((_x_3706344 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3703312 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3703290);
                    _s_3703275++;
                    _gotoNext = 3703335i32;
                } else if (__value__ == (3706830i32)) {
                    _gotoNext = 3706830i32;
                    if (((_nextEmit_3703253 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3706874i32;
                    } else {
                        _gotoNext = 3706921i32;
                    };
                } else if (__value__ == (3706874i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitliteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3703253) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3706921i32;
                } else if (__value__ == (3706921i32)) {
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
