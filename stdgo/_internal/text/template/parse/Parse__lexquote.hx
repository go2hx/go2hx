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
                    _gotoNext = 3623732i64;
                } else if (__value__ == (3623732i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3623739i64;
                } else if (__value__ == (3623739i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3623743i64;
                    } else {
                        _gotoNext = 3623954i64;
                    };
                } else if (__value__ == (3623743i64)) {
                    _gotoNext = 3623747i64;
                } else if (__value__ == (3623747i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L641"
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3623767i64;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3623855i64;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 3623922i64;
                        } else {
                            _gotoNext = 3623739i64;
                        };
                    };
                } else if (__value__ == (3623767i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L643"
                    {
                        _r_1 = _l._next();
                        if (((_r_1 != (-1 : stdgo.GoInt32)) && (_r_1 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3623821i64;
                        } else {
                            _gotoNext = 3623841i64;
                        };
                    };
                } else if (__value__ == (3623821i64)) {
                    _gotoNext = 3623739i64;
                } else if (__value__ == (3623841i64)) {
                    _gotoNext = 3623855i64;
                } else if (__value__ == (3623855i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L648"
                    return _l._errorf(("unterminated quoted string" : stdgo.GoString));
                    _gotoNext = 3623739i64;
                } else if (__value__ == (3623922i64)) {
                    loopBreak = true;
                    _gotoNext = 3623739i64;
                } else if (__value__ == (3623954i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L653"
                    return _l._emit((19 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
