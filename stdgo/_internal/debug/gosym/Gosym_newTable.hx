package stdgo._internal.debug.gosym;
function newTable(_symtab:stdgo.Slice<stdgo.GoUInt8>, _pcln:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>):{ var _0 : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>; var _1 : stdgo.Error; } {
        var _n_3662008:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_3661767:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t_3659483:stdgo._internal.debug.gosym.Gosym_Table.Table = ({} : stdgo._internal.debug.gosym.Gosym_Table.Table);
        var _n_3659363:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3662475:stdgo.GoInt = (0 : stdgo.GoInt);
        var _countloopBreak = false;
        var _end_3661548:stdgo.GoInt = (0 : stdgo.GoInt);
        var _nz_3659606:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3663194:stdgo.GoInt = (0 : stdgo.GoInt);
        var _end_3662220:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3661812:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        var _j_3661785:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_3661610:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _sym_3661125:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        var _i_3661092:stdgo.GoInt = (0 : stdgo.GoInt);
        var _obj_3660758:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
        var _j_3662968:stdgo.GoInt = (0 : stdgo.GoInt);
        var _na_3662206:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3661443:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lasttyp_3659615:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _nf_3659597:stdgo.GoInt = (0 : stdgo.GoInt);
        var _n_3663097:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3662995:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
        var _np_3662202:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lastf_3661076:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fname_3659535:stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
        var _fn_3662526:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
        var _err_3659370:stdgo.Error = (null : stdgo.Error);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _err_3659370 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_T_sym.T_sym):stdgo.Error {
                        _n_3659363++;
                        return (null : stdgo.Error);
                    });
                    if (_err_3659370 != null) {
                        _gotoNext = 3659454i32;
                    } else {
                        _gotoNext = 3659479i32;
                    };
                } else if (__value__ == (3659454i32)) {
                    return { _0 : null, _1 : _err_3659370 };
                    _gotoNext = 3659479i32;
                } else if (__value__ == (3659479i32)) {
                    if (_pcln._isGo12()) {
                        _gotoNext = 3659509i32;
                    } else {
                        _gotoNext = 3659535i32;
                    };
                } else if (__value__ == (3659509i32)) {
                    _t_3659483._go12line = _pcln;
                    _gotoNext = 3659535i32;
                } else if (__value__ == (3659535i32)) {
                    _fname_3659535 = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
                        x.__defaultValue__ = () -> ("" : stdgo.GoString);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUInt16, stdgo.GoString>);
                    _t_3659483.syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>((0 : stdgo.GoInt).toBasic(), _n_3659363, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _n_3659363 ? (0 : stdgo.GoInt).toBasic() : _n_3659363 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    _nf_3659597 = (0 : stdgo.GoInt);
                    _nz_3659606 = (0 : stdgo.GoInt);
                    _lasttyp_3659615 = (0 : stdgo.GoUInt8);
                    _err_3659370 = stdgo._internal.debug.gosym.Gosym__walksymtab._walksymtab(_symtab, function(_s:stdgo._internal.debug.gosym.Gosym_T_sym.T_sym):stdgo.Error {
                        var _n = (_t_3659483.syms.length : stdgo.GoInt);
                        _t_3659483.syms = (_t_3659483.syms.__slice__((0 : stdgo.GoInt), (_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                        var _ts = (stdgo.Go.setRef(_t_3659483.syms[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                        _ts.type = _s._typ;
                        _ts.value = _s._value;
                        _ts.goType = _s._gotype;
                        _ts._goVersion = _pcln._version;
                        {
                            final __value__ = _s._typ;
                            if (__value__ == ((122 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8))) {
                                if (((_lasttyp_3659615 != (122 : stdgo.GoUInt8)) && (_lasttyp_3659615 != (90 : stdgo.GoUInt8)) : Bool)) {
                                    _nz_3659606++;
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
                                _ts.name = ((_s._name.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                            };
                        };
                    });
                    if (_err_3659370 != null) {
                        _gotoNext = 3660664i32;
                    } else {
                        _gotoNext = 3660689i32;
                    };
                } else if (__value__ == (3660664i32)) {
                    return { _0 : null, _1 : _err_3659370 };
                    _gotoNext = 3660689i32;
                } else if (__value__ == (3660689i32)) {
                    _t_3659483.funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>((0 : stdgo.GoInt).toBasic(), _nf_3659597, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nf_3659597 ? (0 : stdgo.GoInt).toBasic() : _nf_3659597 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                    _t_3659483.files = ({
                        final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>>);
                    if ((_t_3659483._go12line != null && ((_t_3659483._go12line : Dynamic).__nil__ == null || !(_t_3659483._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3660789i32;
                    } else {
                        _gotoNext = 3660921i32;
                    };
                } else if (__value__ == (3660789i32)) {
                    _t_3659483.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>((1 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1 : stdgo.GoInt).toBasic() > 0 ? (1 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                    _obj_3660758 = (stdgo.Go.setRef(_t_3659483.objs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                    _t_3659483._go12line._go12MapFiles(_t_3659483.files, _obj_3660758);
                    _gotoNext = 3661076i32;
                } else if (__value__ == (3660921i32)) {
                    _gotoNext = 3660921i32;
                    _t_3659483.objs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>((0 : stdgo.GoInt).toBasic(), _nz_3659606, ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > _nz_3659606 ? (0 : stdgo.GoInt).toBasic() : _nz_3659606 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_Obj.Obj)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                    var __blank__ = 0i32;
                    _gotoNext = 3661076i32;
                } else if (__value__ == (3661076i32)) {
                    _lastf_3661076 = (0 : stdgo.GoInt);
                    _i_3661092 = (0 : stdgo.GoInt);
                    _gotoNext = 3661088i32;
                } else if (__value__ == (3661088i32)) {
                    if ((_i_3661092 < (_t_3659483.syms.length) : Bool)) {
                        _gotoNext = 3661121i32;
                    } else {
                        _gotoNext = 3663324i32;
                    };
                } else if (__value__ == (3661117i32)) {
                    _i_3661092++;
                    _gotoNext = 3661088i32;
                } else if (__value__ == (3661121i32)) {
                    _sym_3661125 = (stdgo.Go.setRef(_t_3659483.syms[(_i_3661092 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    _gotoNext = 3661145i32;
                } else if (__value__ == (3661145i32)) {
                    {
                        final __value__ = _sym_3661125.type;
                        if (__value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3661165i32;
                        } else if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8))) {
                            _gotoNext = 3661962i32;
                        } else {
                            _gotoNext = 3661117i32;
                        };
                    };
                } else if (__value__ == (3661165i32)) {
                    if ((_t_3659483._go12line != null && ((_t_3659483._go12line : Dynamic).__nil__ == null || !(_t_3659483._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3661219i32;
                    } else {
                        _gotoNext = 3661339i32;
                    };
                } else if (__value__ == (3661219i32)) {
                    _gotoNext = 3661117i32;
                } else if (__value__ == (3661339i32)) {
                    if ((_obj_3660758 != null && ((_obj_3660758 : Dynamic).__nil__ == null || !(_obj_3660758 : Dynamic).__nil__))) {
                        _gotoNext = 3661353i32;
                    } else {
                        _gotoNext = 3661395i32;
                    };
                } else if (__value__ == (3661353i32)) {
                    _obj_3660758.funcs = (_t_3659483.funcs.__slice__(_lastf_3661076) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                    _gotoNext = 3661395i32;
                } else if (__value__ == (3661395i32)) {
                    _lastf_3661076 = (_t_3659483.funcs.length);
                    _n_3661443 = (_t_3659483.objs.length);
                    _t_3659483.objs = (_t_3659483.objs.__slice__((0 : stdgo.GoInt), (_n_3661443 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                    _obj_3660758 = (stdgo.Go.setRef(_t_3659483.objs[(_n_3661443 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>);
                    _end_3661548 = (_i_3661092 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3661559i32;
                } else if (__value__ == (3661559i32)) {
                    if ((_end_3661548 < (_t_3659483.syms.length) : Bool)) {
                        _gotoNext = 3661601i32;
                    } else {
                        _gotoNext = 3661681i32;
                    };
                } else if (__value__ == (3661595i32)) {
                    _end_3661548++;
                    _gotoNext = 3661559i32;
                } else if (__value__ == (3661601i32)) {
                    {
                        _c_3661610 = _t_3659483.syms[(_end_3661548 : stdgo.GoInt)].type;
                        if (((_c_3661610 != (90 : stdgo.GoUInt8)) && (_c_3661610 != (122 : stdgo.GoUInt8)) : Bool)) {
                            _gotoNext = 3661654i32;
                        } else {
                            _gotoNext = 3661595i32;
                        };
                    };
                } else if (__value__ == (3661654i32)) {
                    _gotoNext = 3661681i32;
                } else if (__value__ == (3661681i32)) {
                    _obj_3660758.paths = (_t_3659483.syms.__slice__(_i_3661092, _end_3661548) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    _i_3661092 = (_end_3661548 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _depth_3661767 = (0 : stdgo.GoInt);
                    if ((0i32 : stdgo.GoInt) < (_obj_3660758.paths.length)) {
                        _gotoNext = 3661956i32;
                    } else {
                        _gotoNext = 3661117i32;
                    };
                } else if (__value__ == (3661785i32)) {
                    _j_3661785++;
                    _gotoNext = 3661957i32;
                } else if (__value__ == (3661806i32)) {
                    _s_3661812 = (stdgo.Go.setRef(_obj_3660758.paths[(_j_3661785 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    if (_s_3661812.name == (stdgo.Go.str())) {
                        _gotoNext = 3661851i32;
                    } else {
                        _gotoNext = 3661877i32;
                    };
                } else if (__value__ == (3661851i32)) {
                    _depth_3661767--;
                    _gotoNext = 3661785i32;
                } else if (__value__ == (3661877i32)) {
                    _gotoNext = 3661877i32;
                    if (_depth_3661767 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3661898i32;
                    } else {
                        _gotoNext = 3661940i32;
                    };
                } else if (__value__ == (3661898i32)) {
                    _t_3659483.files[_s_3661812.name] = _obj_3660758;
                    _gotoNext = 3661940i32;
                } else if (__value__ == (3661940i32)) {
                    _depth_3661767++;
                    var __blank__ = 0i32;
                    _gotoNext = 3661785i32;
                } else if (__value__ == (3661956i32)) {
                    _j_3661785 = 0i32;
                    _gotoNext = 3661957i32;
                } else if (__value__ == (3661957i32)) {
                    if (_j_3661785 < (_obj_3660758.paths.length)) {
                        _gotoNext = 3661806i32;
                    } else {
                        _gotoNext = 3661117i32;
                    };
                } else if (__value__ == (3661962i32)) {
                    {
                        _n_3662008 = (_t_3659483.funcs.length);
                        if ((_n_3662008 > (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3662033i32;
                        } else {
                            _gotoNext = 3662076i32;
                        };
                    };
                } else if (__value__ == (3662033i32)) {
                    _t_3659483.funcs[(_n_3662008 - (1 : stdgo.GoInt) : stdgo.GoInt)].end = _sym_3661125.value;
                    _gotoNext = 3662076i32;
                } else if (__value__ == (3662076i32)) {
                    if (((_sym_3661125.name == ("runtime.etext" : stdgo.GoString)) || (_sym_3661125.name == ("etext" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3662130i32;
                    } else {
                        _gotoNext = 3662198i32;
                    };
                } else if (__value__ == (3662130i32)) {
                    _i_3661092++;
                    _gotoNext = 3661088i32;
                } else if (__value__ == (3662198i32)) {
                    _gotoNext = 3662230i32;
                } else if (__value__ == (3662230i32)) {
                    _end_3662220 = (_i_3661092 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _countloopBreak = false;
                    _gotoNext = 3662244i32;
                } else if (__value__ == (3662244i32)) {
                    if (!_countloopBreak && ((_end_3662220 < (_t_3659483.syms.length) : Bool))) {
                        _gotoNext = 3662286i32;
                    } else {
                        _gotoNext = 3662475i32;
                    };
                } else if (__value__ == (3662280i32)) {
                    _end_3662220++;
                    _gotoNext = 3662244i32;
                } else if (__value__ == (3662286i32)) {
                    _gotoNext = 3662292i32;
                } else if (__value__ == (3662292i32)) {
                    {
                        final __value__ = _t_3659483.syms[(_end_3662220 : stdgo.GoInt)].type;
                        if (__value__ == ((84 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((76 : stdgo.GoUInt8)) || __value__ == ((108 : stdgo.GoUInt8)) || __value__ == ((90 : stdgo.GoUInt8)) || __value__ == ((122 : stdgo.GoUInt8))) {
                            _gotoNext = 3662322i32;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3662382i32;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3662406i32;
                        } else {
                            _gotoNext = 3662280i32;
                        };
                    };
                } else if (__value__ == (3662322i32)) {
                    _countloopBreak = true;
                    _gotoNext = 3662244i32;
                } else if (__value__ == (3662382i32)) {
                    _np_3662202++;
                    _gotoNext = 3662280i32;
                } else if (__value__ == (3662406i32)) {
                    _na_3662206++;
                    _gotoNext = 3662280i32;
                } else if (__value__ == (3662475i32)) {
                    _n_3662475 = (_t_3659483.funcs.length);
                    _t_3659483.funcs = (_t_3659483.funcs.__slice__((0 : stdgo.GoInt), (_n_3662475 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                    _fn_3662526 = (stdgo.Go.setRef(_t_3659483.funcs[(_n_3662475 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                    _sym_3661125.func = _fn_3662526;
                    _fn_3662526.params = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>((0 : stdgo.GoInt).toBasic(), _np_3662202) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                    _fn_3662526.locals = (new stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>((0 : stdgo.GoInt).toBasic(), _na_3662206) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                    _fn_3662526.sym = _sym_3661125;
                    _fn_3662526.entry = _sym_3661125.value;
                    _fn_3662526.obj = _obj_3660758;
                    if ((_t_3659483._go12line != null && ((_t_3659483._go12line : Dynamic).__nil__ == null || !(_t_3659483._go12line : Dynamic).__nil__))) {
                        _gotoNext = 3662711i32;
                    } else if ((_pcln != null && ((_pcln : Dynamic).__nil__ == null || !(_pcln : Dynamic).__nil__))) {
                        _gotoNext = 3662890i32;
                    } else {
                        _gotoNext = 3662964i32;
                    };
                } else if (__value__ == (3662711i32)) {
                    _fn_3662526.lineTable = _t_3659483._go12line;
                    _gotoNext = 3662964i32;
                } else if (__value__ == (3662890i32)) {
                    _fn_3662526.lineTable = _pcln._slice(_fn_3662526.entry);
                    _pcln = _fn_3662526.lineTable;
                    _gotoNext = 3662964i32;
                } else if (__value__ == (3662964i32)) {
                    _j_3662968 = _i_3661092;
                    _gotoNext = 3662964i32;
                    if ((_j_3662968 < _end_3662220 : Bool)) {
                        _gotoNext = 3662989i32;
                    } else {
                        _gotoNext = 3663286i32;
                    };
                } else if (__value__ == (3662985i32)) {
                    _j_3662968++;
                    _gotoNext = 3662964i32;
                } else if (__value__ == (3662989i32)) {
                    _s_3662995 = (stdgo.Go.setRef(_t_3659483.syms[(_j_3662968 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>);
                    _gotoNext = 3663015i32;
                } else if (__value__ == (3663015i32)) {
                    {
                        final __value__ = _s_3662995.type;
                        if (__value__ == ((109 : stdgo.GoUInt8))) {
                            _gotoNext = 3663035i32;
                        } else if (__value__ == ((112 : stdgo.GoUInt8))) {
                            _gotoNext = 3663082i32;
                        } else if (__value__ == ((97 : stdgo.GoUInt8))) {
                            _gotoNext = 3663179i32;
                        } else {
                            _gotoNext = 3662985i32;
                        };
                    };
                } else if (__value__ == (3663035i32)) {
                    _fn_3662526.frameSize = (_s_3662995.value : stdgo.GoInt);
                    _gotoNext = 3662985i32;
                } else if (__value__ == (3663082i32)) {
                    _n_3663097 = (_fn_3662526.params.length);
                    _fn_3662526.params = (_fn_3662526.params.__slice__((0 : stdgo.GoInt), (_n_3663097 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                    _fn_3662526.params[(_n_3663097 : stdgo.GoInt)] = _s_3662995;
                    _gotoNext = 3662985i32;
                } else if (__value__ == (3663179i32)) {
                    _n_3663194 = (_fn_3662526.locals.length);
                    _fn_3662526.locals = (_fn_3662526.locals.__slice__((0 : stdgo.GoInt), (_n_3663194 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Sym.Sym>>);
                    _fn_3662526.locals[(_n_3663194 : stdgo.GoInt)] = _s_3662995;
                    _gotoNext = 3662985i32;
                } else if (__value__ == (3663286i32)) {
                    _i_3661092 = (_end_3662220 - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3661117i32;
                } else if (__value__ == (3663324i32)) {
                    if (((_t_3659483._go12line != null && ((_t_3659483._go12line : Dynamic).__nil__ == null || !(_t_3659483._go12line : Dynamic).__nil__)) && (_nf_3659597 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 3663356i32;
                    } else {
                        _gotoNext = 3663397i32;
                    };
                } else if (__value__ == (3663356i32)) {
                    _t_3659483.funcs = _t_3659483._go12line._go12Funcs();
                    _gotoNext = 3663397i32;
                } else if (__value__ == (3663397i32)) {
                    if ((_obj_3660758 != null && ((_obj_3660758 : Dynamic).__nil__ == null || !(_obj_3660758 : Dynamic).__nil__))) {
                        _gotoNext = 3663411i32;
                    } else {
                        _gotoNext = 3663447i32;
                    };
                } else if (__value__ == (3663411i32)) {
                    _obj_3660758.funcs = (_t_3659483.funcs.__slice__(_lastf_3661076) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Func.Func>);
                    _gotoNext = 3663447i32;
                } else if (__value__ == (3663447i32)) {
                    return { _0 : (stdgo.Go.setRef(_t_3659483) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Table.Table>), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
