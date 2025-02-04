package stdgo._internal.encoding.gob;
function testTopLevelNilPointer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.gob.Gob__encodeandrecover._encodeAndRecover(stdgo.Go.toInterface(_ip)), _encodeErr:stdgo.Error = __tmp__._0, _panicErr:stdgo.Error = __tmp__._1;
        if (_encodeErr != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("error in encode:" : stdgo.GoString)), stdgo.Go.toInterface(_encodeErr));
        };
        if (_panicErr == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("top-level nil pointer did not panic" : stdgo.GoString)));
        };
        var _errMsg = (_panicErr.error()?.__copy__() : stdgo.GoString);
        if (!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString))) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("expected nil pointer error, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
