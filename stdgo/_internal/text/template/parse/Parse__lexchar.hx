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
                    _gotoNext = 3643635i64;
                } else if (__value__ == (3643635i64)) {
                    0i64;
                    loopBreak = false;
                    _gotoNext = 3643642i64;
                } else if (__value__ == (3643642i64)) {
                    //"file://#L0"
                    if (!loopBreak) {
                        _gotoNext = 3643646i64;
                    } else {
                        _gotoNext = 3643863i64;
                    };
                } else if (__value__ == (3643646i64)) {
                    _gotoNext = 3643650i64;
                } else if (__value__ == (3643650i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L567"
                    {
                        final __value__ = _l._next();
                        if (__value__ == ((92 : stdgo.GoInt32))) {
                            _gotoNext = 3643670i64;
                        } else if (__value__ == ((-1 : stdgo.GoInt32)) || __value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 3643758i64;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 3643830i64;
                        } else {
                            _gotoNext = 3643642i64;
                        };
                    };
                } else if (__value__ == (3643670i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L569"
                    {
                        _r_0 = _l._next();
                        if (((_r_0 != (-1 : stdgo.GoInt32)) && (_r_0 != (10 : stdgo.GoInt32)) : Bool)) {
                            _gotoNext = 3643724i64;
                        } else {
                            _gotoNext = 3643744i64;
                        };
                    };
                } else if (__value__ == (3643724i64)) {
                    _gotoNext = 3643642i64;
                } else if (__value__ == (3643744i64)) {
                    _gotoNext = 3643758i64;
                } else if (__value__ == (3643758i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L574"
                    return _l._errorf(("unterminated character constant" : stdgo.GoString));
                    _gotoNext = 3643642i64;
                } else if (__value__ == (3643830i64)) {
                    loopBreak = true;
                    _gotoNext = 3643642i64;
                } else if (__value__ == (3643863i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/parse/lex.go#L579"
                    return _l._emit((3 : stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType));
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
