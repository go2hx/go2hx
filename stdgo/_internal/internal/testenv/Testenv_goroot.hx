package stdgo._internal.internal.testenv;
function gOROOT(_t:stdgo._internal.testing.Testing_tb.TB):stdgo.GoString {
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__findgoroot._findGOROOT(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L267"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L268"
            if (_t == null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L269"
                throw stdgo.Go.toInterface(_err);
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L271"
            _t.helper();
            //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L272"
            _t.skip(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/testenv/testenv.go#L274"
        return _path?.__copy__();
    }
