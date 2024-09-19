package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function _log2(_x:stdgo.GoInt):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        {
            var _p = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_p < _x : Bool), _p = (_p + (_p) : stdgo.GoInt), {
                _n++;
            });
        };
        return _n;
    }
