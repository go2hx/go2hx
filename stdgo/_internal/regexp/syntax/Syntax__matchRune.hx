package stdgo._internal.regexp.syntax;
function _matchRune(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>, _r:stdgo.GoInt32):Bool {
        {
            final __value__ = _re.op;
            if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return ((_re.rune.length == (1 : stdgo.GoInt)) && (_re.rune[(0 : stdgo.GoInt)] == _r) : Bool);
            } else if (__value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_re.rune.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                        if (((_re.rune[(_i : stdgo.GoInt)] <= _r : Bool) && (_r <= _re.rune[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool)) {
                            return true;
                        };
                    });
                };
                return false;
            } else if (__value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return _r != ((10 : stdgo.GoInt32));
            } else if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return true;
            };
        };
        return false;
    }
