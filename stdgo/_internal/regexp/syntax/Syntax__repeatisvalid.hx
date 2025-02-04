package stdgo._internal.regexp.syntax;
function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>, _n:stdgo.GoInt):Bool {
        if ((@:checkr _re ?? throw "null pointer dereference").op == ((17 : stdgo._internal.regexp.syntax.Syntax_op.Op))) {
            var _m = ((@:checkr _re ?? throw "null pointer dereference").max : stdgo.GoInt);
            if (_m == ((0 : stdgo.GoInt))) {
                return true;
            };
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                _m = (@:checkr _re ?? throw "null pointer dereference").min;
            };
            if ((_m > _n : Bool)) {
                return false;
            };
            if ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n = (_n / (_m) : stdgo.GoInt);
            };
        };
        for (__1 => _sub in (@:checkr _re ?? throw "null pointer dereference").sub) {
            if (!stdgo._internal.regexp.syntax.Syntax__repeatisvalid._repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
