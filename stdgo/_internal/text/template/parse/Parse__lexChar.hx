package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _r_3622025:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3621973i32;
                } else if (__value__ == (3621973i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3621980i32;
                } else if (__value__ == (3621980i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3621984i32;
                    } else {
                        _gotoNext = 3622201i32;
                    };
                } else if (__value__ == (3621984i32)) {
                    _gotoNext = 3621988i32;
                } else if (__value__ == (3621988i32)) {
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3622008i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3622096i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3622168i32;
                        } else {
                            _gotoNext = 3622201i32;
                        };
                    };
                } else if (__value__ == (3622008i32)) {
                    {
                        _r_3622025 = _l._next();
                        if (((_r_3622025 != (-1 : stdgo.GoInt32)) && (_r_3622025 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3622062i32;
                        } else {
                            _gotoNext = 3622082i32;
                        };
                    };
                } else if (__value__ == (3622062i32)) {
                    _gotoNext = 3622201i32;
                } else if (__value__ == (3622082i32)) {
                    _gotoNext = 3622096i32;
                } else if (__value__ == (3622096i32)) {
                    return _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3622201i32;
                } else if (__value__ == (3622168i32)) {
                    loopBreak = true;
                    _gotoNext = 3621980i32;
                } else if (__value__ == (3622201i32)) {
                    return _l._emit((3 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
