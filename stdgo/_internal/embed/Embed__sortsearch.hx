package stdgo._internal.embed;
function _sortSearch(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = (_n : stdgo.GoInt);
var _j = __1, _i = __0;
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L437"
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L440"
            if (!_f(_h)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/embed/embed.go#L447"
        return _i;
    }
