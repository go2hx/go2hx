package stdgo._internal.math.big;
function testIntJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L78"
        for (__8 => _test in stdgo._internal.math.big.Big__encodingtests._encodingTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L79"
            for (__9 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _tx:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L82"
                _tx.setString(_x?.__copy__(), (10 : stdgo.GoInt));
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L84"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L85"
                    _t.errorf(("marshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L86"
                    continue;
                };
                var _rx:stdgo._internal.math.big.Big_int_.Int_ = ({} : stdgo._internal.math.big.Big_int_.Int_);
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L89"
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L90"
                        _t.errorf(("unmarshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L91"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L93"
                if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>)) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/intmarsh_test.go#L94"
                    _t.errorf(("JSON encoding of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>))));
                };
            };
        };
    }
