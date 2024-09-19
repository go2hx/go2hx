package stdgo._internal.regexp.syntax;
function _repeatIsValid(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _n:stdgo.GoInt):Bool {
        if (_re.op == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            var _m = (_re.max : stdgo.GoInt);
            if (_m == ((0 : stdgo.GoInt))) {
                return true;
            };
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                _m = _re.min;
            };
            if ((_m > _n : Bool)) {
                return false;
            };
            if ((_m > (0 : stdgo.GoInt) : Bool)) {
                _n = (_n / (_m) : stdgo.GoInt);
            };
        };
        for (__1 => _sub in _re.sub) {
            if (!stdgo._internal.regexp.syntax.Syntax__repeatIsValid._repeatIsValid(_sub, _n)) {
                return false;
            };
        };
        return true;
    }
