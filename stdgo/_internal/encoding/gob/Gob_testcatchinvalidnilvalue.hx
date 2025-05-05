package stdgo._internal.encoding.gob;
function testCatchInvalidNilValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeandrecover._encodeAndRecover((null : stdgo.AnyInterface)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L904"
        if (_panicErr != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L905"
            _t.fatalf(("panicErr=%v, should not panic encoding untyped nil" : stdgo.GoString), stdgo.Go.toInterface(_panicErr));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L907"
        if (_encodeErr == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L908"
            _t.errorf(("got err=nil, want non-nil error when encoding untyped nil value" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_encodeErr.error()?.__copy__(), ("nil value" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L910"
            _t.errorf(("expected \'nil value\' error; got err=%v" : stdgo.GoString), stdgo.Go.toInterface(_encodeErr));
        };
    }
