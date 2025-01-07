package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _i_3867428_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3868349:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3867772:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _last_3867620:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3867423:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3867399:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3868067:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3867652:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3867399 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867512i32;
                    } else {
                        _gotoNext = 3867516i32;
                    };
                } else if (__value__ == (3867438i32)) {
                    _x_3867423 = _stk[(_i_3867428_0 : stdgo.GoInt)];
                    _h_3867399 = ((_h_3867399 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3867399 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3867399 = (_h_3867399 + (((_x_3867423 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3867428_0++;
                    _gotoNext = 3867513i32;
                } else if (__value__ == (3867512i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3867428_0 = __tmp__0;
                        _x_3867423 = __tmp__1;
                    };
                    _gotoNext = 3867513i32;
                } else if (__value__ == (3867513i32)) {
                    if (_i_3867428_0 < (_stk.length)) {
                        _gotoNext = 3867438i32;
                    } else {
                        _gotoNext = 3867516i32;
                    };
                } else if (__value__ == (3867516i32)) {
                    _h_3867399 = ((_h_3867399 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3867399 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3867399 = (_h_3867399 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3867639i32;
                } else if (__value__ == (3867639i32)) {
                    _e_3867652 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3867399] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3867648i32;
                } else if (__value__ == (3867648i32)) {
                    if (!searchBreak && ((_e_3867652 != null && ((_e_3867652 : Dynamic).__nil__ == null || !(_e_3867652 : Dynamic).__nil__)))) {
                        _gotoNext = 3867702i32;
                    } else {
                        _gotoNext = 3868005i32;
                    };
                } else if (__value__ == (3867702i32)) {
                    if ((((@:checkr _e_3867652 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3867652 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3867748i32;
                    } else {
                        _gotoNext = 3867768i32;
                    };
                } else if (__value__ == (3867748i32)) {
                    {
                        final __tmp__0 = _e_3867652;
                        final __tmp__1 = (@:checkr _e_3867652 ?? throw "null pointer dereference")._nextHash;
                        _last_3867620 = __tmp__0;
                        _e_3867652 = __tmp__1;
                    };
                    _gotoNext = 3867648i32;
                } else if (__value__ == (3867768i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867851i32;
                    } else {
                        _gotoNext = 3867876i32;
                    };
                } else if (__value__ == (3867772i32)) {
                    _j_3867772++;
                    _gotoNext = 3867852i32;
                } else if (__value__ == (3867787i32)) {
                    if ((@:checkr _e_3867652 ?? throw "null pointer dereference")._stk[(_j_3867772 : stdgo.GoInt)] != ((_stk[(_j_3867772 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3867823i32;
                    } else {
                        _gotoNext = 3867772i32;
                    };
                } else if (__value__ == (3867823i32)) {
                    {
                        final __tmp__0 = _e_3867652;
                        final __tmp__1 = (@:checkr _e_3867652 ?? throw "null pointer dereference")._nextHash;
                        _last_3867620 = __tmp__0;
                        _e_3867652 = __tmp__1;
                    };
                    _gotoNext = 3867648i32;
                } else if (__value__ == (3867851i32)) {
                    _j_3867772 = 0i32;
                    _gotoNext = 3867852i32;
                } else if (__value__ == (3867852i32)) {
                    if (_j_3867772 < (_stk.length)) {
                        _gotoNext = 3867787i32;
                    } else {
                        _gotoNext = 3867876i32;
                    };
                } else if (__value__ == (3867876i32)) {
                    if ((_last_3867620 != null && ((_last_3867620 : Dynamic).__nil__ == null || !(_last_3867620 : Dynamic).__nil__))) {
                        _gotoNext = 3867891i32;
                    } else {
                        _gotoNext = 3867972i32;
                    };
                } else if (__value__ == (3867891i32)) {
                    (@:checkr _last_3867620 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3867652 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3867652 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3867399] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3867399] = _e_3867652;
                    _gotoNext = 3867972i32;
                } else if (__value__ == (3867972i32)) {
                    return _e_3867652;
                    {
                        final __tmp__0 = _e_3867652;
                        final __tmp__1 = (@:checkr _e_3867652 ?? throw "null pointer dereference")._nextHash;
                        _last_3867620 = __tmp__0;
                        _e_3867652 = __tmp__1;
                    };
                    _gotoNext = 3867648i32;
                } else if (__value__ == (3868005i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3868024i32;
                    } else {
                        _gotoNext = 3868067i32;
                    };
                } else if (__value__ == (3868024i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3868067i32;
                } else if (__value__ == (3868067i32)) {
                    _e_3868067 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3868067 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3867399] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3868067 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3868172i32;
                    } else {
                        _gotoNext = 3868271i32;
                    };
                } else if (__value__ == (3868172i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3868271i32;
                } else if (__value__ == (3868271i32)) {
                    (@:checkr _e_3868067 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3868395i32;
                    } else {
                        _gotoNext = 3868399i32;
                    };
                } else if (__value__ == (3868364i32)) {
                    (@:checkr _e_3868067 ?? throw "null pointer dereference")._stk[(_j_3868349 : stdgo.GoInt)] = (_stk[(_j_3868349 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3868349++;
                    _gotoNext = 3868396i32;
                } else if (__value__ == (3868395i32)) {
                    _j_3868349 = 0i32;
                    _gotoNext = 3868396i32;
                } else if (__value__ == (3868396i32)) {
                    if (_j_3868349 < (_stk.length)) {
                        _gotoNext = 3868364i32;
                    } else {
                        _gotoNext = 3868399i32;
                    };
                } else if (__value__ == (3868399i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3868416i32;
                    } else {
                        _gotoNext = 3868465i32;
                    };
                } else if (__value__ == (3868416i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3868465i32;
                } else if (__value__ == (3868465i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3867399] = _e_3868067;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3868496i32;
                    } else {
                        _gotoNext = 3868531i32;
                    };
                } else if (__value__ == (3868496i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3868067;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3868067;
                    _gotoNext = 3868571i32;
                } else if (__value__ == (3868531i32)) {
                    _gotoNext = 3868531i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3868067;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3868067;
                    var __blank__ = 0i32;
                    _gotoNext = 3868571i32;
                } else if (__value__ == (3868571i32)) {
                    return _e_3868067;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
