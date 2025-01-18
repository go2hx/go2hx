package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _i_3833664_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3834303:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _h_3833635:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3834585:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3834008:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3833888:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3833856:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3833659:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3833635 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3833748i32;
                    } else {
                        _gotoNext = 3833752i32;
                    };
                } else if (__value__ == (3833674i32)) {
                    _x_3833659 = _stk[(_i_3833664_0 : stdgo.GoInt)];
                    _h_3833635 = ((_h_3833635 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833635 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833635 = (_h_3833635 + (((_x_3833659 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3833664_0++;
                    _gotoNext = 3833749i32;
                } else if (__value__ == (3833748i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3833664_0 = __tmp__0;
                        _x_3833659 = __tmp__1;
                    };
                    _gotoNext = 3833749i32;
                } else if (__value__ == (3833749i32)) {
                    if (_i_3833664_0 < (_stk.length)) {
                        _gotoNext = 3833674i32;
                    } else {
                        _gotoNext = 3833752i32;
                    };
                } else if (__value__ == (3833752i32)) {
                    _h_3833635 = ((_h_3833635 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3833635 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3833635 = (_h_3833635 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3833875i32;
                } else if (__value__ == (3833875i32)) {
                    _e_3833888 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833635] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3833884i32;
                } else if (__value__ == (3833884i32)) {
                    if (!searchBreak && ((_e_3833888 != null && ((_e_3833888 : Dynamic).__nil__ == null || !(_e_3833888 : Dynamic).__nil__)))) {
                        _gotoNext = 3833938i32;
                    } else {
                        _gotoNext = 3834241i32;
                    };
                } else if (__value__ == (3833938i32)) {
                    if ((((@:checkr _e_3833888 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3833888 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3833984i32;
                    } else {
                        _gotoNext = 3834004i32;
                    };
                } else if (__value__ == (3833984i32)) {
                    {
                        final __tmp__0 = _e_3833888;
                        final __tmp__1 = (@:checkr _e_3833888 ?? throw "null pointer dereference")._nextHash;
                        _last_3833856 = __tmp__0;
                        _e_3833888 = __tmp__1;
                    };
                    _gotoNext = 3833884i32;
                } else if (__value__ == (3834004i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3834087i32;
                    } else {
                        _gotoNext = 3834112i32;
                    };
                } else if (__value__ == (3834008i32)) {
                    _j_3834008++;
                    _gotoNext = 3834088i32;
                } else if (__value__ == (3834023i32)) {
                    if ((@:checkr _e_3833888 ?? throw "null pointer dereference")._stk[(_j_3834008 : stdgo.GoInt)] != ((_stk[(_j_3834008 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3834059i32;
                    } else {
                        _gotoNext = 3834008i32;
                    };
                } else if (__value__ == (3834059i32)) {
                    {
                        final __tmp__0 = _e_3833888;
                        final __tmp__1 = (@:checkr _e_3833888 ?? throw "null pointer dereference")._nextHash;
                        _last_3833856 = __tmp__0;
                        _e_3833888 = __tmp__1;
                    };
                    _gotoNext = 3833884i32;
                } else if (__value__ == (3834087i32)) {
                    _j_3834008 = 0i32;
                    _gotoNext = 3834088i32;
                } else if (__value__ == (3834088i32)) {
                    if (_j_3834008 < (_stk.length)) {
                        _gotoNext = 3834023i32;
                    } else {
                        _gotoNext = 3834112i32;
                    };
                } else if (__value__ == (3834112i32)) {
                    if ((_last_3833856 != null && ((_last_3833856 : Dynamic).__nil__ == null || !(_last_3833856 : Dynamic).__nil__))) {
                        _gotoNext = 3834127i32;
                    } else {
                        _gotoNext = 3834208i32;
                    };
                } else if (__value__ == (3834127i32)) {
                    (@:checkr _last_3833856 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3833888 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3833888 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833635] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833635] = _e_3833888;
                    _gotoNext = 3834208i32;
                } else if (__value__ == (3834208i32)) {
                    return _e_3833888;
                    {
                        final __tmp__0 = _e_3833888;
                        final __tmp__1 = (@:checkr _e_3833888 ?? throw "null pointer dereference")._nextHash;
                        _last_3833856 = __tmp__0;
                        _e_3833888 = __tmp__1;
                    };
                    _gotoNext = 3833884i32;
                } else if (__value__ == (3834241i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3834260i32;
                    } else {
                        _gotoNext = 3834303i32;
                    };
                } else if (__value__ == (3834260i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3834303i32;
                } else if (__value__ == (3834303i32)) {
                    _e_3834303 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3834303 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833635] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3834303 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3834408i32;
                    } else {
                        _gotoNext = 3834507i32;
                    };
                } else if (__value__ == (3834408i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3834507i32;
                } else if (__value__ == (3834507i32)) {
                    (@:checkr _e_3834303 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3834631i32;
                    } else {
                        _gotoNext = 3834635i32;
                    };
                } else if (__value__ == (3834600i32)) {
                    (@:checkr _e_3834303 ?? throw "null pointer dereference")._stk[(_j_3834585 : stdgo.GoInt)] = (_stk[(_j_3834585 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3834585++;
                    _gotoNext = 3834632i32;
                } else if (__value__ == (3834631i32)) {
                    _j_3834585 = 0i32;
                    _gotoNext = 3834632i32;
                } else if (__value__ == (3834632i32)) {
                    if (_j_3834585 < (_stk.length)) {
                        _gotoNext = 3834600i32;
                    } else {
                        _gotoNext = 3834635i32;
                    };
                } else if (__value__ == (3834635i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3834652i32;
                    } else {
                        _gotoNext = 3834701i32;
                    };
                } else if (__value__ == (3834652i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3834701i32;
                } else if (__value__ == (3834701i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3833635] = _e_3834303;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3834732i32;
                    } else {
                        _gotoNext = 3834767i32;
                    };
                } else if (__value__ == (3834732i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3834303;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3834303;
                    _gotoNext = 3834807i32;
                } else if (__value__ == (3834767i32)) {
                    _gotoNext = 3834767i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3834303;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3834303;
                    var __blank__ = 0i32;
                    _gotoNext = 3834807i32;
                } else if (__value__ == (3834807i32)) {
                    return _e_3834303;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
