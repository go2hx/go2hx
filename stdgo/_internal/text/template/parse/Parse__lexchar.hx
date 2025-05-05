package stdgo._internal.text.template.parse;
function _lexChar(_l:stdgo.Ref<stdgo._internal.text.template.parse.Parse_t_lexer.T_lexer>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn {
        var _r_0:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var loopBreak = false;
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _gotoNext = 3646798i64;
                } else if (__value__ == (3646798i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3646805i64;
                } else if (__value__ == (3646805i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3646809i64;
                    } else {
                        _gotoNext = 3647026i64;
                    };
                } else if (__value__ == (3646809i64)) {
                    _gotoNext = 3646813i64;
                } else if (__value__ == (3646813i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L567"
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3646833i64;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3646921i64;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3646993i64;
                        } else {
                            _gotoNext = 3646805i64;
                        };
                    };
                } else if (__value__ == (3646833i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L569"
                    {
                        _r_0 = _l._next();
                        if (((_r_0 != (-1 : stdgo.GoInt32)) && (_r_0 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3646887i64;
                        } else {
                            _gotoNext = 3646907i64;
                        };
                    };
                } else if (__value__ == (3646887i64)) {
                    _gotoNext = 3646805i64;
                } else if (__value__ == (3646907i64)) {
                    _gotoNext = 3646921i64;
                } else if (__value__ == (3646921i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L574"
                    return _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3646805i64;
                } else if (__value__ == (3646993i64)) {
                    loopBreak = true;
                    _gotoNext = 3646805i64;
                } else if (__value__ == (3647026i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L579"
                    return _l._emit((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
