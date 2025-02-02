package stdgo._internal.time;
function _norm(_hi:stdgo.GoInt, _lo:stdgo.GoInt, _base:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _nhi = (0 : stdgo.GoInt), _nlo = (0 : stdgo.GoInt);
        if ((_lo < (0 : stdgo.GoInt) : Bool)) {
            var _n = ((((-_lo - (1 : stdgo.GoInt) : stdgo.GoInt)) / _base : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            _hi = (_hi - (_n) : stdgo.GoInt);
            _lo = (_lo + ((_n * _base : stdgo.GoInt)) : stdgo.GoInt);
        };
        if ((_lo >= _base : Bool)) {
            var _n = (_lo / _base : stdgo.GoInt);
            _hi = (_hi + (_n) : stdgo.GoInt);
            _lo = (_lo - ((_n * _base : stdgo.GoInt)) : stdgo.GoInt);
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } = { _0 : _hi, _1 : _lo };
            _nhi = __tmp__._0;
            _nlo = __tmp__._1;
            __tmp__;
        };
    }
