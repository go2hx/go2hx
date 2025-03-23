package stdgo._internal.text.template.parse;
function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var loopBreak = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3670549i32;
                } else if (__value__ == (3670549i32)) {
                    0i32;
                    loopBreak = false;
                    _gotoNext = 3670556i32;
                } else if (__value__ == (3670556i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3670560i32;
                    } else {
                        _gotoNext = 3670681i32;
                    };
                } else if (__value__ == (3670560i32)) {
                    _gotoNext = 3670564i32;
                } else if (__value__ == (3670564i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 3670584i32;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 3670649i32;
                        } else {
                            _gotoNext = 3670556i32;
                        };
                    };
                } else if (__value__ == (3670584i32)) {
                    return @:check2r _l._errorf(("unterminated raw quoted string" : stdgo.GoString));
                    _gotoNext = 3670556i32;
                } else if (__value__ == (3670649i32)) {
                    loopBreak = true;
                    _gotoNext = 3670556i32;
                } else if (__value__ == (3670681i32)) {
                    return @:check2r _l._emit((15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
