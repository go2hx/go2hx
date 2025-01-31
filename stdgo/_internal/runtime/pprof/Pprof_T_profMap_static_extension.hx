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
        var _j_3863711:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3863429:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3863134:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _x_3862785:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_3863014:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3862982:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3862790_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3862761:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3862761 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3862874i32;
                    } else {
                        _gotoNext = 3862878i32;
                    };
                } else if (__value__ == (3862800i32)) {
                    _x_3862785 = _stk[(_i_3862790_0 : stdgo.GoInt)];
                    _h_3862761 = ((_h_3862761 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3862761 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3862761 = (_h_3862761 + (((_x_3862785 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3862790_0++;
                    _gotoNext = 3862875i32;
                } else if (__value__ == (3862874i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3862790_0 = __tmp__0;
                        _x_3862785 = __tmp__1;
                    };
                    _gotoNext = 3862875i32;
                } else if (__value__ == (3862875i32)) {
                    if (_i_3862790_0 < (_stk.length)) {
                        _gotoNext = 3862800i32;
                    } else {
                        _gotoNext = 3862878i32;
                    };
                } else if (__value__ == (3862878i32)) {
                    _h_3862761 = ((_h_3862761 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3862761 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3862761 = (_h_3862761 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3863001i32;
                } else if (__value__ == (3863001i32)) {
                    _e_3863014 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862761] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3863010i32;
                } else if (__value__ == (3863010i32)) {
                    if (!searchBreak && ((_e_3863014 != null && ((_e_3863014 : Dynamic).__nil__ == null || !(_e_3863014 : Dynamic).__nil__)))) {
                        _gotoNext = 3863064i32;
                    } else {
                        _gotoNext = 3863367i32;
                    };
                } else if (__value__ == (3863064i32)) {
                    if ((((@:checkr _e_3863014 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3863014 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3863110i32;
                    } else {
                        _gotoNext = 3863130i32;
                    };
                } else if (__value__ == (3863110i32)) {
                    {
                        final __tmp__0 = _e_3863014;
                        final __tmp__1 = (@:checkr _e_3863014 ?? throw "null pointer dereference")._nextHash;
                        _last_3862982 = __tmp__0;
                        _e_3863014 = __tmp__1;
                    };
                    _gotoNext = 3863010i32;
                } else if (__value__ == (3863130i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3863213i32;
                    } else {
                        _gotoNext = 3863238i32;
                    };
                } else if (__value__ == (3863134i32)) {
                    _j_3863134++;
                    _gotoNext = 3863214i32;
                } else if (__value__ == (3863149i32)) {
                    if ((@:checkr _e_3863014 ?? throw "null pointer dereference")._stk[(_j_3863134 : stdgo.GoInt)] != ((_stk[(_j_3863134 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3863185i32;
                    } else {
                        _gotoNext = 3863134i32;
                    };
                } else if (__value__ == (3863185i32)) {
                    {
                        final __tmp__0 = _e_3863014;
                        final __tmp__1 = (@:checkr _e_3863014 ?? throw "null pointer dereference")._nextHash;
                        _last_3862982 = __tmp__0;
                        _e_3863014 = __tmp__1;
                    };
                    _gotoNext = 3863010i32;
                } else if (__value__ == (3863213i32)) {
                    _j_3863134 = 0i32;
                    _gotoNext = 3863214i32;
                } else if (__value__ == (3863214i32)) {
                    if (_j_3863134 < (_stk.length)) {
                        _gotoNext = 3863149i32;
                    } else {
                        _gotoNext = 3863238i32;
                    };
                } else if (__value__ == (3863238i32)) {
                    if ((_last_3862982 != null && ((_last_3862982 : Dynamic).__nil__ == null || !(_last_3862982 : Dynamic).__nil__))) {
                        _gotoNext = 3863253i32;
                    } else {
                        _gotoNext = 3863334i32;
                    };
                } else if (__value__ == (3863253i32)) {
                    (@:checkr _last_3862982 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3863014 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3863014 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862761] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862761] = _e_3863014;
                    _gotoNext = 3863334i32;
                } else if (__value__ == (3863334i32)) {
                    return _e_3863014;
                    {
                        final __tmp__0 = _e_3863014;
                        final __tmp__1 = (@:checkr _e_3863014 ?? throw "null pointer dereference")._nextHash;
                        _last_3862982 = __tmp__0;
                        _e_3863014 = __tmp__1;
                    };
                    _gotoNext = 3863010i32;
                } else if (__value__ == (3863367i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3863386i32;
                    } else {
                        _gotoNext = 3863429i32;
                    };
                } else if (__value__ == (3863386i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3863429i32;
                } else if (__value__ == (3863429i32)) {
                    _e_3863429 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3863429 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862761] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3863429 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3863534i32;
                    } else {
                        _gotoNext = 3863633i32;
                    };
                } else if (__value__ == (3863534i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3863633i32;
                } else if (__value__ == (3863633i32)) {
                    (@:checkr _e_3863429 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3863757i32;
                    } else {
                        _gotoNext = 3863761i32;
                    };
                } else if (__value__ == (3863726i32)) {
                    (@:checkr _e_3863429 ?? throw "null pointer dereference")._stk[(_j_3863711 : stdgo.GoInt)] = (_stk[(_j_3863711 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3863711++;
                    _gotoNext = 3863758i32;
                } else if (__value__ == (3863757i32)) {
                    _j_3863711 = 0i32;
                    _gotoNext = 3863758i32;
                } else if (__value__ == (3863758i32)) {
                    if (_j_3863711 < (_stk.length)) {
                        _gotoNext = 3863726i32;
                    } else {
                        _gotoNext = 3863761i32;
                    };
                } else if (__value__ == (3863761i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3863778i32;
                    } else {
                        _gotoNext = 3863827i32;
                    };
                } else if (__value__ == (3863778i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3863827i32;
                } else if (__value__ == (3863827i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3862761] = _e_3863429;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3863858i32;
                    } else {
                        _gotoNext = 3863893i32;
                    };
                } else if (__value__ == (3863858i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3863429;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3863429;
                    _gotoNext = 3863933i32;
                } else if (__value__ == (3863893i32)) {
                    _gotoNext = 3863893i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3863429;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3863429;
                    var __blank__ = 0i32;
                    _gotoNext = 3863933i32;
                } else if (__value__ == (3863933i32)) {
                    return _e_3863429;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
