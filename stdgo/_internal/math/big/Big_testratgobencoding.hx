package stdgo._internal.math.big;
function testRatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L19"
        for (__8 => _test in stdgo._internal.math.big.Big__encodingtests._encodingTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L20"
            _medium.reset();
            var _tx:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L22"
            _tx.setString((_test + (".14159265" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L23"
            {
                var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L24"
                    _t.errorf(("encoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L25"
                    continue;
                };
            };
            var _rx:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L28"
            {
                var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L29"
                    _t.errorf(("decoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L30"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L32"
            if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L33"
                _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))));
            };
        };
    }
