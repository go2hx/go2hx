package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_3646850:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3646798i32;
                } else if (__value__ == (3646798i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3646805i32;
                } else if (__value__ == (3646805i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3646809i32;
                    } else {
                        _gotoNext = 3647026i32;
                    };
                } else if (__value__ == (3646809i32)) {
                    _gotoNext = 3646813i32;
                } else if (__value__ == (3646813i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3646833i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3646921i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3646993i32;
                        } else {
                            _gotoNext = 3646805i32;
                        };
                    };
                } else if (__value__ == (3646833i32)) {
                    {
                        _r_3646850 = @:check2r _l._next();
                        if (((_r_3646850 != (-1 : stdgo.GoInt32)) && (_r_3646850 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3646887i32;
                        } else {
                            _gotoNext = 3646907i32;
                        };
                    };
                } else if (__value__ == (3646887i32)) {
                    _gotoNext = 3646805i32;
                } else if (__value__ == (3646907i32)) {
                    _gotoNext = 3646921i32;
                } else if (__value__ == (3646921i32)) {
                    return @:check2r _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3646805i32;
                } else if (__value__ == (3646993i32)) {
                    loopBreak = true;
                    _gotoNext = 3646805i32;
                } else if (__value__ == (3647026i32)) {
                    return @:check2r _l._emit((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
