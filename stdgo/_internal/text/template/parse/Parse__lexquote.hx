package stdgo._internal.text.template.parse;
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_3648609:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3648557i32;
                } else if (__value__ == (3648557i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3648564i32;
                } else if (__value__ == (3648564i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3648568i32;
                    } else {
                        _gotoNext = 3648779i32;
                    };
                } else if (__value__ == (3648568i32)) {
                    _gotoNext = 3648572i32;
                } else if (__value__ == (3648572i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3648592i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3648680i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3648747i32;
                        } else {
                            _gotoNext = 3648564i32;
                        };
                    };
                } else if (__value__ == (3648592i32)) {
                    {
                        _r_3648609 = @:check2r _l._next();
                        if (((_r_3648609 != (-1 : stdgo.GoInt32)) && (_r_3648609 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3648646i32;
                        } else {
                            _gotoNext = 3648666i32;
                        };
                    };
                } else if (__value__ == (3648646i32)) {
                    _gotoNext = 3648564i32;
                } else if (__value__ == (3648666i32)) {
                    _gotoNext = 3648680i32;
                } else if (__value__ == (3648680i32)) {
                    return @:check2r _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3648564i32;
                } else if (__value__ == (3648747i32)) {
                    loopBreak = true;
                    _gotoNext = 3648564i32;
                } else if (__value__ == (3648779i32)) {
                    return @:check2r _l._emit((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
