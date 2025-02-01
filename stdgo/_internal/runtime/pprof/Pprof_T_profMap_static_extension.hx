package stdgo._internal.runtime.pprof;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.context.Context;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.strings.Strings;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.internal.abi.Abi;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _h_3897660:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3898328:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3897684:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3897689_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3897881:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3898610:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3898033:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3897913:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3897660 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3897773i32;
                    } else {
                        _gotoNext = 3897777i32;
                    };
                } else if (__value__ == (3897699i32)) {
                    _x_3897684 = _stk[(_i_3897689_0 : stdgo.GoInt)];
                    _h_3897660 = ((_h_3897660 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3897660 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3897660 = (_h_3897660 + (((_x_3897684 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3897689_0++;
                    _gotoNext = 3897774i32;
                } else if (__value__ == (3897773i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3897689_0 = __tmp__0;
                        _x_3897684 = __tmp__1;
                    };
                    _gotoNext = 3897774i32;
                } else if (__value__ == (3897774i32)) {
                    if (_i_3897689_0 < (_stk.length)) {
                        _gotoNext = 3897699i32;
                    } else {
                        _gotoNext = 3897777i32;
                    };
                } else if (__value__ == (3897777i32)) {
                    _h_3897660 = ((_h_3897660 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3897660 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3897660 = (_h_3897660 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3897900i32;
                } else if (__value__ == (3897900i32)) {
                    _e_3897913 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3897660] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3897909i32;
                } else if (__value__ == (3897909i32)) {
                    if (!searchBreak && ((_e_3897913 != null && ((_e_3897913 : Dynamic).__nil__ == null || !(_e_3897913 : Dynamic).__nil__)))) {
                        _gotoNext = 3897963i32;
                    } else {
                        _gotoNext = 3898266i32;
                    };
                } else if (__value__ == (3897963i32)) {
                    if ((((@:checkr _e_3897913 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3897913 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3898009i32;
                    } else {
                        _gotoNext = 3898029i32;
                    };
                } else if (__value__ == (3898009i32)) {
                    {
                        final __tmp__0 = _e_3897913;
                        final __tmp__1 = (@:checkr _e_3897913 ?? throw "null pointer dereference")._nextHash;
                        _last_3897881 = __tmp__0;
                        _e_3897913 = __tmp__1;
                    };
                    _gotoNext = 3897909i32;
                } else if (__value__ == (3898029i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898112i32;
                    } else {
                        _gotoNext = 3898137i32;
                    };
                } else if (__value__ == (3898033i32)) {
                    _j_3898033++;
                    _gotoNext = 3898113i32;
                } else if (__value__ == (3898048i32)) {
                    if ((@:checkr _e_3897913 ?? throw "null pointer dereference")._stk[(_j_3898033 : stdgo.GoInt)] != ((_stk[(_j_3898033 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3898084i32;
                    } else {
                        _gotoNext = 3898033i32;
                    };
                } else if (__value__ == (3898084i32)) {
                    {
                        final __tmp__0 = _e_3897913;
                        final __tmp__1 = (@:checkr _e_3897913 ?? throw "null pointer dereference")._nextHash;
                        _last_3897881 = __tmp__0;
                        _e_3897913 = __tmp__1;
                    };
                    _gotoNext = 3897909i32;
                } else if (__value__ == (3898112i32)) {
                    _j_3898033 = 0i32;
                    _gotoNext = 3898113i32;
                } else if (__value__ == (3898113i32)) {
                    if (_j_3898033 < (_stk.length)) {
                        _gotoNext = 3898048i32;
                    } else {
                        _gotoNext = 3898137i32;
                    };
                } else if (__value__ == (3898137i32)) {
                    if ((_last_3897881 != null && ((_last_3897881 : Dynamic).__nil__ == null || !(_last_3897881 : Dynamic).__nil__))) {
                        _gotoNext = 3898152i32;
                    } else {
                        _gotoNext = 3898233i32;
                    };
                } else if (__value__ == (3898152i32)) {
                    (@:checkr _last_3897881 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3897913 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3897913 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3897660] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3897660] = _e_3897913;
                    _gotoNext = 3898233i32;
                } else if (__value__ == (3898233i32)) {
                    return _e_3897913;
                    {
                        final __tmp__0 = _e_3897913;
                        final __tmp__1 = (@:checkr _e_3897913 ?? throw "null pointer dereference")._nextHash;
                        _last_3897881 = __tmp__0;
                        _e_3897913 = __tmp__1;
                    };
                    _gotoNext = 3897909i32;
                } else if (__value__ == (3898266i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3898285i32;
                    } else {
                        _gotoNext = 3898328i32;
                    };
                } else if (__value__ == (3898285i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3898328i32;
                } else if (__value__ == (3898328i32)) {
                    _e_3898328 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3898328 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3897660] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3898328 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3898433i32;
                    } else {
                        _gotoNext = 3898532i32;
                    };
                } else if (__value__ == (3898433i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3898532i32;
                } else if (__value__ == (3898532i32)) {
                    (@:checkr _e_3898328 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898656i32;
                    } else {
                        _gotoNext = 3898660i32;
                    };
                } else if (__value__ == (3898625i32)) {
                    (@:checkr _e_3898328 ?? throw "null pointer dereference")._stk[(_j_3898610 : stdgo.GoInt)] = (_stk[(_j_3898610 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3898610++;
                    _gotoNext = 3898657i32;
                } else if (__value__ == (3898656i32)) {
                    _j_3898610 = 0i32;
                    _gotoNext = 3898657i32;
                } else if (__value__ == (3898657i32)) {
                    if (_j_3898610 < (_stk.length)) {
                        _gotoNext = 3898625i32;
                    } else {
                        _gotoNext = 3898660i32;
                    };
                } else if (__value__ == (3898660i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3898677i32;
                    } else {
                        _gotoNext = 3898726i32;
                    };
                } else if (__value__ == (3898677i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3898726i32;
                } else if (__value__ == (3898726i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3897660] = _e_3898328;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3898757i32;
                    } else {
                        _gotoNext = 3898792i32;
                    };
                } else if (__value__ == (3898757i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3898328;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3898328;
                    _gotoNext = 3898832i32;
                } else if (__value__ == (3898792i32)) {
                    _gotoNext = 3898792i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3898328;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3898328;
                    var __blank__ = 0i32;
                    _gotoNext = 3898832i32;
                } else if (__value__ == (3898832i32)) {
                    return _e_3898328;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
