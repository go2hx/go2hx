package stdgo._internal.regexp.syntax;
function _mkCharClass(_f:stdgo.GoInt32 -> Bool):stdgo.GoString {
        var _re = (stdgo.Go.setRef(({ op : (4 : stdgo._internal.regexp.syntax.Syntax_op.Op) } : stdgo._internal.regexp.syntax.Syntax_regexp.Regexp)) : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>);
        var _lo = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L393"
        {
            var _i = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
            while ((_i <= (1114111 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L394"
                if (_f(_i)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L395"
                    if ((_lo < (0 : stdgo.GoInt32) : Bool)) {
                        _lo = _i;
                    };
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L399"
                    if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
                        (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__(_lo, (_i - (1 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
                        _lo = (-1 : stdgo.GoInt32);
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L405"
        if ((_lo >= (0 : stdgo.GoInt32) : Bool)) {
            (@:checkr _re ?? throw "null pointer dereference").rune = ((@:checkr _re ?? throw "null pointer dereference").rune.__append__(_lo, (1114111 : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoInt32>);
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L408"
        return stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__();
    }
