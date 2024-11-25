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
        var _currHash_3729000:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _l_3728210:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _skip_3726693:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextEmit_3725759:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _sLimit_3725648:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3729154:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _t_3728173:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _now_3726984:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _bytesBetweenHashLookups_3726776:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _candidate_3726731:stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry = ({} : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
        var _nextS_3726714:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _offset_3727110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nextHash_3725818:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _s_3725781:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _prevHash_3728875:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _x_3728850:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _cv_3725796:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_e._cur >= (2147352577 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 3725202i32;
                    } else {
                        _gotoNext = 3725346i32;
                    };
                } else if (__value__ == (3725202i32)) {
                    _e._shiftOffsets();
                    _gotoNext = 3725346i32;
                } else if (__value__ == (3725346i32)) {
                    if (((_src.length) < (17 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3725383i32;
                    } else {
                        _gotoNext = 3725648i32;
                    };
                } else if (__value__ == (3725383i32)) {
                    _e._cur = (_e._cur + ((65535 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _e._prev = (_e._prev.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    return stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, _src);
                    _gotoNext = 3725648i32;
                } else if (__value__ == (3725648i32)) {
                    _sLimit_3725648 = (((_src.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32);
                    _nextEmit_3725759 = (0 : stdgo.GoInt32);
                    _s_3725781 = (0 : stdgo.GoInt32);
                    _cv_3725796 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _s_3725781);
                    _nextHash_3725818 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3725796);
                    var __blank__ = 0i32;
                    _gotoNext = 3725841i32;
                } else if (__value__ == (3725841i32)) {
                    if (true) {
                        _gotoNext = 3725845i32;
                    } else {
                        _gotoNext = 3729336i32;
                    };
                } else if (__value__ == (3725845i32)) {
                    _skip_3726693 = (32 : stdgo.GoInt32);
                    _nextS_3726714 = _s_3725781;
                    var __blank__ = 0i32;
                    _gotoNext = 3726754i32;
                } else if (__value__ == (3726754i32)) {
                    if (true) {
                        _gotoNext = 3726758i32;
                    } else {
                        _gotoNext = 3727463i32;
                    };
                } else if (__value__ == (3726758i32)) {
                    _s_3725781 = _nextS_3726714;
                    _bytesBetweenHashLookups_3726776 = (_skip_3726693 >> (5i64 : stdgo.GoUInt64) : stdgo.GoInt32);
                    _nextS_3726714 = (_s_3725781 + _bytesBetweenHashLookups_3726776 : stdgo.GoInt32);
                    _skip_3726693 = (_skip_3726693 + (_bytesBetweenHashLookups_3726776) : stdgo.GoInt32);
                    if ((_nextS_3726714 > _sLimit_3725648 : Bool)) {
                        _gotoNext = 3726908i32;
                    } else {
                        _gotoNext = 3726941i32;
                    };
                } else if (__value__ == (3726908i32)) {
                    _gotoNext = 3729336i32;
                } else if (__value__ == (3726941i32)) {
                    _candidate_3726731 = _e._table[((_nextHash_3725818 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _now_3726984 = stdgo._internal.compress.flate.Flate__load32._load32(_src, _nextS_3726714);
                    _e._table[((_nextHash_3725818 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_s_3725781 + _e._cur : stdgo.GoInt32), _val : _cv_3725796 } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _nextHash_3725818 = stdgo._internal.compress.flate.Flate__hash._hash(_now_3726984);
                    _offset_3727110 = (_s_3725781 - ((_candidate_3726731._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3727110 > (32768 : stdgo.GoInt32) : Bool) || (_cv_3725796 != _candidate_3726731._val) : Bool)) {
                        _gotoNext = 3727204i32;
                    } else {
                        _gotoNext = 3727276i32;
                    };
                } else if (__value__ == (3727204i32)) {
                    _cv_3725796 = _now_3726984;
                    var __blank__ = 0i32;
                    _gotoNext = 3726754i32;
                } else if (__value__ == (3727276i32)) {
                    _gotoNext = 3727463i32;
                } else if (__value__ == (3727463i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3725759, _s_3725781) : stdgo.Slice<stdgo.GoUInt8>));
                    var __blank__ = 0i32;
                    _gotoNext = 3727994i32;
                } else if (__value__ == (3727994i32)) {
                    if (true) {
                        _gotoNext = 3727998i32;
                    } else {
                        _gotoNext = 3729336i32;
                    };
                } else if (__value__ == (3727998i32)) {
                    _s_3725781 = (_s_3725781 + ((4 : stdgo.GoInt32)) : stdgo.GoInt32);
                    _t_3728173 = ((_candidate_3726731._offset - _e._cur : stdgo.GoInt32) + (4 : stdgo.GoInt32) : stdgo.GoInt32);
                    _l_3728210 = _e._matchLen(_s_3725781, _t_3728173, _src);
                    _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__matchToken._matchToken((((_l_3728210 + (4 : stdgo.GoInt32) : stdgo.GoInt32) - (3 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32), (((_s_3725781 - _t_3728173 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32) : stdgo.GoUInt32))));
                    _s_3725781 = (_s_3725781 + (_l_3728210) : stdgo.GoInt32);
                    _nextEmit_3725759 = _s_3725781;
                    if ((_s_3725781 >= _sLimit_3725648 : Bool)) {
                        _gotoNext = 3728450i32;
                    } else {
                        _gotoNext = 3728850i32;
                    };
                } else if (__value__ == (3728450i32)) {
                    _gotoNext = 3729336i32;
                } else if (__value__ == (3728850i32)) {
                    _x_3728850 = stdgo._internal.compress.flate.Flate__load64._load64(_src, (_s_3725781 - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    _prevHash_3728875 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3728850 : stdgo.GoUInt32));
                    _e._table[((_prevHash_3728875 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : ((_e._cur + _s_3725781 : stdgo.GoInt32) - (1 : stdgo.GoInt32) : stdgo.GoInt32), _val : (_x_3728850 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _x_3728850 = (_x_3728850 >> ((8i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    _currHash_3729000 = stdgo._internal.compress.flate.Flate__hash._hash((_x_3728850 : stdgo.GoUInt32));
                    _candidate_3726731 = _e._table[((_currHash_3729000 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
                    _e._table[((_currHash_3729000 & (16383u32 : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] = ({ _offset : (_e._cur + _s_3725781 : stdgo.GoInt32), _val : (_x_3728850 : stdgo.GoUInt32) } : stdgo._internal.compress.flate.Flate_T_tableEntry.T_tableEntry);
                    _offset_3729154 = (_s_3725781 - ((_candidate_3726731._offset - _e._cur : stdgo.GoInt32)) : stdgo.GoInt32);
                    if (((_offset_3729154 > (32768 : stdgo.GoInt32) : Bool) || ((_x_3728850 : stdgo.GoUInt32) != _candidate_3726731._val) : Bool)) {
                        _gotoNext = 3729255i32;
                    } else {
                        _gotoNext = 3729336i32;
                    };
                } else if (__value__ == (3729255i32)) {
                    _cv_3725796 = ((_x_3728850 >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt32);
                    _nextHash_3725818 = stdgo._internal.compress.flate.Flate__hash._hash(_cv_3725796);
                    _s_3725781++;
                    _gotoNext = 3729336i32;
                } else if (__value__ == (3729336i32)) {
                    _gotoNext = 3729336i32;
                    if (((_nextEmit_3725759 : stdgo.GoInt) < (_src.length) : Bool)) {
                        _gotoNext = 3729380i32;
                    } else {
                        _gotoNext = 3729427i32;
                    };
                } else if (__value__ == (3729380i32)) {
                    _dst = stdgo._internal.compress.flate.Flate__emitLiteral._emitLiteral(_dst, (_src.__slice__(_nextEmit_3725759) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 3729427i32;
                } else if (__value__ == (3729427i32)) {
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
