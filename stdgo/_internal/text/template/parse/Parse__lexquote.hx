package stdgo._internal.text.template.parse;
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3645394i32;
                } else if (__value__ == (3645394i32)) {
                    var __blank__ = 0i32;
                    loopBreak = false;
                    _gotoNext = 3645401i32;
                } else if (__value__ == (3645401i32)) {
                    if (!loopBreak) {
                        _gotoNext = 3645405i32;
                    } else {
                        _gotoNext = 3645616i32;
                    };
                } else if (__value__ == (3645405i32)) {
                    _gotoNext = 3645409i32;
                } else if (__value__ == (3645409i32)) {
                    {
                        final __value__ = @:check2r _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3645429i32;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3645517i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3645584i32;
                        } else {
                            _gotoNext = 3645401i32;
                        };
                    };
                } else if (__value__ == (3645429i32)) {
                    {
                        _r_1 = @:check2r _l._next();
                        if (((_r_1 != (-1 : stdgo.GoInt32)) && (_r_1 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3645483i32;
                        } else {
                            _gotoNext = 3645503i32;
                        };
                    };
                } else if (__value__ == (3645483i32)) {
                    _gotoNext = 3645401i32;
                } else if (__value__ == (3645503i32)) {
                    _gotoNext = 3645517i32;
                } else if (__value__ == (3645517i32)) {
                    return @:check2r _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3645401i32;
                } else if (__value__ == (3645584i32)) {
                    loopBreak = true;
                    _gotoNext = 3645401i32;
                } else if (__value__ == (3645616i32)) {
                    return @:check2r _l._emit((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
