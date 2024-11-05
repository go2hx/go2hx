package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_deflateFast_asInterface) class T_deflateFast_static_extension {
    @:keep
    static public function _shiftOffsets( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        if ((_e._prev.length) == ((0 : stdgo.GoInt))) {
            for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
                _e._table[(_i : stdgo.GoInt)] = (new stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry() : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
            };
            _e._cur = (32769 : stdgo.GoInt32);
            return;
        };
        for (_i => _ in (_e._table.__slice__(0) : stdgo.Slice<stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry>)) {
            var _v = (((_e._table[(_i : stdgo.GoInt)]._offset - _e._cur : stdgo.GoInt32) + (32768 : stdgo.GoInt32) : stdgo.GoInt32) + (1 : stdgo.GoInt32) : stdgo.GoInt32);
            if ((_v < (0 : stdgo.GoInt32) : Bool)) {
                _v = (0 : stdgo.GoInt32);
            };
            _e._table[(_i : stdgo.GoInt)]._offset = _v;
        };
        _e._cur = (32769 : stdgo.GoInt32);
    }
    @:keep
    static public function _reset( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _e._cur = (_e._cur + ((32768 : stdgo.GoInt32)) : stdgo.GoInt32);
        if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
            _e._shiftOffsets();
        };
    }
    @:keep
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
        var _tp = ((_e._prev.length : stdgo.GoInt32) + _t : stdgo.GoInt32);
        if ((_tp < (0 : stdgo.GoInt32) : Bool)) {
            return (0 : stdgo.GoInt32);
        };
        var _a = (_src.__slice__(_s, _s1) : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (_e._prev.__slice__(_tp) : stdgo.Slice<stdgo.GoUInt8>);
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
    static public function _encode( _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast>, _dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token>, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_T_token.T_token> {
        @:recv var _e:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_deflateFast.T_deflateFast> = _e;
        var _x_3652312:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cv_3649258:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _skip_3650155:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3649280:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _prevHash_3652337:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3651672:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3650572:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3650446:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _nextEmit_3649221:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_3649110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3652616:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3651635:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3650193:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _s_3649243:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _bytesBetweenHashLookups_3650238:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextS_3650176:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _currHash_3652462:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3648664i32;
                    } else {
                        _gotoNext = 3648808i32;
                    };
                } else if (__value__ == (3648664i32)) {
                    _e._shiftOffsets();
                    _gotoNext = 3648808i32;
                } else if (__value__ == (3648808i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3648845i32;
                    } else {
                        _gotoNext = 3649110i32;
                    };
                } else if (__value__ == (3648845i32)) {
                    _e._cur = (_e._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3649110i32;
                } else if (__value__ == (3649110i32)) {
                    _sLimit_3649110 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3649221 = (0 : stdgo.GoInt32);
                    _s_3649243 = (0 : stdgo.GoInt32);
                    _cv_3649258 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3649243);
                    _nextHash_3649280 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3649258);
                    var __blank__ = 0i32;
                    _gotoNext = 3649303i32;
                } else if (__value__ == (3649303i32)) {
                    if (true) {
                        _gotoNext = 3649307i32;
                    } else {
                        _gotoNext = 3652798i32;
                    };
                } else if (__value__ == (3649307i32)) {
                    _skip_3650155 = (32 : stdgo.GoInt32);
                    _nextS_3650176 = _s_3649243;
                    var __blank__ = 0i32;
                    _gotoNext = 3650216i32;
                } else if (__value__ == (3650216i32)) {
                    if (true) {
                        _gotoNext = 3650220i32;
                    } else {
                        _gotoNext = 3650925i32;
                    };
                } else if (__value__ == (3650220i32)) {
                    _s_3649243 = _nextS_3650176;
                    _bytesBetweenHashLookups_3650238 = (_skip_3650155 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3650176 = (_s_3649243 + _bytesBetweenHashLookups_3650238 : stdgo.GoInt32);
                    _skip_3650155 = (_skip_3650155 + (_bytesBetweenHashLookups_3650238) : stdgo.GoInt32);
                    if ((_nextS_3650176 > _sLimit_3649110 : Bool)) {
                        _gotoNext = 3650370i32;
                    } else {
                        _gotoNext = 3650403i32;
                    };
                } else if (__value__ == (3650370i32)) {
                    _gotoNext = 3652798i32;
                } else if (__value__ == (3650403i32)) {
                    _candidate_3650193 = _e._table[((_nextHash_3649280 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3650446 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3650176);
                    _e._table[((_nextHash_3649280 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3649243 + _e._cur : stdgo.GoInt32), _val : _cv_3649258 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3649280 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3650446);
                    _offset_3650572 = (_s_3649243 - ((_candidate_3650193._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3650572 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3649258 != _candidate_3650193._val) : Bool)) {
                        _gotoNext = 3650666i32;
                    } else {
                        _gotoNext = 3650738i32;
                    };
                } else if (__value__ == (3650666i32)) {
                    _cv_3649258 = _now_3650446;
                    var __blank__ = 0i32;
                    _gotoNext = 3650216i32;
                } else if (__value__ == (3650738i32)) {
                    _gotoNext = 3650925i32;
                } else if (__value__ == (3650925i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3649221, _s_3649243) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3651456i32;
                } else if (__value__ == (3651456i32)) {
                    if (true) {
                        _gotoNext = 3651460i32;
                    } else {
                        _gotoNext = 3652798i32;
                    };
                } else if (__value__ == (3651460i32)) {
                    _s_3649243 = (_s_3649243 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3651635 = ((_candidate_3650193._offset - _e._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3651672 = _e._matchLen(_s_3649243, _t_3651635, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3651672 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3649243 - _t_3651635 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3649243 = (_s_3649243 + (_l_3651672) : stdgo.GoInt32);
                    _nextEmit_3649221 = _s_3649243;
                    if ((_s_3649243 >= _sLimit_3649110 : Bool)) {
                        _gotoNext = 3651912i32;
                    } else {
                        _gotoNext = 3652312i32;
                    };
                } else if (__value__ == (3651912i32)) {
                    _gotoNext = 3652798i32;
                } else if (__value__ == (3652312i32)) {
                    _x_3652312 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3649243 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3652337 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3652312 : stdgo.GoUInt32));
                    _e._table[((_prevHash_3652337 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((_e._cur + _s_3649243 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3652312 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3652312 = (_x_3652312 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3652462 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3652312 : stdgo.GoUInt32));
                    _candidate_3650193 = _e._table[((_currHash_3652462 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _e._table[((_currHash_3652462 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_e._cur + _s_3649243 : stdgo.GoInt32), _val : (_x_3652312 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3652616 = (_s_3649243 - ((_candidate_3650193._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3652616 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3652312 : stdgo.GoUInt32) != _candidate_3650193._val) : Bool)) {
                        _gotoNext = 3652717i32;
                    } else {
                        _gotoNext = 3652798i32;
                    };
                } else if (__value__ == (3652717i32)) {
                    _cv_3649258 = ((_x_3652312 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3649280 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3649258);
                    _s_3649243++;
                    _gotoNext = 3652798i32;
                } else if (__value__ == (3652798i32)) {
                    _gotoNext = 3652798i32;
                    if (((_nextEmit_3649221 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3652842i32;
                    } else {
                        _gotoNext = 3652889i32;
                    };
                } else if (__value__ == (3652842i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3649221) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3652889i32;
                } else if (__value__ == (3652889i32)) {
                    _e._cur = (_e._cur + ((_src.length : stdgo.GoInt32)) : stdgo.GoInt32);
                    _e._prev = (_e._prev.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    stdgo.Go.copySlice(_e._prev, _src);
                    return _dst;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
