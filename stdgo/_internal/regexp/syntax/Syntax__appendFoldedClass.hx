package stdgo._internal.regexp.syntax;
function _appendFoldedClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_x.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _r = stdgo._internal.regexp.syntax.Syntax__appendFoldedRange._appendFoldedRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
            });
        };
        return _r;
    }
