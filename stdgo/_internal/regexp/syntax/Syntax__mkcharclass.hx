package stdgo._internal.regexp.syntax;
function _mkCharClass(_f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _re = (stdgo.Go.setRef(({ op : (4 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        var _lo = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (1114111 : stdgo.GoInt32) : Bool)) {
                if (_f(_i)) {
                    if ((_lo < (0 : stdgo.GoInt32) : Bool)) {
                        _lo = _i;
                    };
                } else {
                    if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
                        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__(_lo, (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)));
                        _lo = (-1 : stdgo.GoInt32);
                    };
                };
                _i++;
            };
        };
        if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__(_lo, (1114111 : stdgo.GoInt32)));
        };
        return stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__();
    }
