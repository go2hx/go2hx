package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var searchBreak = false;
        var _x_3836521:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3837447:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3836870:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3836526_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3836497:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3837165:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3836750:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3836718:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3836497 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836610i32;
                    } else {
                        _gotoNext = 3836614i32;
                    };
                } else if (__value__ == (3836536i32)) {
                    _x_3836521 = _stk[(_i_3836526_0 : stdgo.GoInt)];
                    _h_3836497 = ((_h_3836497 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836497 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836497 = (_h_3836497 + (((_x_3836521 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3836526_0++;
                    _gotoNext = 3836611i32;
                } else if (__value__ == (3836610i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3836526_0 = __tmp__0;
                        _x_3836521 = __tmp__1;
                    };
                    _gotoNext = 3836611i32;
                } else if (__value__ == (3836611i32)) {
                    if (_i_3836526_0 < (_stk.length)) {
                        _gotoNext = 3836536i32;
                    } else {
                        _gotoNext = 3836614i32;
                    };
                } else if (__value__ == (3836614i32)) {
                    _h_3836497 = ((_h_3836497 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3836497 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3836497 = (_h_3836497 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3836737i32;
                } else if (__value__ == (3836737i32)) {
                    _e_3836750 = (_m._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836746i32)) {
                    if (!searchBreak && ((_e_3836750 != null && ((_e_3836750 : Dynamic).__nil__ == null || !(_e_3836750 : Dynamic).__nil__)))) {
                        _gotoNext = 3836800i32;
                    } else {
                        _gotoNext = 3837103i32;
                    };
                } else if (__value__ == (3836800i32)) {
                    if (((_e_3836750._stk.length != (_stk.length)) || (_e_3836750._tag != _tag) : Bool)) {
                        _gotoNext = 3836846i32;
                    } else {
                        _gotoNext = 3836866i32;
                    };
                } else if (__value__ == (3836846i32)) {
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = _e_3836750._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836866i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3836949i32;
                    } else {
                        _gotoNext = 3836974i32;
                    };
                } else if (__value__ == (3836870i32)) {
                    _j_3836870++;
                    _gotoNext = 3836950i32;
                } else if (__value__ == (3836885i32)) {
                    if (_e_3836750._stk[(_j_3836870 : stdgo.GoInt)] != ((_stk[(_j_3836870 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3836921i32;
                    } else {
                        _gotoNext = 3836870i32;
                    };
                } else if (__value__ == (3836921i32)) {
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = _e_3836750._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3836949i32)) {
                    _j_3836870 = 0i32;
                    _gotoNext = 3836950i32;
                } else if (__value__ == (3836950i32)) {
                    if (_j_3836870 < (_stk.length)) {
                        _gotoNext = 3836885i32;
                    } else {
                        _gotoNext = 3836974i32;
                    };
                } else if (__value__ == (3836974i32)) {
                    if ((_last_3836718 != null && ((_last_3836718 : Dynamic).__nil__ == null || !(_last_3836718 : Dynamic).__nil__))) {
                        _gotoNext = 3836989i32;
                    } else {
                        _gotoNext = 3837070i32;
                    };
                } else if (__value__ == (3836989i32)) {
                    _last_3836718._nextHash = _e_3836750._nextHash;
                    _e_3836750._nextHash = (_m._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3836497] = _e_3836750;
                    _gotoNext = 3837070i32;
                } else if (__value__ == (3837070i32)) {
                    return _e_3836750;
                    {
                        final __tmp__0 = _e_3836750;
                        final __tmp__1 = _e_3836750._nextHash;
                        _last_3836718 = __tmp__0;
                        _e_3836750 = __tmp__1;
                    };
                    _gotoNext = 3836746i32;
                } else if (__value__ == (3837103i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3837122i32;
                    } else {
                        _gotoNext = 3837165i32;
                    };
                } else if (__value__ == (3837122i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3837165i32;
                } else if (__value__ == (3837165i32)) {
                    _e_3837165 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3837165._nextHash = (_m._hash[_h_3836497] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3837165._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3837270i32;
                    } else {
                        _gotoNext = 3837369i32;
                    };
                } else if (__value__ == (3837270i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3837369i32;
                } else if (__value__ == (3837369i32)) {
                    _e_3837165._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3837493i32;
                    } else {
                        _gotoNext = 3837497i32;
                    };
                } else if (__value__ == (3837462i32)) {
                    _e_3837165._stk[(_j_3837447 : stdgo.GoInt)] = (_stk[(_j_3837447 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3837447++;
                    _gotoNext = 3837494i32;
                } else if (__value__ == (3837493i32)) {
                    _j_3837447 = 0i32;
                    _gotoNext = 3837494i32;
                } else if (__value__ == (3837494i32)) {
                    if (_j_3837447 < (_stk.length)) {
                        _gotoNext = 3837462i32;
                    } else {
                        _gotoNext = 3837497i32;
                    };
                } else if (__value__ == (3837497i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3837514i32;
                    } else {
                        _gotoNext = 3837563i32;
                    };
                } else if (__value__ == (3837514i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3837563i32;
                } else if (__value__ == (3837563i32)) {
                    _m._hash[_h_3836497] = _e_3837165;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3837594i32;
                    } else {
                        _gotoNext = 3837629i32;
                    };
                } else if (__value__ == (3837594i32)) {
                    _m._all = _e_3837165;
                    _m._last = _e_3837165;
                    _gotoNext = 3837669i32;
                } else if (__value__ == (3837629i32)) {
                    _gotoNext = 3837629i32;
                    _m._last._nextAll = _e_3837165;
                    _m._last = _e_3837165;
                    var __blank__ = 0i32;
                    _gotoNext = 3837669i32;
                } else if (__value__ == (3837669i32)) {
                    return _e_3837165;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
