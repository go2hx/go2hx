package stdgo._internal.text.template.parse;
function _lexRawQuote(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3645724i64;
                } else if (__value__ == (3645724i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3645731i64;
                } else if (__value__ == (3645731i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3645735i64;
                    } else {
                        _gotoNext = 3645856i64;
                    };
                } else if (__value__ == (3645735i64)) {
                    _gotoNext = 3645739i64;
                } else if (__value__ == (3645739i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L660"
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 3645759i64;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 3645824i64;
                        } else {
                            _gotoNext = 3645731i64;
                        };
                    };
                } else if (__value__ == (3645759i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L662"
                    return _l._errorf(("unterminated raw quoted string" : stdgo.GoString));
                    _gotoNext = 3645731i64;
                } else if (__value__ == (3645824i64)) {
                    loopBreak = true;
                    _gotoNext = 3645731i64;
                } else if (__value__ == (3645856i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L667"
                    return _l._emit((15 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
