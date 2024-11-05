package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var searchBreak = false;
        var _last_3892280:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3892088_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3892432:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3892312:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3892083:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3892059:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3893009:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3892727:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3892059 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892172i32;
                    } else {
                        _gotoNext = 3892176i32;
                    };
                } else if (__value__ == (3892098i32)) {
                    _x_3892083 = _stk[(_i_3892088_0 : stdgo.GoInt)];
                    _h_3892059 = ((_h_3892059 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892059 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892059 = (_h_3892059 + (((_x_3892083 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3892088_0++;
                    _gotoNext = 3892173i32;
                } else if (__value__ == (3892172i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3892088_0 = __tmp__0;
                        _x_3892083 = __tmp__1;
                    };
                    _gotoNext = 3892173i32;
                } else if (__value__ == (3892173i32)) {
                    if (_i_3892088_0 < (_stk.length)) {
                        _gotoNext = 3892098i32;
                    } else {
                        _gotoNext = 3892176i32;
                    };
                } else if (__value__ == (3892176i32)) {
                    _h_3892059 = ((_h_3892059 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892059 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892059 = (_h_3892059 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3892299i32;
                } else if (__value__ == (3892299i32)) {
                    _e_3892312 = (_m._hash[_h_3892059] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3892308i32;
                } else if (__value__ == (3892308i32)) {
                    if (!searchBreak && (_e_3892312 != null && ((_e_3892312 : Dynamic).__nil__ == null || !(_e_3892312 : Dynamic).__nil__))) {
                        _gotoNext = 3892362i32;
                    } else {
                        _gotoNext = 3892665i32;
                    };
                } else if (__value__ == (3892362i32)) {
                    if (((_e_3892312._stk.length != (_stk.length)) || (_e_3892312._tag != _tag) : Bool)) {
                        _gotoNext = 3892408i32;
                    } else {
                        _gotoNext = 3892428i32;
                    };
                } else if (__value__ == (3892408i32)) {
                    {
                        final __tmp__0 = _e_3892312;
                        final __tmp__1 = _e_3892312._nextHash;
                        _last_3892280 = __tmp__0;
                        _e_3892312 = __tmp__1;
                    };
                    _gotoNext = 3892308i32;
                } else if (__value__ == (3892428i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892511i32;
                    } else {
                        _gotoNext = 3892536i32;
                    };
                } else if (__value__ == (3892432i32)) {
                    _j_3892432++;
                    _gotoNext = 3892512i32;
                } else if (__value__ == (3892447i32)) {
                    if (_e_3892312._stk[(_j_3892432 : stdgo.GoInt)] != ((_stk[(_j_3892432 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3892483i32;
                    } else {
                        _gotoNext = 3892432i32;
                    };
                } else if (__value__ == (3892483i32)) {
                    {
                        final __tmp__0 = _e_3892312;
                        final __tmp__1 = _e_3892312._nextHash;
                        _last_3892280 = __tmp__0;
                        _e_3892312 = __tmp__1;
                    };
                    _gotoNext = 3892308i32;
                } else if (__value__ == (3892511i32)) {
                    _j_3892432 = 0i32;
                    _gotoNext = 3892512i32;
                } else if (__value__ == (3892512i32)) {
                    if (_j_3892432 < (_stk.length)) {
                        _gotoNext = 3892447i32;
                    } else {
                        _gotoNext = 3892536i32;
                    };
                } else if (__value__ == (3892536i32)) {
                    if (_last_3892280 != null && ((_last_3892280 : Dynamic).__nil__ == null || !(_last_3892280 : Dynamic).__nil__)) {
                        _gotoNext = 3892551i32;
                    } else {
                        _gotoNext = 3892632i32;
                    };
                } else if (__value__ == (3892551i32)) {
                    _last_3892280._nextHash = _e_3892312._nextHash;
                    _e_3892312._nextHash = (_m._hash[_h_3892059] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3892059] = _e_3892312;
                    _gotoNext = 3892632i32;
                } else if (__value__ == (3892632i32)) {
                    return _e_3892312;
                    {
                        final __tmp__0 = _e_3892312;
                        final __tmp__1 = _e_3892312._nextHash;
                        _last_3892280 = __tmp__0;
                        _e_3892312 = __tmp__1;
                    };
                    _gotoNext = 3892308i32;
                } else if (__value__ == (3892665i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3892684i32;
                    } else {
                        _gotoNext = 3892727i32;
                    };
                } else if (__value__ == (3892684i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3892727i32;
                } else if (__value__ == (3892727i32)) {
                    _e_3892727 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3892727._nextHash = (_m._hash[_h_3892059] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3892727._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3892832i32;
                    } else {
                        _gotoNext = 3892931i32;
                    };
                } else if (__value__ == (3892832i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3892931i32;
                } else if (__value__ == (3892931i32)) {
                    _e_3892727._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3893055i32;
                    } else {
                        _gotoNext = 3893059i32;
                    };
                } else if (__value__ == (3893024i32)) {
                    _e_3892727._stk[(_j_3893009 : stdgo.GoInt)] = (_stk[(_j_3893009 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3893009++;
                    _gotoNext = 3893056i32;
                } else if (__value__ == (3893055i32)) {
                    _j_3893009 = 0i32;
                    _gotoNext = 3893056i32;
                } else if (__value__ == (3893056i32)) {
                    if (_j_3893009 < (_stk.length)) {
                        _gotoNext = 3893024i32;
                    } else {
                        _gotoNext = 3893059i32;
                    };
                } else if (__value__ == (3893059i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3893076i32;
                    } else {
                        _gotoNext = 3893125i32;
                    };
                } else if (__value__ == (3893076i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3893125i32;
                } else if (__value__ == (3893125i32)) {
                    _m._hash[_h_3892059] = _e_3892727;
                    if (_m._all == null || (_m._all : Dynamic).__nil__) {
                        _gotoNext = 3893156i32;
                    } else {
                        _gotoNext = 3893191i32;
                    };
                } else if (__value__ == (3893156i32)) {
                    _m._all = _e_3892727;
                    _m._last = _e_3892727;
                    _gotoNext = 3893231i32;
                } else if (__value__ == (3893191i32)) {
                    _m._last._nextAll = _e_3892727;
                    _m._last = _e_3892727;
                    _gotoNext = 3893231i32;
                } else if (__value__ == (3893231i32)) {
                    return _e_3892727;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
