package stdgo._internal.internal.fuzz;
function _diffCoverage(_base:stdgo.Slice<stdgo.GoUInt8>, _snapshot:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L39"
        if ((_base.length) != ((_snapshot.length))) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L40"
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("the number of coverage bits changed: before=%d, after=%d" : stdgo.GoString), stdgo.Go.toInterface((_base.length)), stdgo.Go.toInterface((_snapshot.length))));
        };
        var _found = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L43"
        for (_i => _ in _snapshot) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L44"
            if ((_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8) != ((0 : stdgo.GoUInt8))) {
                _found = true;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L46"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L49"
        if (!_found) {
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L50"
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        var _diff = (new stdgo.Slice<stdgo.GoUInt8>((_snapshot.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L53"
        for (_i => _ in _diff) {
            _diff[(_i : stdgo.GoInt)] = (_snapshot[(_i : stdgo.GoInt)] & ((_base[(_i : stdgo.GoInt)] ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt8)) : stdgo.GoUInt8);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/coverage.go#L56"
        return _diff;
    }
