package stdgo._internal.math.big;
function testIntGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L29"
        for (__8 => _test in stdgo._internal.math.big.Big__encodingtests._encodingTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L30"
            for (__9 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L32"
                _medium.reset();
                var _tx:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L34"
                _tx.setString(_x?.__copy__(), (10 : stdgo.GoInt));
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L35"
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L36"
                        _t.errorf(("encoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L37"
                        continue;
                    };
                };
                var _rx:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L40"
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L41"
                        _t.errorf(("decoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L42"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L44"
                if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L45"
                    _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                };
            };
        };
    }
