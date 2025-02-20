package stdgo._internal.regexp.syntax;
function _appendTable(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Slice<stdgo.GoInt32> {
        for (__1 => _xr in (@:checkr _x ?? throw "null pointer dereference").r16) {
            var __0 = (_xr.lo : stdgo.GoInt32), __1 = (_xr.hi : stdgo.GoInt32), __2 = (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c = (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        for (__2 => _xr in (@:checkr _x ?? throw "null pointer dereference").r32) {
            var __0 = (_xr.lo : stdgo.GoInt32), __1 = (_xr.hi : stdgo.GoInt32), __2 = (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            if (_stride == ((1 : stdgo.GoInt32))) {
                _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _lo, _hi);
                continue;
            };
            {
                var _c = (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _c, _c);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        return _r;
    }
