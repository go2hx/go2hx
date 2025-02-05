package stdgo._internal.debug.gosym;
function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):{ var _0 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>; var _1 : stdgo.Error; } {
        var _n_3643427:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3642960:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3642737:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3642044:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3643947:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _end_3643172:stdgo.GoInt = (0 : stdgo.GoInt);
        var _np_3643154:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nz_3640558:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3640435:stdgo._internal.debug.gosym.Gosym_table.Table = ({} : stdgo._internal.debug.gosym.Gosym_table.Table);
        var _c_3642562:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _end_3642500:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lasttyp_3640567:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nf_3640549:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_3640322:stdgo.Error = (null : stdgo.Error);
        var _countloopBreak = false;
        var _depth_3642719:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3642764:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _n_3642395:stdgo.GoInt = (0 : stdgo.GoInt);
        var _sym_3642077:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
        var _obj_3641710:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
        var _n_3640315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3643920:stdgo.GoInt = (0 : stdgo.GoInt);
        var _na_3643158:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3644146:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3644049:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fn_3643478:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
        var _lastf_3642028:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fname_3640487:stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _err_3640322 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym):stdgo.Error {
                        _n_3640315++;
                        return (null : stdgo.Error);
                    });
                    if (_err_3640322 != null) {
                        _gotoNext = 3640406i32;
                    } else {
                        _gotoNext = 3640431i32;
                    };
                } else if (__value__ == (3640406i32)) {
                    return { _0 : null, _1 : _err_3640322 };
                    _gotoNext = 3640431i32;
                } else if (__value__ == (3640431i32)) {
                    if (@:check2r _pcln._isGo12()) {
                        _gotoNext = 3640461i32;
                    } else {
                        _gotoNext = 3640487i32;
                    };
                } else if (__value__ == (3640461i32)) {
                    _t_3640435._go12line = _pcln;
                    _gotoNext = 3640487i32;
                } else if (__value__ == (3640487i32)) {
                    _fname_3640487 = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
                    _t_3640435.syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>((0 : stdgo.GoInt).toBasic(), _n_3640315, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n_3640315 ? (0 : stdgo.GoInt).toBasic() : _n_3640315 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _nf_3640549 = (0 : stdgo.GoInt);
                    _nz_3640558 = (0 : stdgo.GoInt);
                    _lasttyp_3640567 = (0 : stdgo.GoUInt8);
                    _err_3640322 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_t_sym.T_sym):stdgo.Error {
                        var _n = (_t_3640435.syms.length : stdgo.GoInt);
                        _t_3640435.syms = (_t_3640435.syms.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                        var _ts = (stdgo.Go.setRef(_t_3640435.syms[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                        (@:checkr _ts ?? throw "null pointer dereference").type = _s._typ;
                        (@:checkr _ts ?? throw "null pointer dereference").value = _s._value;
                        (@:checkr _ts ?? throw "null pointer dereference").goType = _s._gotype;
                        (@:checkr _ts ?? throw "null pointer dereference")._goVersion = (@:checkr _pcln ?? throw "null pointer dereference")._version;
                        {
                            final __value__ = _s._typ;
                            if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                                if (((_lasttyp_3640567 != (122 : stdgo.GoUInt8)) && (_lasttyp_3640567 != (90 : stdgo.GoUInt8)) : Bool)) {
                                    _nz_3640558++;
                                };
                            } else {
                                var _w = (0 : stdgo.GoInt);
                                var _b = _s._name;
                                {
                                    var _i = (0 : stdgo.GoInt);
                                    while ((_i < (_b.length) : Bool)) {
                                        if (((_b[(_i : stdgo.GoInt)] == ((194 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_b.length) : Bool) : Bool) && (_b[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (183 : stdgo.GoUInt8)) : Bool)) {
                                            _i++;
                                            _b[(_i : stdgo.GoInt)] = (46 : stdgo.GoUInt8);
                                        };
                                        _i++;
                                    };
                                };
                                (@:checkr _ts ?? throw "null pointer dereference").name = ((_s._name.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                            };
                        };
                    });
                    if (_err_3640322 != null) {
                        _gotoNext = 3641616i32;
                    } else {
                        _gotoNext = 3641641i32;
                    };
                } else if (__value__ == (3641616i32)) {
                    return { _0 : null, _1 : _err_3640322 };
                    _gotoNext = 3641641i32;
                } else if (__value__ == (3641641i32)) {
                    _t_3640435.funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>((0 : stdgo.GoInt).toBasic(), _nf_3640549, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nf_3640549 ? (0 : stdgo.GoInt).toBasic() : _nf_3640549 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _t_3640435.files = (({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>);
                    if ((_t_3640435._go12line != null && ((_t_3640435._go12line : Dynamic).__nil__ == null || !(_t_3640435._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3641741i32;
                    } else {
                        _gotoNext = 3641873i32;
                    };
                } else if (__value__ == (3641741i32)) {
                    _t_3640435.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _obj_3641710 = (stdgo.Go.setRef(_t_3640435.objs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    @:check2r _t_3640435._go12line._go12MapFiles(_t_3640435.files, _obj_3641710);
                    _gotoNext = 3642028i32;
                } else if (__value__ == (3641873i32)) {
                    _gotoNext = 3641873i32;
                    _t_3640435.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>((0 : stdgo.GoInt).toBasic(), _nz_3640558, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nz_3640558 ? (0 : stdgo.GoInt).toBasic() : _nz_3640558 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    var __blank__ = 0i32;
                    _gotoNext = 3642028i32;
                } else if (__value__ == (3642028i32)) {
                    _lastf_3642028 = (0 : stdgo.GoInt);
                    _i_3642044 = (0 : stdgo.GoInt);
                    _gotoNext = 3642040i32;
                } else if (__value__ == (3642040i32)) {
                    if ((_i_3642044 < (_t_3640435.syms.length) : Bool)) {
                        _gotoNext = 3642073i32;
                    } else {
                        _gotoNext = 3644276i32;
                    };
                } else if (__value__ == (3642069i32)) {
                    _i_3642044++;
                    _gotoNext = 3642040i32;
                } else if (__value__ == (3642073i32)) {
                    _sym_3642077 = (stdgo.Go.setRef(_t_3640435.syms[(_i_3642044 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _gotoNext = 3642097i32;
                } else if (__value__ == (3642097i32)) {
                    {
                        final __value__ = (@:checkr _sym_3642077 ?? throw "null pointer dereference").type;
                        if (__value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3642117i32;
                        } else if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                            _gotoNext = 3642914i32;
                        } else {
                            _gotoNext = 3642069i32;
                        };
                    };
                } else if (__value__ == (3642117i32)) {
                    if ((_t_3640435._go12line != null && ((_t_3640435._go12line : Dynamic).__nil__ == null || !(_t_3640435._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3642171i32;
                    } else {
                        _gotoNext = 3642291i32;
                    };
                } else if (__value__ == (3642171i32)) {
                    _gotoNext = 3642069i32;
                } else if (__value__ == (3642291i32)) {
                    if ((_obj_3641710 != null && ((_obj_3641710 : Dynamic).__nil__ == null || !(_obj_3641710 : Dynamic).__nil__))) {
                        _gotoNext = 3642305i32;
                    } else {
                        _gotoNext = 3642347i32;
                    };
                } else if (__value__ == (3642305i32)) {
                    (@:checkr _obj_3641710 ?? throw "null pointer dereference").funcs = (_t_3640435.funcs.__slice__(_lastf_3642028) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _gotoNext = 3642347i32;
                } else if (__value__ == (3642347i32)) {
                    _lastf_3642028 = (_t_3640435.funcs.length);
                    _n_3642395 = (_t_3640435.objs.length);
                    _t_3640435.objs = (_t_3640435.objs.__slice__((0 : stdgo.GoInt), (_n_3642395 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _obj_3641710 = (stdgo.Go.setRef(_t_3640435.objs[(_n_3642395 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>);
                    _end_3642500 = (_i_3642044 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3642511i32;
                } else if (__value__ == (3642511i32)) {
                    if ((_end_3642500 < (_t_3640435.syms.length) : Bool)) {
                        _gotoNext = 3642553i32;
                    } else {
                        _gotoNext = 3642633i32;
                    };
                } else if (__value__ == (3642547i32)) {
                    _end_3642500++;
                    _gotoNext = 3642511i32;
                } else if (__value__ == (3642553i32)) {
                    {
                        _c_3642562 = _t_3640435.syms[(_end_3642500 : stdgo.GoInt)].type;
                        if (((_c_3642562 != (90 : stdgo.GoUInt8)) && (_c_3642562 != (122 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3642606i32;
                        } else {
                            _gotoNext = 3642547i32;
                        };
                    };
                } else if (__value__ == (3642606i32)) {
                    _gotoNext = 3642633i32;
                } else if (__value__ == (3642633i32)) {
                    (@:checkr _obj_3641710 ?? throw "null pointer dereference").paths = (_t_3640435.syms.__slice__(_i_3642044, _end_3642500) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _i_3642044 = (_end_3642500 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _depth_3642719 = (0 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _obj_3641710 ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3642908i32;
                    } else {
                        _gotoNext = 3642069i32;
                    };
                } else if (__value__ == (3642737i32)) {
                    _j_3642737++;
                    _gotoNext = 3642909i32;
                } else if (__value__ == (3642758i32)) {
                    _s_3642764 = (stdgo.Go.setRef((@:checkr _obj_3641710 ?? throw "null pointer dereference").paths[(_j_3642737 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    if ((@:checkr _s_3642764 ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3642803i32;
                    } else {
                        _gotoNext = 3642829i32;
                    };
                } else if (__value__ == (3642803i32)) {
                    _depth_3642719--;
                    _gotoNext = 3642737i32;
                } else if (__value__ == (3642829i32)) {
                    _gotoNext = 3642829i32;
                    if (_depth_3642719 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3642850i32;
                    } else {
                        _gotoNext = 3642892i32;
                    };
                } else if (__value__ == (3642850i32)) {
                    _t_3640435.files[(@:checkr _s_3642764 ?? throw "null pointer dereference").name] = _obj_3641710;
                    _gotoNext = 3642892i32;
                } else if (__value__ == (3642892i32)) {
                    _depth_3642719++;
                    var __blank__ = 0i32;
                    _gotoNext = 3642737i32;
                } else if (__value__ == (3642908i32)) {
                    _j_3642737 = 0i32;
                    _gotoNext = 3642909i32;
                } else if (__value__ == (3642909i32)) {
                    if (_j_3642737 < ((@:checkr _obj_3641710 ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3642758i32;
                    } else {
                        _gotoNext = 3642069i32;
                    };
                } else if (__value__ == (3642914i32)) {
                    {
                        _n_3642960 = (_t_3640435.funcs.length);
                        if ((_n_3642960 > (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3642985i32;
                        } else {
                            _gotoNext = 3643028i32;
                        };
                    };
                } else if (__value__ == (3642985i32)) {
                    _t_3640435.funcs[(_n_3642960 - (1 : stdgo.GoInt) : stdgo.GoInt)].end = (@:checkr _sym_3642077 ?? throw "null pointer dereference").value;
                    _gotoNext = 3643028i32;
                } else if (__value__ == (3643028i32)) {
                    if ((((@:checkr _sym_3642077 ?? throw "null pointer dereference").name == ("runtime.etext" : stdgo.GoString)) || ((@:checkr _sym_3642077 ?? throw "null pointer dereference").name == ("etext" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3643082i32;
                    } else {
                        _gotoNext = 3643150i32;
                    };
                } else if (__value__ == (3643082i32)) {
                    _i_3642044++;
                    _gotoNext = 3642040i32;
                } else if (__value__ == (3643150i32)) {
                    _gotoNext = 3643182i32;
                } else if (__value__ == (3643182i32)) {
                    _end_3643172 = (_i_3642044 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _countloopBreak = false;
                    _gotoNext = 3643196i32;
                } else if (__value__ == (3643196i32)) {
                    if (!_countloopBreak && ((_end_3643172 < (_t_3640435.syms.length) : Bool))) {
                        _gotoNext = 3643238i32;
                    } else {
                        _gotoNext = 3643427i32;
                    };
                } else if (__value__ == (3643232i32)) {
                    _end_3643172++;
                    _gotoNext = 3643196i32;
                } else if (__value__ == (3643238i32)) {
                    _gotoNext = 3643244i32;
                } else if (__value__ == (3643244i32)) {
                    {
                        final __value__ = _t_3640435.syms[(_end_3643172 : stdgo.GoInt)].type;
                        if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3643274i32;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3643334i32;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3643358i32;
                        } else {
                            _gotoNext = 3643232i32;
                        };
                    };
                } else if (__value__ == (3643274i32)) {
                    _countloopBreak = true;
                    _gotoNext = 3643196i32;
                } else if (__value__ == (3643334i32)) {
                    _np_3643154++;
                    _gotoNext = 3643232i32;
                } else if (__value__ == (3643358i32)) {
                    _na_3643158++;
                    _gotoNext = 3643232i32;
                } else if (__value__ == (3643427i32)) {
                    _n_3643427 = (_t_3640435.funcs.length);
                    _t_3640435.funcs = (_t_3640435.funcs.__slice__((0 : stdgo.GoInt), (_n_3643427 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _fn_3643478 = (stdgo.Go.setRef(_t_3640435.funcs[(_n_3643427 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    (@:checkr _sym_3642077 ?? throw "null pointer dereference").func = _fn_3643478;
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>((0 : stdgo.GoInt).toBasic(), _np_3643154) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").locals = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>((0 : stdgo.GoInt).toBasic(), _na_3643158) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").sym = _sym_3642077;
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").entry = (@:checkr _sym_3642077 ?? throw "null pointer dereference").value;
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").obj = _obj_3641710;
                    if ((_t_3640435._go12line != null && ((_t_3640435._go12line : Dynamic).__nil__ == null || !(_t_3640435._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3643663i32;
                    } else if ((_pcln != null && ((_pcln : Dynamic).__nil__ == null || !(_pcln : Dynamic).__nil__))) {
                        _gotoNext = 3643842i32;
                    } else {
                        _gotoNext = 3643916i32;
                    };
                } else if (__value__ == (3643663i32)) {
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").lineTable = _t_3640435._go12line;
                    _gotoNext = 3643916i32;
                } else if (__value__ == (3643842i32)) {
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").lineTable = @:check2r _pcln._slice((@:checkr _fn_3643478 ?? throw "null pointer dereference").entry);
                    _pcln = (@:checkr _fn_3643478 ?? throw "null pointer dereference").lineTable;
                    _gotoNext = 3643916i32;
                } else if (__value__ == (3643916i32)) {
                    _j_3643920 = _i_3642044;
                    _gotoNext = 3643916i32;
                    if ((_j_3643920 < _end_3643172 : Bool)) {
                        _gotoNext = 3643941i32;
                    } else {
                        _gotoNext = 3644238i32;
                    };
                } else if (__value__ == (3643937i32)) {
                    _j_3643920++;
                    _gotoNext = 3643916i32;
                } else if (__value__ == (3643941i32)) {
                    _s_3643947 = (stdgo.Go.setRef(_t_3640435.syms[(_j_3643920 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
                    _gotoNext = 3643967i32;
                } else if (__value__ == (3643967i32)) {
                    {
                        final __value__ = (@:checkr _s_3643947 ?? throw "null pointer dereference").type;
                        if (__value__ == ((109 : stdgo.GoUInt8))) {
                            _gotoNext = 3643987i32;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3644034i32;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3644131i32;
                        } else {
                            _gotoNext = 3643937i32;
                        };
                    };
                } else if (__value__ == (3643987i32)) {
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").frameSize = ((@:checkr _s_3643947 ?? throw "null pointer dereference").value : stdgo.GoInt);
                    _gotoNext = 3643937i32;
                } else if (__value__ == (3644034i32)) {
                    _n_3644049 = ((@:checkr _fn_3643478 ?? throw "null pointer dereference").params.length);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").params = ((@:checkr _fn_3643478 ?? throw "null pointer dereference").params.__slice__((0 : stdgo.GoInt), (_n_3644049 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").params[(_n_3644049 : stdgo.GoInt)] = _s_3643947;
                    _gotoNext = 3643937i32;
                } else if (__value__ == (3644131i32)) {
                    _n_3644146 = ((@:checkr _fn_3643478 ?? throw "null pointer dereference").locals.length);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").locals = ((@:checkr _fn_3643478 ?? throw "null pointer dereference").locals.__slice__((0 : stdgo.GoInt), (_n_3644146 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>>);
                    (@:checkr _fn_3643478 ?? throw "null pointer dereference").locals[(_n_3644146 : stdgo.GoInt)] = _s_3643947;
                    _gotoNext = 3643937i32;
                } else if (__value__ == (3644238i32)) {
                    _i_3642044 = (_end_3643172 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3642069i32;
                } else if (__value__ == (3644276i32)) {
                    if (((_t_3640435._go12line != null && ((_t_3640435._go12line : Dynamic).__nil__ == null || !(_t_3640435._go12line : Dynamic).__nil__)) && (_nf_3640549 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3644308i32;
                    } else {
                        _gotoNext = 3644349i32;
                    };
                } else if (__value__ == (3644308i32)) {
                    _t_3640435.funcs = @:check2r _t_3640435._go12line._go12Funcs();
                    _gotoNext = 3644349i32;
                } else if (__value__ == (3644349i32)) {
                    if ((_obj_3641710 != null && ((_obj_3641710 : Dynamic).__nil__ == null || !(_obj_3641710 : Dynamic).__nil__))) {
                        _gotoNext = 3644363i32;
                    } else {
                        _gotoNext = 3644399i32;
                    };
                } else if (__value__ == (3644363i32)) {
                    (@:checkr _obj_3641710 ?? throw "null pointer dereference").funcs = (_t_3640435.funcs.__slice__(_lastf_3642028) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
                    _gotoNext = 3644399i32;
                } else if (__value__ == (3644399i32)) {
                    return { _0 : (stdgo.Go.setRef(_t_3640435) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_table.Table>), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
