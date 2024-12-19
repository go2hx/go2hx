package stdgo._internal.text.template.parse;
function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3648887i32;
                } else if (__value__ == (3648887i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3648894i32;
                } else if (__value__ == (3648894i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3648898i32;
                    } else {
                        _gotoNext = 3649019i32;
                    };
                } else if (__value__ == (3648898i32)) {
                    _gotoNext = 3648902i32;
                } else if (__value__ == (3648902i32)) {
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 3648922i32;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 3648987i32;
                        } else {
                            _gotoNext = 3649019i32;
                        };
                    };
                } else if (__value__ == (3648922i32)) {
                    return _l._errorf(("unterminated raw quoted string" : stdgo.GoString));
                    _gotoNext = 3649019i32;
                } else if (__value__ == (3648987i32)) {
                    loopBreak = true;
                    _gotoNext = 3648894i32;
                } else if (__value__ == (3649019i32)) {
                    return _l._emit((15 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
