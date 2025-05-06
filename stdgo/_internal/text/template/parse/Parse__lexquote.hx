package stdgo._internal.text.template.parse;
function _lexQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_1:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3645394i64;
                } else if (__value__ == (3645394i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3645401i64;
                } else if (__value__ == (3645401i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3645405i64;
                    } else {
                        _gotoNext = 3645616i64;
                    };
                } else if (__value__ == (3645405i64)) {
                    _gotoNext = 3645409i64;
                } else if (__value__ == (3645409i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L641"
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3645429i64;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3645517i64;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3645584i64;
                        } else {
                            _gotoNext = 3645401i64;
                        };
                    };
                } else if (__value__ == (3645429i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L643"
                    {
                        _r_1 = _l._next();
                        if (((_r_1 != (-1 : stdgo.GoInt32)) && (_r_1 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3645483i64;
                        } else {
                            _gotoNext = 3645503i64;
                        };
                    };
                } else if (__value__ == (3645483i64)) {
                    _gotoNext = 3645401i64;
                } else if (__value__ == (3645503i64)) {
                    _gotoNext = 3645517i64;
                } else if (__value__ == (3645517i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L648"
                    return _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3645401i64;
                } else if (__value__ == (3645584i64)) {
                    loopBreak = true;
                    _gotoNext = 3645401i64;
                } else if (__value__ == (3645616i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L653"
                    return _l._emit((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
