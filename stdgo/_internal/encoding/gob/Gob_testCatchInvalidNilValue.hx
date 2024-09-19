package stdgo._internal.encoding.gob;
function testCatchInvalidNilValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeAndRecover._encodeAndRecover((null : stdgo.AnyInterface)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_panicErr != null) {
            _t.fatalf(("panicErr=%v, should not panic encoding untyped nil" : stdgo.GoString), stdgo.Go.toInterface(_panicErr));
        };
        if (_encodeErr == null) {
            _t.errorf(("got err=nil, want non-nil error when encoding untyped nil value" : stdgo.GoString));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_encodeErr.error()?.__copy__(), ("nil value" : stdgo.GoString))) {
            _t.errorf(("expected \'nil value\' error; got err=%v" : stdgo.GoString), stdgo.Go.toInterface(_encodeErr));
        };
    }