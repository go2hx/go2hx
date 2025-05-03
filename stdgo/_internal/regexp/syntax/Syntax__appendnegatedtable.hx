package stdgo._internal.regexp.syntax;
function _appendNegatedTable(_r:stdgo.Slice<stdgo.GoInt32>, _x:stdgo.Ref<stdgo._internal.unicode.Unicode_rangetable.RangeTable>):stdgo.Slice<stdgo.GoInt32> {
        var _nextLo = (0 : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1994"
        for (__1 => _xr in (@:checkr _x ?? throw "null pointer dereference").r16) {
            var __0 = (_xr.lo : stdgo.GoInt32), __1 = (_xr.hi : stdgo.GoInt32), __2 = (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1996"
            if (_stride == ((1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L1997"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2001"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2003"
            {
                var _c = (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2004"
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
_nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2010"
        for (__2 => _xr in (@:checkr _x ?? throw "null pointer dereference").r32) {
            var __0 = (_xr.lo : stdgo.GoInt32), __1 = (_xr.hi : stdgo.GoInt32), __2 = (_xr.stride : stdgo.GoInt32);
var _stride = __2, _hi = __1, _lo = __0;
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2012"
            if (_stride == ((1 : stdgo.GoInt32))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2013"
                if ((_nextLo <= (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                    _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_lo - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                };
                _nextLo = (_hi + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2017"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2019"
            {
                var _c = (_lo : stdgo.GoInt32);
                while ((_c <= _hi : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2020"
                    if ((_nextLo <= (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32) : Bool)) {
                        _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (_c - (1 : stdgo.GoInt32) : stdgo.GoInt32));
                    };
_nextLo = (_c + (1 : stdgo.GoInt32) : stdgo.GoInt32);
                    _c = (_c + (_stride) : stdgo.GoInt32);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2026"
        if ((_nextLo <= (1114111 : stdgo.GoInt32) : Bool)) {
            _r = stdgo._internal.regexp.syntax.Syntax__appendrange._appendRange(_r, _nextLo, (1114111 : stdgo.GoInt32));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse.go#L2029"
        return _r;
    }
