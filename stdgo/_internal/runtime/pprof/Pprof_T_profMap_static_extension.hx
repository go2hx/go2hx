package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _e_3865769:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3865474:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3865354:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3865322:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3865125:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3866051:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _i_3865130_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3865101:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3865101 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865214i32;
                    } else {
                        _gotoNext = 3865218i32;
                    };
                } else if (__value__ == (3865140i32)) {
                    _x_3865125 = _stk[(_i_3865130_0 : stdgo.GoInt)];
                    _h_3865101 = ((_h_3865101 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3865101 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3865101 = (_h_3865101 + (((_x_3865125 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3865130_0++;
                    _gotoNext = 3865215i32;
                } else if (__value__ == (3865214i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3865130_0 = __tmp__0;
                        _x_3865125 = __tmp__1;
                    };
                    _gotoNext = 3865215i32;
                } else if (__value__ == (3865215i32)) {
                    if (_i_3865130_0 < (_stk.length)) {
                        _gotoNext = 3865140i32;
                    } else {
                        _gotoNext = 3865218i32;
                    };
                } else if (__value__ == (3865218i32)) {
                    _h_3865101 = ((_h_3865101 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3865101 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3865101 = (_h_3865101 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3865341i32;
                } else if (__value__ == (3865341i32)) {
                    _e_3865354 = (_m._hash[_h_3865101] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3865350i32;
                } else if (__value__ == (3865350i32)) {
                    if (!searchBreak && ((_e_3865354 != null && ((_e_3865354 : Dynamic).__nil__ == null || !(_e_3865354 : Dynamic).__nil__)))) {
                        _gotoNext = 3865404i32;
                    } else {
                        _gotoNext = 3865707i32;
                    };
                } else if (__value__ == (3865404i32)) {
                    if (((_e_3865354._stk.length != (_stk.length)) || (_e_3865354._tag != _tag) : Bool)) {
                        _gotoNext = 3865450i32;
                    } else {
                        _gotoNext = 3865470i32;
                    };
                } else if (__value__ == (3865450i32)) {
                    {
                        final __tmp__0 = _e_3865354;
                        final __tmp__1 = _e_3865354._nextHash;
                        _last_3865322 = __tmp__0;
                        _e_3865354 = __tmp__1;
                    };
                    _gotoNext = 3865350i32;
                } else if (__value__ == (3865470i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865553i32;
                    } else {
                        _gotoNext = 3865578i32;
                    };
                } else if (__value__ == (3865474i32)) {
                    _j_3865474++;
                    _gotoNext = 3865554i32;
                } else if (__value__ == (3865489i32)) {
                    if (_e_3865354._stk[(_j_3865474 : stdgo.GoInt)] != ((_stk[(_j_3865474 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3865525i32;
                    } else {
                        _gotoNext = 3865474i32;
                    };
                } else if (__value__ == (3865525i32)) {
                    {
                        final __tmp__0 = _e_3865354;
                        final __tmp__1 = _e_3865354._nextHash;
                        _last_3865322 = __tmp__0;
                        _e_3865354 = __tmp__1;
                    };
                    _gotoNext = 3865350i32;
                } else if (__value__ == (3865553i32)) {
                    _j_3865474 = 0i32;
                    _gotoNext = 3865554i32;
                } else if (__value__ == (3865554i32)) {
                    if (_j_3865474 < (_stk.length)) {
                        _gotoNext = 3865489i32;
                    } else {
                        _gotoNext = 3865578i32;
                    };
                } else if (__value__ == (3865578i32)) {
                    if ((_last_3865322 != null && ((_last_3865322 : Dynamic).__nil__ == null || !(_last_3865322 : Dynamic).__nil__))) {
                        _gotoNext = 3865593i32;
                    } else {
                        _gotoNext = 3865674i32;
                    };
                } else if (__value__ == (3865593i32)) {
                    _last_3865322._nextHash = _e_3865354._nextHash;
                    _e_3865354._nextHash = (_m._hash[_h_3865101] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3865101] = _e_3865354;
                    _gotoNext = 3865674i32;
                } else if (__value__ == (3865674i32)) {
                    return _e_3865354;
                    {
                        final __tmp__0 = _e_3865354;
                        final __tmp__1 = _e_3865354._nextHash;
                        _last_3865322 = __tmp__0;
                        _e_3865354 = __tmp__1;
                    };
                    _gotoNext = 3865350i32;
                } else if (__value__ == (3865707i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3865726i32;
                    } else {
                        _gotoNext = 3865769i32;
                    };
                } else if (__value__ == (3865726i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3865769i32;
                } else if (__value__ == (3865769i32)) {
                    _e_3865769 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3865769._nextHash = (_m._hash[_h_3865101] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3865769._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3865874i32;
                    } else {
                        _gotoNext = 3865973i32;
                    };
                } else if (__value__ == (3865874i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3865973i32;
                } else if (__value__ == (3865973i32)) {
                    _e_3865769._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866097i32;
                    } else {
                        _gotoNext = 3866101i32;
                    };
                } else if (__value__ == (3866066i32)) {
                    _e_3865769._stk[(_j_3866051 : stdgo.GoInt)] = (_stk[(_j_3866051 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3866051++;
                    _gotoNext = 3866098i32;
                } else if (__value__ == (3866097i32)) {
                    _j_3866051 = 0i32;
                    _gotoNext = 3866098i32;
                } else if (__value__ == (3866098i32)) {
                    if (_j_3866051 < (_stk.length)) {
                        _gotoNext = 3866066i32;
                    } else {
                        _gotoNext = 3866101i32;
                    };
                } else if (__value__ == (3866101i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3866118i32;
                    } else {
                        _gotoNext = 3866167i32;
                    };
                } else if (__value__ == (3866118i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3866167i32;
                } else if (__value__ == (3866167i32)) {
                    _m._hash[_h_3865101] = _e_3865769;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3866198i32;
                    } else {
                        _gotoNext = 3866233i32;
                    };
                } else if (__value__ == (3866198i32)) {
                    _m._all = _e_3865769;
                    _m._last = _e_3865769;
                    _gotoNext = 3866273i32;
                } else if (__value__ == (3866233i32)) {
                    _gotoNext = 3866233i32;
                    _m._last._nextAll = _e_3865769;
                    _m._last = _e_3865769;
                    var __blank__ = 0i32;
                    _gotoNext = 3866273i32;
                } else if (__value__ == (3866273i32)) {
                    return _e_3865769;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
