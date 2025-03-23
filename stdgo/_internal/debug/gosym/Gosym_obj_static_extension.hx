package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.Obj_asInterface) class Obj_static_extension {
    @:keep
    @:tdfield
    static public function _alineFromLine( _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>, _path:stdgo.GoString, _line:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _o:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj> = _o;
        var _val_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_37:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _iterator_3648328_36:stdgo.GoInt = (0 : stdgo.GoInt);
        var _incstart_35:stdgo.GoInt = (0 : stdgo.GoInt);
        var _depth_34:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_33:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _i_32:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
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
                    _s_33 = (@:checkr _o ?? throw "null pointer dereference").paths[(_i_32 : stdgo.GoInt)];
                    if (_s_33.name != (_path)) {
                        _gotoNext = 3648189i32;
                    } else {
                        _gotoNext = 3648250i32;
                    };
                } else if (__value__ == (3648189i32)) {
                    _i_32++;
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648250i32)) {
                    _depth_34 = (0 : stdgo.GoInt);
                    _line = (_line + ((_s_33.value : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3648304i32;
                } else if (__value__ == (3648304i32)) {
                    if ((0i32 : stdgo.GoInt) < (((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_32) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>).length)) {
                        _gotoNext = 3648656i32;
                    } else {
                        _gotoNext = 3648661i32;
                    };
                } else if (__value__ == (3648320i32)) {
                    _iterator_3648328_36++;
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648346i32)) {
                    _s_37 = ((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_32) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>)[(_iterator_3648328_36 : stdgo.GoInt)];
                    _val_38 = (_s_37.value : stdgo.GoInt);
                    _gotoNext = 3648374i32;
                } else if (__value__ == (3648374i32)) {
                    if (((_depth_34 == (1 : stdgo.GoInt)) && (_val_38 >= _line : Bool) : Bool)) {
                        _gotoNext = 3648386i32;
                    } else if (_s_37.name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3648447i32;
                    } else {
                        _gotoNext = 3648583i32;
                    };
                } else if (__value__ == (3648386i32)) {
                    return { _0 : (_line - (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648447i32)) {
                    _depth_34--;
                    if (_depth_34 == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3648496i32;
                    } else if (_depth_34 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3648543i32;
                    } else {
                        _gotoNext = 3648320i32;
                    };
                } else if (__value__ == (3648496i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopbreak._pathloopBreak = true;
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648543i32)) {
                    _line = (_line + ((_val_38 - _incstart_35 : stdgo.GoInt)) : stdgo.GoInt);
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648583i32)) {
                    if (_depth_34 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3648610i32;
                    } else {
                        _gotoNext = 3648642i32;
                    };
                } else if (__value__ == (3648610i32)) {
                    _incstart_35 = _val_38;
                    _gotoNext = 3648642i32;
                } else if (__value__ == (3648642i32)) {
                    _depth_34++;
                    _gotoNext = 3648320i32;
                } else if (__value__ == (3648656i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = ((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_32) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>)[(0i32 : stdgo.GoInt)];
                        _iterator_3648328_36 = @:binopAssign __tmp__0;
                        _s_37 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3648657i32;
                } else if (__value__ == (3648657i32)) {
                    if (_iterator_3648328_36 < (((@:checkr _o ?? throw "null pointer dereference").paths.__slice__(_i_32) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>).length)) {
                        _gotoNext = 3648346i32;
                    } else {
                        _gotoNext = 3648661i32;
                    };
                } else if (__value__ == (3648661i32)) {
                    return { _0 : (0 : stdgo.GoInt), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError(_path?.__copy__(), _line) : stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_unknownlineerror.UnknownLineError>)) };
                    _i_32++;
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648701i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").paths[(0i32 : stdgo.GoInt)];
                        _i_32 = @:binopAssign __tmp__0;
                        _s_33 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3648702i32;
                } else if (__value__ == (3648702i32)) {
                    if (_i_32 < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
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
        var _tos_28:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
        var _noPath_27:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt> = (null : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
        var _val_31:stdgo.GoInt = (0 : stdgo.GoInt);
        var _s_30:stdgo._internal.debug.gosym.Gosym_sym.Sym = ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym);
        var _iterator_3647500_29:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    {};
                    _noPath_27 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (0 : stdgo.GoInt), null) : stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t__linefromaline___localname___stackent_16022.T__lineFromAline___localname___stackEnt_16022>);
                    _tos_28 = _noPath_27;
                    _gotoNext = 3647477i32;
                } else if (__value__ == (3647477i32)) {
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3647895i32;
                    } else {
                        _gotoNext = 3647900i32;
                    };
                } else if (__value__ == (3647492i32)) {
                    _iterator_3647500_29++;
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647514i32)) {
                    _s_30 = (@:checkr _o ?? throw "null pointer dereference").paths[(_iterator_3647500_29 : stdgo.GoInt)];
                    _val_31 = (_s_30.value : stdgo.GoInt);
                    _gotoNext = 3647540i32;
                } else if (__value__ == (3647540i32)) {
                    if ((_val_31 > _aline : Bool)) {
                        _gotoNext = 3647551i32;
                    } else if (_val_31 == ((1 : stdgo.GoInt))) {
                        _gotoNext = 3647590i32;
                    } else if (_s_30.name == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3647675i32;
                    } else {
                        _gotoNext = 3647831i32;
                    };
                } else if (__value__ == (3647551i32)) {
                    stdgo._internal.debug.gosym.Gosym__pathloopbreak._pathloopBreak = true;
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647590i32)) {
                    _tos_28 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt(_s_30.name?.__copy__(), _val_31, (0 : stdgo.GoInt), _noPath_27) : stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647675i32)) {
                    if (_tos_28 == (_noPath_27)) {
                        _gotoNext = 3647724i32;
                    } else {
                        _gotoNext = 3647775i32;
                    };
                } else if (__value__ == (3647724i32)) {
                    return { _0 : ("<malformed symbol table>" : stdgo.GoString), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3647775i32;
                } else if (__value__ == (3647775i32)) {
                    (@:checkr (@:checkr _tos_28 ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._offset = ((@:checkr (@:checkr _tos_28 ?? throw "null pointer dereference")._prev ?? throw "null pointer dereference")._offset + ((_val_31 - (@:checkr _tos_28 ?? throw "null pointer dereference")._start : stdgo.GoInt)) : stdgo.GoInt);
                    _tos_28 = (@:checkr _tos_28 ?? throw "null pointer dereference")._prev;
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647831i32)) {
                    _tos_28 = (stdgo.Go.setRef((new stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt(_s_30.name?.__copy__(), _val_31, (0 : stdgo.GoInt), _tos_28) : stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_t_stackent.T_stackEnt>);
                    _gotoNext = 3647492i32;
                } else if (__value__ == (3647895i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _o ?? throw "null pointer dereference").paths[(0i32 : stdgo.GoInt)];
                        _iterator_3647500_29 = @:binopAssign __tmp__0;
                        _s_30 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3647896i32;
                } else if (__value__ == (3647896i32)) {
                    if (_iterator_3647500_29 < ((@:checkr _o ?? throw "null pointer dereference").paths.length)) {
                        _gotoNext = 3647514i32;
                    } else {
                        _gotoNext = 3647900i32;
                    };
                } else if (__value__ == (3647900i32)) {
                    if (_tos_28 == (_noPath_27)) {
                        _gotoNext = 3647917i32;
                    } else {
                        _gotoNext = 3647938i32;
                    };
                } else if (__value__ == (3647917i32)) {
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (0 : stdgo.GoInt) };
                    _gotoNext = 3647938i32;
                } else if (__value__ == (3647938i32)) {
                    return { _0 : (@:checkr _tos_28 ?? throw "null pointer dereference")._path?.__copy__(), _1 : (((_aline - (@:checkr _tos_28 ?? throw "null pointer dereference")._start : stdgo.GoInt) - (@:checkr _tos_28 ?? throw "null pointer dereference")._offset : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
