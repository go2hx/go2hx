package stdgo._internal.text.template.parse;
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn {
        var _r_3670271:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3670219i32;
                } else if (__value__ == (3670219i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3670226i32;
                } else if (__value__ == (3670226i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3670230i32;
                    } else {
                        _gotoNext = 3670441i32;
                    };
                } else if (__value__ == (3670230i32)) {
                    _gotoNext = 3670234i32;
                } else if (__value__ == (3670234i32)) {
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3670254i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3670342i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3670409i32;
                        } else {
                            _gotoNext = 3670226i32;
                        };
                    };
                } else if (__value__ == (3670254i32)) {
                    {
                        _r_3670271 = _l._next();
                        if (((_r_3670271 != (-1 : stdgo.GoInt32)) && (_r_3670271 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3670308i32;
                        } else {
                            _gotoNext = 3670328i32;
                        };
                    };
                } else if (__value__ == (3670308i32)) {
                    _gotoNext = 3670226i32;
                } else if (__value__ == (3670328i32)) {
                    _gotoNext = 3670342i32;
                } else if (__value__ == (3670342i32)) {
                    return _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3670226i32;
                } else if (__value__ == (3670409i32)) {
                    loopBreak = true;
                    _gotoNext = 3670226i32;
                } else if (__value__ == (3670441i32)) {
                    return _l._emit((19 : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
