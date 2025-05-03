package stdgo._internal.regexp.syntax;
function _matchRune(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1307"
        {
            final __value__ = (@:checkr _re ?? throw "null pointer dereference").op;
            if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1309"
                return (((@:checkr _re ?? throw "null pointer dereference").rune.length == (1 : stdgo.GoInt)) && ((@:checkr _re ?? throw "null pointer dereference").rune[(0 : stdgo.GoInt)] == _r) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1311"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < ((@:checkr _re ?? throw "null pointer dereference").rune.length) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1312"
                        if ((((@:checkr _re ?? throw "null pointer dereference").rune[(_i : stdgo.GoInt)] <= _r : Bool) && (_r <= (@:checkr _re ?? throw "null pointer dereference").rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1313"
                            return true;
                        };
                        _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1316"
                return false;
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1318"
                return _r != ((10 : stdgo.GoInt32));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1320"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1322"
        return false;
    }
