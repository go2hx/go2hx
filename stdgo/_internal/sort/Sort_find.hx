package stdgo._internal.sort;
function find(_n:stdgo.GoInt, _cmp:stdgo.GoInt -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _i = (0 : stdgo.GoInt), _found = false;
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/sort/search.go#L104"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/sort/search.go#L107"
            if ((_cmp(_h) > (0 : stdgo.GoInt) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/search.go#L114"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _i, _1 : ((_i < _n : Bool) && (_cmp(_i) == (0 : stdgo.GoInt)) : Bool) };
            _i = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
