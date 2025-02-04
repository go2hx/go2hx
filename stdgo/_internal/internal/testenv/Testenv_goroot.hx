package stdgo._internal.internal.testenv;
function gOROOT(_t:stdgo._internal.testing.Testing_tb.TB):stdgo.GoString {
        var __tmp__ = stdgo._internal.internal.testenv.Testenv__findgoroot._findGOROOT(), _path:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            if (_t == null) {
                throw stdgo.Go.toInterface(_err);
            };
            _t.helper();
            _t.skip(stdgo.Go.toInterface(_err));
        };
        return _path?.__copy__();
    }
