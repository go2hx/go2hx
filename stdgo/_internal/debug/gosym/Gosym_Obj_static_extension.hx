package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Obj_asInterface) class Obj_static_extension {
    @:keep
    static public function _alineFromLine( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>, _path:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = _o;
        var _i_3667173:stdgo.GoInt = (0 : stdgo.GoInt);
        var _val_3667399:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3667371:stdgo._internal.debug.gosym.Gosym_Sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym);
        var _i_3667376_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _incstart_3667315:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_3667298:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3667176:stdgo._internal.debug.gosym.Gosym_Sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_line < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3667120i32;
                    } else {
                        _gotoNext = 3667169i32;
                    };
                } else if (__value__ == (3667120i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
                    _gotoNext = 3667169i32;
                } else if (__value__ == (3667169i32)) {
                    if ((0i32 : stdgo.GoInt) < (_o.paths.length)) {
                        _gotoNext = 3667749i32;
                    } else {
                        _gotoNext = 3667753i32;
                    };
                } else if (__value__ == (3667195i32)) {
                    _s_3667176 = _o.paths[(_i_3667173 : stdgo.GoInt)];
                    if (_s_3667176.name != (_path)) {
                        _gotoNext = 3667237i32;
                    } else {
                        _gotoNext = 3667298i32;
                    };
                } else if (__value__ == (3667237i32)) {
                    _i_3667173++;
                    _gotoNext = 3667750i32;
                } else if (__value__ == (3667298i32)) {
                    _depth_3667298 = (0 : stdgo.GoInt);
                    _line = (_line + ((_s_3667176.value : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3667352i32;
                } else if (__value__ == (3667352i32)) {
                    if ((0i32 : stdgo.GoInt) < ((_o.paths.__slice__(_i_3667173) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>).length)) {
                        _gotoNext = 3667704i32;
                    } else {
                        _gotoNext = 3667709i32;
                    };
                } else if (__value__ == (3667368i32)) {
                    _i_3667376_0++;
                    _gotoNext = 3667705i32;
                } else if (__value__ == (3667394i32)) {
                    _s_3667371 = (_o.paths.__slice__(_i_3667173) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)[(_i_3667376_0 : stdgo.GoInt)];
                    _val_3667399 = (_s_3667371.value : stdgo.GoInt);
                    _gotoNext = 3667422i32;
                } else if (__value__ == (3667422i32)) {
                    if (((_depth_3667298 == (1 : stdgo.GoInt)) && (_val_3667399 >= _line : Bool) : Bool)) {
                        _gotoNext = 3667434i32;
                    } else if (_s_3667371.name == (stdgo.Go.str())) {
                        _gotoNext = 3667495i32;
                    } else {
                        _gotoNext = 3667631i32;
                    };
                } else if (__value__ == (3667434i32)) {
                    return { _0 : (_line - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = 3667368i32;
                } else if (__value__ == (3667495i32)) {
                    _depth_3667298--;
                    if (_depth_3667298 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3667544i32;
                    } else if (_depth_3667298 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3667591i32;
                    } else {
                        _gotoNext = 3667368i32;
                    };
                } else if (__value__ == (3667544i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopBreak._pathloopBreak = true;
                    _gotoNext = 3667705i32;
                } else if (__value__ == (3667591i32)) {
                    _line = (_line + ((_val_3667399 - _incstart_3667315 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3667368i32;
                } else if (__value__ == (3667631i32)) {
                    if (_depth_3667298 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3667658i32;
                    } else {
                        _gotoNext = 3667690i32;
                    };
                } else if (__value__ == (3667658i32)) {
                    _incstart_3667315 = _val_3667399;
                    _gotoNext = 3667690i32;
                } else if (__value__ == (3667690i32)) {
                    _depth_3667298++;
                    _gotoNext = 3667368i32;
                } else if (__value__ == (3667704i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (_o.paths.__slice__(_i_3667173) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>)[(0i32 : stdgo.GoInt)];
                        _i_3667376_0 = __tmp__0;
                        _s_3667371 = __tmp__1;
                    };
                    _gotoNext = 3667705i32;
                } else if (__value__ == (3667705i32)) {
                    if (_i_3667376_0 < ((_o.paths.__slice__(_i_3667173) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_Sym.Sym>).length)) {
                        _gotoNext = 3667394i32;
                    } else {
                        _gotoNext = 3667709i32;
                    };
                } else if (__value__ == (3667709i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError>)) };
                    _i_3667173++;
                    _gotoNext = 3667750i32;
                } else if (__value__ == (3667749i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _o.paths[(0i32 : stdgo.GoInt)];
                        _i_3667173 = __tmp__0;
                        _s_3667176 = __tmp__1;
                    };
                    _gotoNext = 3667750i32;
                } else if (__value__ == (3667750i32)) {
                    if (_i_3667173 < (_o.paths.length)) {
                        _gotoNext = 3667195i32;
                    } else {
                        _gotoNext = 3667753i32;
                    };
                } else if (__value__ == (3667753i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((_path : stdgo._internal.debug.gosym.Gosym_UnknownFileError.UnknownFileError)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    static public function _lineFromAline( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj>, _aline:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_Obj.Obj> = _o;
        var _val_3666566:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3666543:stdgo._internal.debug.gosym.Gosym_Sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_Sym.Sym);
        var _i_3666548_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tos_3666510:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt>);
        var _noPath_3666474:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {};
                    _noPath_3666474 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022(stdgo.Go.str()?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), null) : stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T__lineFromAline___localname___stackEnt_16022.T__lineFromAline___localname___stackEnt_16022>);
                    _tos_3666510 = _noPath_3666474;
                    _gotoNext = 3666525i32;
                } else if (__value__ == (3666525i32)) {
                    if ((0i32 : stdgo.GoInt) < (_o.paths.length)) {
                        _gotoNext = 3666943i32;
                    } else {
                        _gotoNext = 3666948i32;
                    };
                } else if (__value__ == (3666540i32)) {
                    _i_3666548_0++;
                    _gotoNext = 3666944i32;
                } else if (__value__ == (3666562i32)) {
                    _s_3666543 = _o.paths[(_i_3666548_0 : stdgo.GoInt)];
                    _val_3666566 = (_s_3666543.value : stdgo.GoInt);
                    _gotoNext = 3666588i32;
                } else if (__value__ == (3666588i32)) {
                    if ((_val_3666566 > _aline : Bool)) {
                        _gotoNext = 3666599i32;
                    } else if (_val_3666566 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3666638i32;
                    } else if (_s_3666543.name == (stdgo.Go.str())) {
                        _gotoNext = 3666723i32;
                    } else {
                        _gotoNext = 3666879i32;
                    };
                } else if (__value__ == (3666599i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopBreak._pathloopBreak = true;
                    _gotoNext = 3666944i32;
                } else if (__value__ == (3666638i32)) {
                    _tos_3666510 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt(_s_3666543.name?.__copy__(), _val_3666566, (0 : stdgo.GoInt), _noPath_3666474) : stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt>);
                    _gotoNext = 3666540i32;
                } else if (__value__ == (3666723i32)) {
                    if (_tos_3666510 == (_noPath_3666474)) {
                        _gotoNext = 3666772i32;
                    } else {
                        _gotoNext = 3666823i32;
                    };
                } else if (__value__ == (3666772i32)) {
                    return { _0 : ("<malformed symbol table>" : stdgo.GoString), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3666823i32;
                } else if (__value__ == (3666823i32)) {
                    _tos_3666510._prev._offset = (_tos_3666510._prev._offset + ((_val_3666566 - _tos_3666510._start : stdgo.GoInt)) : stdgo.GoInt);
                    _tos_3666510 = _tos_3666510._prev;
                    _gotoNext = 3666540i32;
                } else if (__value__ == (3666879i32)) {
                    _tos_3666510 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt(_s_3666543.name?.__copy__(), _val_3666566, (0 : stdgo.GoInt), _tos_3666510) : stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_T_stackEnt.T_stackEnt>);
                    _gotoNext = 3666540i32;
                } else if (__value__ == (3666943i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _o.paths[(0i32 : stdgo.GoInt)];
                        _i_3666548_0 = __tmp__0;
                        _s_3666543 = __tmp__1;
                    };
                    _gotoNext = 3666944i32;
                } else if (__value__ == (3666944i32)) {
                    if (_i_3666548_0 < (_o.paths.length)) {
                        _gotoNext = 3666562i32;
                    } else {
                        _gotoNext = 3666948i32;
                    };
                } else if (__value__ == (3666948i32)) {
                    if (_tos_3666510 == (_noPath_3666474)) {
                        _gotoNext = 3666965i32;
                    } else {
                        _gotoNext = 3666986i32;
                    };
                } else if (__value__ == (3666965i32)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3666986i32;
                } else if (__value__ == (3666986i32)) {
                    return { _0 : _tos_3666510._path?.__copy__(), _1 : (((_aline - _tos_3666510._start : stdgo.GoInt) - _tos_3666510._offset : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
