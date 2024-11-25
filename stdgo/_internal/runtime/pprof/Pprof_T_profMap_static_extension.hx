package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _e_3891479:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3892176:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3891599:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3891226:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3891894:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _last_3891447:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3891250:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3891255_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3891226 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3891339i32;
                    } else {
                        _gotoNext = 3891343i32;
                    };
                } else if (__value__ == (3891265i32)) {
                    _x_3891250 = _stk[(_i_3891255_0 : stdgo.GoInt)];
                    _h_3891226 = ((_h_3891226 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3891226 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3891226 = (_h_3891226 + (((_x_3891250 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3891255_0++;
                    _gotoNext = 3891340i32;
                } else if (__value__ == (3891339i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3891255_0 = __tmp__0;
                        _x_3891250 = __tmp__1;
                    };
                    _gotoNext = 3891340i32;
                } else if (__value__ == (3891340i32)) {
                    if (_i_3891255_0 < (_stk.length)) {
                        _gotoNext = 3891265i32;
                    } else {
                        _gotoNext = 3891343i32;
                    };
                } else if (__value__ == (3891343i32)) {
                    _h_3891226 = ((_h_3891226 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3891226 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3891226 = (_h_3891226 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3891466i32;
                } else if (__value__ == (3891466i32)) {
                    _e_3891479 = (_m._hash[_h_3891226] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3891475i32;
                } else if (__value__ == (3891475i32)) {
                    if (!searchBreak && ((_e_3891479 != null && ((_e_3891479 : Dynamic).__nil__ == null || !(_e_3891479 : Dynamic).__nil__)))) {
                        _gotoNext = 3891529i32;
                    } else {
                        _gotoNext = 3891832i32;
                    };
                } else if (__value__ == (3891529i32)) {
                    if (((_e_3891479._stk.length != (_stk.length)) || (_e_3891479._tag != _tag) : Bool)) {
                        _gotoNext = 3891575i32;
                    } else {
                        _gotoNext = 3891595i32;
                    };
                } else if (__value__ == (3891575i32)) {
                    {
                        final __tmp__0 = _e_3891479;
                        final __tmp__1 = _e_3891479._nextHash;
                        _last_3891447 = __tmp__0;
                        _e_3891479 = __tmp__1;
                    };
                    _gotoNext = 3891475i32;
                } else if (__value__ == (3891595i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3891678i32;
                    } else {
                        _gotoNext = 3891703i32;
                    };
                } else if (__value__ == (3891599i32)) {
                    _j_3891599++;
                    _gotoNext = 3891679i32;
                } else if (__value__ == (3891614i32)) {
                    if (_e_3891479._stk[(_j_3891599 : stdgo.GoInt)] != ((_stk[(_j_3891599 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3891650i32;
                    } else {
                        _gotoNext = 3891599i32;
                    };
                } else if (__value__ == (3891650i32)) {
                    {
                        final __tmp__0 = _e_3891479;
                        final __tmp__1 = _e_3891479._nextHash;
                        _last_3891447 = __tmp__0;
                        _e_3891479 = __tmp__1;
                    };
                    _gotoNext = 3891475i32;
                } else if (__value__ == (3891678i32)) {
                    _j_3891599 = 0i32;
                    _gotoNext = 3891679i32;
                } else if (__value__ == (3891679i32)) {
                    if (_j_3891599 < (_stk.length)) {
                        _gotoNext = 3891614i32;
                    } else {
                        _gotoNext = 3891703i32;
                    };
                } else if (__value__ == (3891703i32)) {
                    if ((_last_3891447 != null && ((_last_3891447 : Dynamic).__nil__ == null || !(_last_3891447 : Dynamic).__nil__))) {
                        _gotoNext = 3891718i32;
                    } else {
                        _gotoNext = 3891799i32;
                    };
                } else if (__value__ == (3891718i32)) {
                    _last_3891447._nextHash = _e_3891479._nextHash;
                    _e_3891479._nextHash = (_m._hash[_h_3891226] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3891226] = _e_3891479;
                    _gotoNext = 3891799i32;
                } else if (__value__ == (3891799i32)) {
                    return _e_3891479;
                    {
                        final __tmp__0 = _e_3891479;
                        final __tmp__1 = _e_3891479._nextHash;
                        _last_3891447 = __tmp__0;
                        _e_3891479 = __tmp__1;
                    };
                    _gotoNext = 3891475i32;
                } else if (__value__ == (3891832i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3891851i32;
                    } else {
                        _gotoNext = 3891894i32;
                    };
                } else if (__value__ == (3891851i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3891894i32;
                } else if (__value__ == (3891894i32)) {
                    _e_3891894 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3891894._nextHash = (_m._hash[_h_3891226] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3891894._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3891999i32;
                    } else {
                        _gotoNext = 3892098i32;
                    };
                } else if (__value__ == (3891999i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3892098i32;
                } else if (__value__ == (3892098i32)) {
                    _e_3891894._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892222i32;
                    } else {
                        _gotoNext = 3892226i32;
                    };
                } else if (__value__ == (3892191i32)) {
                    _e_3891894._stk[(_j_3892176 : stdgo.GoInt)] = (_stk[(_j_3892176 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3892176++;
                    _gotoNext = 3892223i32;
                } else if (__value__ == (3892222i32)) {
                    _j_3892176 = 0i32;
                    _gotoNext = 3892223i32;
                } else if (__value__ == (3892223i32)) {
                    if (_j_3892176 < (_stk.length)) {
                        _gotoNext = 3892191i32;
                    } else {
                        _gotoNext = 3892226i32;
                    };
                } else if (__value__ == (3892226i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3892243i32;
                    } else {
                        _gotoNext = 3892292i32;
                    };
                } else if (__value__ == (3892243i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3892292i32;
                } else if (__value__ == (3892292i32)) {
                    _m._hash[_h_3891226] = _e_3891894;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3892323i32;
                    } else {
                        _gotoNext = 3892358i32;
                    };
                } else if (__value__ == (3892323i32)) {
                    _m._all = _e_3891894;
                    _m._last = _e_3891894;
                    _gotoNext = 3892398i32;
                } else if (__value__ == (3892358i32)) {
                    _gotoNext = 3892358i32;
                    _m._last._nextAll = _e_3891894;
                    _m._last = _e_3891894;
                    var __blank__ = 0i32;
                    _gotoNext = 3892398i32;
                } else if (__value__ == (3892398i32)) {
                    return _e_3891894;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
