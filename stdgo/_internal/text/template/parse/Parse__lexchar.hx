package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_3643687:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3643635i32;
                } else if (__value__ == (3643635i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3643642i32;
                } else if (__value__ == (3643642i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3643646i32;
                    } else {
                        _gotoNext = 3643863i32;
                    };
                } else if (__value__ == (3643646i32)) {
                    _gotoNext = 3643650i32;
                } else if (__value__ == (3643650i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3643670i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3643758i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3643830i32;
                        } else {
                            _gotoNext = 3643642i32;
                        };
                    };
                } else if (__value__ == (3643670i32)) {
                    {
                        _r_3643687 = @:check2r _l._next();
                        if (((_r_3643687 != (-1 : stdgo.GoInt32)) && (_r_3643687 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3643724i32;
                        } else {
                            _gotoNext = 3643744i32;
                        };
                    };
                } else if (__value__ == (3643724i32)) {
                    _gotoNext = 3643642i32;
                } else if (__value__ == (3643744i32)) {
                    _gotoNext = 3643758i32;
                } else if (__value__ == (3643758i32)) {
                    return @:check2r _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3643642i32;
                } else if (__value__ == (3643830i32)) {
                    loopBreak = true;
                    _gotoNext = 3643642i32;
                } else if (__value__ == (3643863i32)) {
                    return @:check2r _l._emit((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
