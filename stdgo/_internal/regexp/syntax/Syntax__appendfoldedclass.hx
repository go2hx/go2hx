package stdgo._internal.regexp.syntax;
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1943"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendfoldedrange._appendFoldedRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1946"
        return _r;
    }
