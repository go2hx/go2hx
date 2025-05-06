package stdgo._internal.go.token;
function _makeTestSource(_size:stdgo.GoInt, _lines:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoUInt8> {
        var _src = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L83"
        for (__4 => _offs in _lines) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L84"
            if ((_offs > (0 : stdgo.GoInt) : Bool)) {
                _src[(_offs - (1 : stdgo.GoInt) : stdgo.GoInt)] = (10 : stdgo.GoUInt8);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L88"
        return _src;
    }
