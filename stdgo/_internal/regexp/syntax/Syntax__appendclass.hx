package stdgo._internal.regexp.syntax;
function _appendClass(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoInt32> {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_x.length) : Bool)) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _x[(_i : stdgo.GoInt)], _x[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            };
        };
        return _r;
    }
