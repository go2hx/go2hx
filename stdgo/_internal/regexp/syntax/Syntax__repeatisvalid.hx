package stdgo._internal.regexp.syntax;
function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _n:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L456"
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            var _m = ((@:checkr _re ?? throw "null pointer dereference").max : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L458"
            if (_m == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L459"
                return true;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L461"
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                _m = (@:checkr _re ?? throw "null pointer dereference").min;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L464"
            if ((_m > _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L465"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L467"
            if ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n = (_n / (_m) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L471"
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L472"
            if (!stdgo._internal.regexp.syntax.Syntax__repeatisvalid._repeatIsValid(_sub, _n)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L473"
                return false;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L476"
        return true;
    }
