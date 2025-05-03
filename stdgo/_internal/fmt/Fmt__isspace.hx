package stdgo._internal.fmt;
function _isSpace(_r:stdgo.GoInt32):Bool {
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L281"
        if ((_r >= (65536 : stdgo.GoInt32) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L282"
            return false;
        };
        var _rx = (_r : stdgo.GoUInt16);
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L285"
        for (__0 => _rng in stdgo._internal.fmt.Fmt__space._space) {
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L286"
            if ((_rx < _rng[(0 : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L287"
                return false;
            };
            //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L289"
            if ((_rx <= _rng[(1 : stdgo.GoInt)] : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L290"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/fmt/scan.go#L293"
        return false;
    }
