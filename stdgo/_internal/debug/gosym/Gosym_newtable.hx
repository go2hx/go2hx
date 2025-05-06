package stdgo._internal.debug.gosym;
function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):{ var _0 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>; var _1 : stdgo.Error; } {
        var _j_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sym_10:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _lastf_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fn_22:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
        var _end_20:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_17:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_14:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_23:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_21:stdgo.GoInt = (0 : stdgo.GoInt);
        var _np_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nz_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_25:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_24:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _obj_7:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        var _lasttyp_6:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _n_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_9:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nf_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _na_19:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_1:stdgo.Error = (null : stdgo.Error);
        var _c_13:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _end_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fname_3:stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
        var _t_2:stdgo._internal.debug.gosym.Gosym_table.Table = ({} : stdgo._internal.debug.gosym.Gosym_table.Table);
        var _n_26:stdgo.GoInt = (0 : stdgo.GoInt);
        var _countloopBreak = false;
        var _s_16:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _err_1 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym):stdgo.Error {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L339"
                        _n_0++;
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L340"
                        return (null : stdgo.Error);
                    });
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L342"
                    if (_err_1 != null) {
                        _gotoNext = 3659454i64;
                    } else {
                        _gotoNext = 3659479i64;
                    };
                } else if (__value__ == (3659454i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L343"
                    return { _0 : null, _1 : _err_1 };
                    _gotoNext = 3659479i64;
                } else if (__value__ == (3659479i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L347"
                    if (_pcln._isGo12()) {
                        _gotoNext = 3659509i64;
                    } else {
                        _gotoNext = 3659535i64;
                    };
                } else if (__value__ == (3659509i64)) {
                    _t_2._go12line = _pcln;
                    _gotoNext = 3659535i64;
                } else if (__value__ == (3659535i64)) {
                    _fname_3 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
                    _t_2.syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>((0 : stdgo.GoInt).toBasic(), _n_0, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n_0 ? (0 : stdgo.GoInt).toBasic() : _n_0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _nf_4 = (0 : stdgo.GoInt);
                    _nz_5 = (0 : stdgo.GoInt);
                    _lasttyp_6 = (0 : stdgo.GoUInt8);
                    _err_1 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym):stdgo.Error {
                        var _n = (_t_2.syms.length : stdgo.GoInt);
                        _t_2.syms = (_t_2.syms.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                        var _ts = (stdgo.Go.setRef(_t_2.syms[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                        (@:checkr _ts ?? throw "null pointer dereference").type = _s._typ;
                        (@:checkr _ts ?? throw "null pointer dereference").value = _s._value;
                        (@:checkr _ts ?? throw "null pointer dereference").goType = _s._gotype;
                        (@:checkr _ts ?? throw "null pointer dereference")._goVersion = (@:checkr _pcln ?? throw "null pointer dereference")._version;
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L363"
                        {
                            final __value__ = _s._typ;
                            if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L378"
                                if (((_lasttyp_6 != (122 : stdgo.GoUInt8)) && (_lasttyp_6 != (90 : stdgo.GoUInt8)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L379"
                                    _nz_5++;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L381"
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < (_s._name.length) : Bool)) {
                                        var _eltIdx = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint16((_s._name.__slice__(_i, (_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt16);
var __tmp__ = (_fname_3 != null && _fname_3.__exists__(_eltIdx) ? { _0 : _fname_3[_eltIdx], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _elt:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L384"
                                        if (!_ok) {
                                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L385"
                                            return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError((-1 : stdgo.GoInt), ("bad filename code" : stdgo.GoString), stdgo.Go.toInterface(_eltIdx)) : stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_decodingerror.DecodingError>));
                                        };
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L387"
                                        {
                                            var _n = ((@:checkr _ts ?? throw "null pointer dereference").name.length : stdgo.GoInt);
                                            if (((_n > (0 : stdgo.GoInt) : Bool) && ((@:checkr _ts ?? throw "null pointer dereference").name[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (47 : stdgo.GoUInt8)) : Bool)) {
                                                (@:checkr _ts ?? throw "null pointer dereference").name = ((@:checkr _ts ?? throw "null pointer dereference").name + (("/" : stdgo.GoString)).__copy__() : stdgo.GoString);
                                            };
                                        };
(@:checkr _ts ?? throw "null pointer dereference").name = ((@:checkr _ts ?? throw "null pointer dereference").name + (_elt).__copy__() : stdgo.GoString);
                                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                                    };
                                };
                            } else {
                                var _w = (0 : stdgo.GoInt);
                                var _b = _s._name;
                                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L368"
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < (_b.length) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L369"
                                        if (((_b[(_i : stdgo.GoInt)] == ((194 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_b.length) : Bool) : Bool) && (_b[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (183 : stdgo.GoUInt8)) : Bool)) {
                                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L370"
                                            _i++;
                                            _b[(_i : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
                                        };
_b[(_w : stdgo.GoInt)] = _b[(_i : stdgo.GoInt)];
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L374"
                                        _w++;
                                        _i++;
                                    };
                                };
                                (@:checkr _ts ?? throw "null pointer dereference").name = ((_s._name.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                            };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L393"
                        {
                            final __value__ = _s._typ;
                            if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L395"
                                _nf_4++;
                            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                                _fname_3[(_s._value : stdgo.GoUInt16)] = (@:checkr _ts ?? throw "null pointer dereference").name?.__copy__();
                            };
                        };
                        _lasttyp_6 = _s._typ;
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L400"
                        return (null : stdgo.Error);
                    });
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L402"
                    if (_err_1 != null) {
                        _gotoNext = 3660664i64;
                    } else {
                        _gotoNext = 3660689i64;
                    };
                } else if (__value__ == (3660664i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L403"
                    return { _0 : null, _1 : _err_1 };
                    _gotoNext = 3660689i64;
                } else if (__value__ == (3660689i64)) {
                    _t_2.funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>((0 : stdgo.GoInt).toBasic(), _nf_4, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nf_4 ? (0 : stdgo.GoInt).toBasic() : _nf_4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _t_2.files = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L410"
                    if (({
                        final value = _t_2._go12line;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3660789i64;
                    } else {
                        _gotoNext = 3660921i64;
                    };
                } else if (__value__ == (3660789i64)) {
                    _t_2.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _obj_7 = (stdgo.Go.setRef(_t_2.objs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L414"
                    _t_2._go12line._go12MapFiles(_t_2.files, _obj_7);
                    _gotoNext = 3661076i64;
                } else if (__value__ == (3660921i64)) {
                    _gotoNext = 3660921i64;
                    _t_2.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>((0 : stdgo.GoInt).toBasic(), _nz_5, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nz_5 ? (0 : stdgo.GoInt).toBasic() : _nz_5 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    0i64;
                    _gotoNext = 3661076i64;
                } else if (__value__ == (3661076i64)) {
                    _lastf_8 = (0 : stdgo.GoInt);
                    _i_9 = (0 : stdgo.GoInt);
                    _gotoNext = 3661088i64;
                } else if (__value__ == (3661088i64)) {
                    //"file://#L0"
                    if ((_i_9 < (_t_2.syms.length) : Bool)) {
                        _gotoNext = 3661121i64;
                    } else {
                        _gotoNext = 3663324i64;
                    };
                } else if (__value__ == (3661117i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L422"
                    _i_9++;
                    _gotoNext = 3661088i64;
                } else if (__value__ == (3661121i64)) {
                    _sym_10 = (stdgo.Go.setRef(_t_2.syms[(_i_9 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _gotoNext = 3661145i64;
                } else if (__value__ == (3661145i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L424"
                    {
                        final __value__ = (@:checkr _sym_10 ?? throw "null pointer dereference").type;
                        if (__value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3661165i64;
                        } else if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                            _gotoNext = 3661962i64;
                        } else {
                            _gotoNext = 3661117i64;
                        };
                    };
                } else if (__value__ == (3661165i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L426"
                    if (({
                        final value = _t_2._go12line;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3661219i64;
                    } else {
                        _gotoNext = 3661339i64;
                    };
                } else if (__value__ == (3661219i64)) {
                    _gotoNext = 3661117i64;
                } else if (__value__ == (3661339i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L431"
                    if (({
                        final value = _obj_7;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3661353i64;
                    } else {
                        _gotoNext = 3661395i64;
                    };
                } else if (__value__ == (3661353i64)) {
                    (@:checkr _obj_7 ?? throw "null pointer dereference").funcs = (_t_2.funcs.__slice__(_lastf_8) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _gotoNext = 3661395i64;
                } else if (__value__ == (3661395i64)) {
                    _lastf_8 = (_t_2.funcs.length);
                    _n_11 = (_t_2.objs.length);
                    _t_2.objs = (_t_2.objs.__slice__((0 : stdgo.GoInt), (_n_11 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _obj_7 = (stdgo.Go.setRef(_t_2.objs[(_n_11 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _end_12 = (_i_9 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3661559i64;
                } else if (__value__ == (3661559i64)) {
                    //"file://#L0"
                    if ((_end_12 < (_t_2.syms.length) : Bool)) {
                        _gotoNext = 3661601i64;
                    } else {
                        _gotoNext = 3661681i64;
                    };
                } else if (__value__ == (3661595i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L443"
                    _end_12++;
                    _gotoNext = 3661559i64;
                } else if (__value__ == (3661601i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L444"
                    {
                        _c_13 = _t_2.syms[(_end_12 : stdgo.GoInt)].type;
                        if (((_c_13 != (90 : stdgo.GoUInt8)) && (_c_13 != (122 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3661654i64;
                        } else {
                            _gotoNext = 3661595i64;
                        };
                    };
                } else if (__value__ == (3661654i64)) {
                    _gotoNext = 3661681i64;
                } else if (__value__ == (3661681i64)) {
                    (@:checkr _obj_7 ?? throw "null pointer dereference").paths = (_t_2.syms.__slice__(_i_9, _end_12) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _i_9 = (_end_12 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _depth_14 = (0 : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L453"
                    if ((0i64 : stdgo.GoInt) < ((@:checkr _obj_7 ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3661956i64;
                    } else {
                        _gotoNext = 3661117i64;
                    };
                } else if (__value__ == (3661785i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L453"
                    _j_15++;
                    _gotoNext = 3661957i64;
                } else if (__value__ == (3661806i64)) {
                    _s_16 = (stdgo.Go.setRef((@:checkr _obj_7 ?? throw "null pointer dereference").paths[(_j_15 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L455"
                    if ((@:checkr _s_16 ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3661851i64;
                    } else {
                        _gotoNext = 3661877i64;
                    };
                } else if (__value__ == (3661851i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L456"
                    _depth_14--;
                    _gotoNext = 3661785i64;
                } else if (__value__ == (3661877i64)) {
                    _gotoNext = 3661877i64;
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L458"
                    if (_depth_14 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3661898i64;
                    } else {
                        _gotoNext = 3661940i64;
                    };
                } else if (__value__ == (3661898i64)) {
                    _t_2.files[(@:checkr _s_16 ?? throw "null pointer dereference").name] = _obj_7;
                    _gotoNext = 3661940i64;
                } else if (__value__ == (3661940i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L461"
                    _depth_14++;
                    0i64;
                    _gotoNext = 3661785i64;
                } else if (__value__ == (3661956i64)) {
                    _j_15 = 0i64;
                    _gotoNext = 3661957i64;
                } else if (__value__ == (3661957i64)) {
                    //"file://#L0"
                    if (_j_15 < ((@:checkr _obj_7 ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3661806i64;
                    } else {
                        _gotoNext = 3661117i64;
                    };
                } else if (__value__ == (3661962i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L466"
                    {
                        _n_17 = (_t_2.funcs.length);
                        if ((_n_17 > (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3662033i64;
                        } else {
                            _gotoNext = 3662076i64;
                        };
                    };
                } else if (__value__ == (3662033i64)) {
                    _t_2.funcs[(_n_17 - (1 : stdgo.GoInt) : stdgo.GoInt)].end = (@:checkr _sym_10 ?? throw "null pointer dereference").value;
                    _gotoNext = 3662076i64;
                } else if (__value__ == (3662076i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L469"
                    if ((((@:checkr _sym_10 ?? throw "null pointer dereference").name == ("runtime.etext" : stdgo.GoString)) || ((@:checkr _sym_10 ?? throw "null pointer dereference").name == ("etext" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3662130i64;
                    } else {
                        _gotoNext = 3662198i64;
                    };
                } else if (__value__ == (3662130i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L422"
                    _i_9++;
                    _gotoNext = 3661088i64;
                } else if (__value__ == (3662198i64)) {
                    _gotoNext = 3662230i64;
                } else if (__value__ == (3662230i64)) {
                    _end_20 = (_i_9 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _countloopBreak = false;
                    _gotoNext = 3662244i64;
                } else if (__value__ == (3662244i64)) {
                    //"file://#L0"
                    if (!_countloopBreak && ((_end_20 < (_t_2.syms.length) : Bool))) {
                        _gotoNext = 3662286i64;
                    } else {
                        _gotoNext = 3662475i64;
                    };
                } else if (__value__ == (3662280i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L477"
                    _end_20++;
                    _gotoNext = 3662244i64;
                } else if (__value__ == (3662286i64)) {
                    _gotoNext = 3662292i64;
                } else if (__value__ == (3662292i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L478"
                    {
                        final __value__ = _t_2.syms[(_end_20 : stdgo.GoInt)].type;
                        if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3662322i64;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3662382i64;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3662406i64;
                        } else {
                            _gotoNext = 3662280i64;
                        };
                    };
                } else if (__value__ == (3662322i64)) {
                    _countloopBreak = true;
                    _gotoNext = 3662244i64;
                } else if (__value__ == (3662382i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L482"
                    _np_18++;
                    _gotoNext = 3662280i64;
                } else if (__value__ == (3662406i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L484"
                    _na_19++;
                    _gotoNext = 3662280i64;
                } else if (__value__ == (3662475i64)) {
                    _n_21 = (_t_2.funcs.length);
                    _t_2.funcs = (_t_2.funcs.__slice__((0 : stdgo.GoInt), (_n_21 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _fn_22 = (stdgo.Go.setRef(_t_2.funcs[(_n_21 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    (@:checkr _sym_10 ?? throw "null pointer dereference").func = _fn_22;
                    (@:checkr _fn_22 ?? throw "null pointer dereference").params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>((0 : stdgo.GoInt).toBasic(), _np_18) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").locals = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>((0 : stdgo.GoInt).toBasic(), _na_19) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").sym = _sym_10;
                    (@:checkr _fn_22 ?? throw "null pointer dereference").entry = (@:checkr _sym_10 ?? throw "null pointer dereference").value;
                    (@:checkr _fn_22 ?? throw "null pointer dereference").obj = _obj_7;
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L498"
                    if (({
                        final value = _t_2._go12line;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3662711i64;
                    } else if (({
                        final value = _pcln;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3662890i64;
                    } else {
                        _gotoNext = 3662964i64;
                    };
                } else if (__value__ == (3662711i64)) {
                    (@:checkr _fn_22 ?? throw "null pointer dereference").lineTable = _t_2._go12line;
                    _gotoNext = 3662964i64;
                } else if (__value__ == (3662890i64)) {
                    (@:checkr _fn_22 ?? throw "null pointer dereference").lineTable = _pcln._slice((@:checkr _fn_22 ?? throw "null pointer dereference").entry);
                    _pcln = (@:checkr _fn_22 ?? throw "null pointer dereference").lineTable;
                    _gotoNext = 3662964i64;
                } else if (__value__ == (3662964i64)) {
                    _j_23 = _i_9;
                    _gotoNext = 3662964i64;
                    //"file://#L0"
                    if ((_j_23 < _end_20 : Bool)) {
                        _gotoNext = 3662989i64;
                    } else {
                        _gotoNext = 3663286i64;
                    };
                } else if (__value__ == (3662985i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L507"
                    _j_23++;
                    _gotoNext = 3662964i64;
                } else if (__value__ == (3662989i64)) {
                    _s_24 = (stdgo.Go.setRef(_t_2.syms[(_j_23 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _gotoNext = 3663015i64;
                } else if (__value__ == (3663015i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L509"
                    {
                        final __value__ = (@:checkr _s_24 ?? throw "null pointer dereference").type;
                        if (__value__ == ((109 : stdgo.GoUInt8))) {
                            _gotoNext = 3663035i64;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3663082i64;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3663179i64;
                        } else {
                            _gotoNext = 3662985i64;
                        };
                    };
                } else if (__value__ == (3663035i64)) {
                    (@:checkr _fn_22 ?? throw "null pointer dereference").frameSize = ((@:checkr _s_24 ?? throw "null pointer dereference").value : stdgo.GoInt);
                    _gotoNext = 3662985i64;
                } else if (__value__ == (3663082i64)) {
                    _n_25 = ((@:checkr _fn_22 ?? throw "null pointer dereference").params.length);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").params = ((@:checkr _fn_22 ?? throw "null pointer dereference").params.__slice__((0 : stdgo.GoInt), (_n_25 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").params[(_n_25 : stdgo.GoInt)] = _s_24;
                    _gotoNext = 3662985i64;
                } else if (__value__ == (3663179i64)) {
                    _n_26 = ((@:checkr _fn_22 ?? throw "null pointer dereference").locals.length);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").locals = ((@:checkr _fn_22 ?? throw "null pointer dereference").locals.__slice__((0 : stdgo.GoInt), (_n_26 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_22 ?? throw "null pointer dereference").locals[(_n_26 : stdgo.GoInt)] = _s_24;
                    _gotoNext = 3662985i64;
                } else if (__value__ == (3663286i64)) {
                    _i_9 = (_end_20 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3661117i64;
                } else if (__value__ == (3663324i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L526"
                    if ((({
                        final value = _t_2._go12line;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }) && (_nf_4 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3663356i64;
                    } else {
                        _gotoNext = 3663397i64;
                    };
                } else if (__value__ == (3663356i64)) {
                    _t_2.funcs = _t_2._go12line._go12Funcs();
                    _gotoNext = 3663397i64;
                } else if (__value__ == (3663397i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L529"
                    if (({
                        final value = _obj_7;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3663411i64;
                    } else {
                        _gotoNext = 3663447i64;
                    };
                } else if (__value__ == (3663411i64)) {
                    (@:checkr _obj_7 ?? throw "null pointer dereference").funcs = (_t_2.funcs.__slice__(_lastf_8) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _gotoNext = 3663447i64;
                } else if (__value__ == (3663447i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/symtab.go#L532"
                    return { _0 : (stdgo.Go.setRef(_t_2) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
