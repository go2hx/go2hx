package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Obj_asInterface) class Obj_static_extension {
    @:keep
    @:tdfield
    static public function _alineFromLine( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>, _path:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = _o;
        var _depth_3648250:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3648128:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _i_3648125:stdgo.GoInt = (0 : stdgo.GoInt);
        var _val_3648351:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3648323:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _i_3648328_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _incstart_3648267:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_line < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3648072i32;
                    } else {
                        _gotoNext = 3648121i32;
                    };
                } else if (__value__ == (3648072i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>)) };
                    _gotoNext = 3648121i32;
                } else if (__value__ == (3648121i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3648701i32;
                    } else {
                        _gotoNext = 3648705i32;
                    };
                } else if (__value__ == (3648147i32)) {
                    _s_3648128 = (@:checkr _o ?? throw "null pointer dereference").paths[(_i_3648125 : stdgo.GoInt)];
                    if (_s_3648128.name != (_path)) {
                        _gotoNext = 3648189i32;
                    } else {
                        _gotoNext = 3648250i32;
                    };
                } else if (__value__ == (3648189i32)) {
                    _i_3648125++;
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648250i32)) {
                    _depth_3648250 = (0 : stdgo.GoInt);
                    _line = (_line + ((_s_3648128.value : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3648304i32;
                } else if (__value__ == (3648304i32)) {
                    if ((0i32 : stdgo.GoInt) < (((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_3648125) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>).length)) {
                        _gotoNext = 3648656i32;
                    } else {
                        _gotoNext = 3648661i32;
                    };
                } else if (__value__ == (3648320i32)) {
                    _i_3648328_0++;
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648346i32)) {
                    _s_3648323 = ((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_3648125) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>)[(_i_3648328_0 : stdgo.GoInt)];
                    _val_3648351 = (_s_3648323.value : stdgo.GoInt);
                    _gotoNext = 3648374i32;
                } else if (__value__ == (3648374i32)) {
                    if (((_depth_3648250 == (1 : stdgo.GoInt)) && (_val_3648351 >= _line : Bool) : Bool)) {
                        _gotoNext = 3648386i32;
                    } else if (_s_3648323.name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3648447i32;
                    } else {
                        _gotoNext = 3648583i32;
                    };
                } else if (__value__ == (3648386i32)) {
                    return { _0 : (_line - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648447i32)) {
                    _depth_3648250--;
                    if (_depth_3648250 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3648496i32;
                    } else if (_depth_3648250 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3648543i32;
                    } else {
                        _gotoNext = 3648320i32;
                    };
                } else if (__value__ == (3648496i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopbreak._pathloopBreak = true;
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648543i32)) {
                    _line = (_line + ((_val_3648351 - _incstart_3648267 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648583i32)) {
                    if (_depth_3648250 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3648610i32;
                    } else {
                        _gotoNext = 3648642i32;
                    };
                } else if (__value__ == (3648610i32)) {
                    _incstart_3648267 = _val_3648351;
                    _gotoNext = 3648642i32;
                } else if (__value__ == (3648642i32)) {
                    _depth_3648250++;
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648656i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = ((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_3648125) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>)[(0i32 : stdgo.GoInt)];
                        _i_3648328_0 = __tmp__0;
                        _s_3648323 = __tmp__1;
                    };
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648657i32)) {
                    if (_i_3648328_0 < (((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_3648125) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>).length)) {
                        _gotoNext = 3648346i32;
                    } else {
                        _gotoNext = 3648661i32;
                    };
                } else if (__value__ == (3648661i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>)) };
                    _i_3648125++;
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648701i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").paths[(0i32 : stdgo.GoInt)];
                        _i_3648125 = __tmp__0;
                        _s_3648128 = __tmp__1;
                    };
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648702i32)) {
                    if (_i_3648125 < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3648147i32;
                    } else {
                        _gotoNext = 3648705i32;
                    };
                } else if (__value__ == (3648705i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((_path : stdgo._internal.debug.gosym.Gosym_unknownfileerror.UnknownFileError)) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _lineFromAline( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>, _aline:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = _o;
        var _val_3647518:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_3647495:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _i_3647500_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _tos_3647462:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
        var _noPath_3647426:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {};
                    _noPath_3647426 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), null) : stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>);
                    _tos_3647462 = _noPath_3647426;
                    _gotoNext = 3647477i32;
                } else if (__value__ == (3647477i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3647895i32;
                    } else {
                        _gotoNext = 3647900i32;
                    };
                } else if (__value__ == (3647492i32)) {
                    _i_3647500_0++;
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647514i32)) {
                    _s_3647495 = (@:checkr _o ?? throw "null pointer dereference").paths[(_i_3647500_0 : stdgo.GoInt)];
                    _val_3647518 = (_s_3647495.value : stdgo.GoInt);
                    _gotoNext = 3647540i32;
                } else if (__value__ == (3647540i32)) {
                    if ((_val_3647518 > _aline : Bool)) {
                        _gotoNext = 3647551i32;
                    } else if (_val_3647518 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3647590i32;
                    } else if (_s_3647495.name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3647675i32;
                    } else {
                        _gotoNext = 3647831i32;
                    };
                } else if (__value__ == (3647551i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopbreak._pathloopBreak = true;
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647590i32)) {
                    _tos_3647462 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt(_s_3647495.name?.__copy__(), _val_3647518, (0 : stdgo.GoInt), _noPath_3647426) : stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647675i32)) {
                    if (_tos_3647462 == (_noPath_3647426)) {
                        _gotoNext = 3647724i32;
                    } else {
                        _gotoNext = 3647775i32;
                    };
                } else if (__value__ == (3647724i32)) {
                    return { _0 : ("<malformed symbol table>" : stdgo.GoString), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3647775i32;
                } else if (__value__ == (3647775i32)) {
                    (@:checkr (@:checkr _tos_3647462 ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._offset = ((@:checkr (@:checkr _tos_3647462 ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._offset + ((_val_3647518 - (@:checkr _tos_3647462 ?? throw "null pointer dereference")._start : stdgo.GoInt)) : stdgo.GoInt);
                    _tos_3647462 = (@:checkr _tos_3647462 ?? throw "null pointer dereference")._prev;
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647831i32)) {
                    _tos_3647462 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt(_s_3647495.name?.__copy__(), _val_3647518, (0 : stdgo.GoInt), _tos_3647462) : stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647895i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").paths[(0i32 : stdgo.GoInt)];
                        _i_3647500_0 = __tmp__0;
                        _s_3647495 = __tmp__1;
                    };
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647896i32)) {
                    if (_i_3647500_0 < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3647514i32;
                    } else {
                        _gotoNext = 3647900i32;
                    };
                } else if (__value__ == (3647900i32)) {
                    if (_tos_3647462 == (_noPath_3647426)) {
                        _gotoNext = 3647917i32;
                    } else {
                        _gotoNext = 3647938i32;
                    };
                } else if (__value__ == (3647917i32)) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3647938i32)) {
                    return { _0 : (@:checkr _tos_3647462 ?? throw "null pointer dereference")._path?.__copy__(), _1 : (((_aline - (@:checkr _tos_3647462 ?? throw "null pointer dereference")._start : stdgo.GoInt) - (@:checkr _tos_3647462 ?? throw "null pointer dereference")._offset : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
