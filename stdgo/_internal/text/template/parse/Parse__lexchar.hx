package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_0:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3668460i32;
                } else if (__value__ == (3668460i32)) {
                    0i32;
                    loopBreak = false;
                    _gotoNext = 3668467i32;
                } else if (__value__ == (3668467i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3668471i32;
                    } else {
                        _gotoNext = 3668688i32;
                    };
                } else if (__value__ == (3668471i32)) {
                    _gotoNext = 3668475i32;
                } else if (__value__ == (3668475i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3668495i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3668583i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3668655i32;
                        } else {
                            _gotoNext = 3668467i32;
                        };
                    };
                } else if (__value__ == (3668495i32)) {
                    {
                        _r_0 = @:check2r _l._next();
                        if (((_r_0 != (-1 : stdgo.GoInt32)) && (_r_0 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3668549i32;
                        } else {
                            _gotoNext = 3668569i32;
                        };
                    };
                } else if (__value__ == (3668549i32)) {
                    _gotoNext = 3668467i32;
                } else if (__value__ == (3668569i32)) {
                    _gotoNext = 3668583i32;
                } else if (__value__ == (3668583i32)) {
                    return @:check2r _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3668467i32;
                } else if (__value__ == (3668655i32)) {
                    loopBreak = true;
                    _gotoNext = 3668467i32;
                } else if (__value__ == (3668688i32)) {
                    return @:check2r _l._emit((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
