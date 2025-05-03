package stdgo._internal.encoding.gob;
function testSingletons(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L443"
        for (__8 => _test in stdgo._internal.encoding.gob.Gob__singletests._singleTests) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L444"
            _b.reset();
            var _err = (_enc.encode(_test._in) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L446"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L447"
                _t.errorf(("error encoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L448"
                continue;
            };
            _err = _dec.decode(_test._out);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L451"
            if (((_err != null) && (_test._err == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L453"
                _t.errorf(("error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L454"
                continue;
            } else if (((_err == null) && (_test._err != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L456"
                _t.errorf(("expected error decoding %v: %s" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L457"
                continue;
            } else if (((_err != null) && (_test._err != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L459"
                if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _test._err?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L460"
                    _t.errorf(("wrong error decoding %v: wanted %s, got %v" : stdgo.GoString), _test._in, stdgo.Go.toInterface(_test._err), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L462"
                continue;
            };
            var _val = (stdgo._internal.reflect.Reflect_valueof.valueOf(_test._out).elem().interface_() : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L466"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_test._in, _val)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L467"
                _t.errorf(("decoding singleton: expected %v got %v" : stdgo.GoString), _test._in, _val);
            };
        };
    }
