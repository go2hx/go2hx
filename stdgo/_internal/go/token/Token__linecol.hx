package stdgo._internal.go.token;
function _linecol(_lines:stdgo.Slice<stdgo.GoInt>, _offs:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        var _prevLineOffs = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L58"
        for (_line => _lineOffs in _lines) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L59"
            if ((_offs < _lineOffs : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L60"
                return { _0 : _line, _1 : ((_offs - _prevLineOffs : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
            };
            _prevLineOffs = _lineOffs;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L64"
        return { _0 : (_lines.length), _1 : ((_offs - _prevLineOffs : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) };
    }
