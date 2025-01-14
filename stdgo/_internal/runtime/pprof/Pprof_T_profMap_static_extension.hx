package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3834411:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3834129:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3833834:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3833682:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3833485:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3833461:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var searchBreak = false;
        var _e_3833714:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3833490_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3833461 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3833574i32;
                    } else {
                        _gotoNext = 3833578i32;
                    };
                } else if (__value__ == (3833500i32)) {
                    _x_3833485 = _stk[(_i_3833490_0 : stdgo.GoInt)];
                    _h_3833461 = ((_h_3833461 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833461 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833461 = (_h_3833461 + (((_x_3833485 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3833490_0++;
                    _gotoNext = 3833575i32;
                } else if (__value__ == (3833574i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3833490_0 = __tmp__0;
                        _x_3833485 = __tmp__1;
                    };
                    _gotoNext = 3833575i32;
                } else if (__value__ == (3833575i32)) {
                    if (_i_3833490_0 < (_stk.length)) {
                        _gotoNext = 3833500i32;
                    } else {
                        _gotoNext = 3833578i32;
                    };
                } else if (__value__ == (3833578i32)) {
                    _h_3833461 = ((_h_3833461 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833461 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833461 = (_h_3833461 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3833701i32;
                } else if (__value__ == (3833701i32)) {
                    _e_3833714 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833461] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3833710i32;
                } else if (__value__ == (3833710i32)) {
                    if (!searchBreak && ((_e_3833714 != null && ((_e_3833714 : Dynamic).__nil__ == null || !(_e_3833714 : Dynamic).__nil__)))) {
                        _gotoNext = 3833764i32;
                    } else {
                        _gotoNext = 3834067i32;
                    };
                } else if (__value__ == (3833764i32)) {
                    if ((((@:checkr _e_3833714 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3833714 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3833810i32;
                    } else {
                        _gotoNext = 3833830i32;
                    };
                } else if (__value__ == (3833810i32)) {
                    {
                        final __tmp__0 = _e_3833714;
                        final __tmp__1 = (@:checkr _e_3833714 ?? throw "null pointer dereference")._nextHash;
                        _last_3833682 = __tmp__0;
                        _e_3833714 = __tmp__1;
                    };
                    _gotoNext = 3833710i32;
                } else if (__value__ == (3833830i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3833913i32;
                    } else {
                        _gotoNext = 3833938i32;
                    };
                } else if (__value__ == (3833834i32)) {
                    _j_3833834++;
                    _gotoNext = 3833914i32;
                } else if (__value__ == (3833849i32)) {
                    if ((@:checkr _e_3833714 ?? throw "null pointer dereference")._stk[(_j_3833834 : stdgo.GoInt)] != ((_stk[(_j_3833834 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3833885i32;
                    } else {
                        _gotoNext = 3833834i32;
                    };
                } else if (__value__ == (3833885i32)) {
                    {
                        final __tmp__0 = _e_3833714;
                        final __tmp__1 = (@:checkr _e_3833714 ?? throw "null pointer dereference")._nextHash;
                        _last_3833682 = __tmp__0;
                        _e_3833714 = __tmp__1;
                    };
                    _gotoNext = 3833710i32;
                } else if (__value__ == (3833913i32)) {
                    _j_3833834 = 0i32;
                    _gotoNext = 3833914i32;
                } else if (__value__ == (3833914i32)) {
                    if (_j_3833834 < (_stk.length)) {
                        _gotoNext = 3833849i32;
                    } else {
                        _gotoNext = 3833938i32;
                    };
                } else if (__value__ == (3833938i32)) {
                    if ((_last_3833682 != null && ((_last_3833682 : Dynamic).__nil__ == null || !(_last_3833682 : Dynamic).__nil__))) {
                        _gotoNext = 3833953i32;
                    } else {
                        _gotoNext = 3834034i32;
                    };
                } else if (__value__ == (3833953i32)) {
                    (@:checkr _last_3833682 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3833714 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3833714 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833461] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833461] = _e_3833714;
                    _gotoNext = 3834034i32;
                } else if (__value__ == (3834034i32)) {
                    return _e_3833714;
                    {
                        final __tmp__0 = _e_3833714;
                        final __tmp__1 = (@:checkr _e_3833714 ?? throw "null pointer dereference")._nextHash;
                        _last_3833682 = __tmp__0;
                        _e_3833714 = __tmp__1;
                    };
                    _gotoNext = 3833710i32;
                } else if (__value__ == (3834067i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3834086i32;
                    } else {
                        _gotoNext = 3834129i32;
                    };
                } else if (__value__ == (3834086i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3834129i32;
                } else if (__value__ == (3834129i32)) {
                    _e_3834129 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3834129 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833461] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3834129 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3834234i32;
                    } else {
                        _gotoNext = 3834333i32;
                    };
                } else if (__value__ == (3834234i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3834333i32;
                } else if (__value__ == (3834333i32)) {
                    (@:checkr _e_3834129 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3834457i32;
                    } else {
                        _gotoNext = 3834461i32;
                    };
                } else if (__value__ == (3834426i32)) {
                    (@:checkr _e_3834129 ?? throw "null pointer dereference")._stk[(_j_3834411 : stdgo.GoInt)] = (_stk[(_j_3834411 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3834411++;
                    _gotoNext = 3834458i32;
                } else if (__value__ == (3834457i32)) {
                    _j_3834411 = 0i32;
                    _gotoNext = 3834458i32;
                } else if (__value__ == (3834458i32)) {
                    if (_j_3834411 < (_stk.length)) {
                        _gotoNext = 3834426i32;
                    } else {
                        _gotoNext = 3834461i32;
                    };
                } else if (__value__ == (3834461i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3834478i32;
                    } else {
                        _gotoNext = 3834527i32;
                    };
                } else if (__value__ == (3834478i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3834527i32;
                } else if (__value__ == (3834527i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833461] = _e_3834129;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3834558i32;
                    } else {
                        _gotoNext = 3834593i32;
                    };
                } else if (__value__ == (3834558i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3834129;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3834129;
                    _gotoNext = 3834633i32;
                } else if (__value__ == (3834593i32)) {
                    _gotoNext = 3834593i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3834129;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3834129;
                    var __blank__ = 0i32;
                    _gotoNext = 3834633i32;
                } else if (__value__ == (3834633i32)) {
                    return _e_3834129;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
