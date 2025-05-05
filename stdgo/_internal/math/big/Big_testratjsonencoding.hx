package stdgo._internal.math.big;
function testRatJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L84"
        for (__8 => _num in stdgo._internal.math.big.Big__ratnums._ratNums) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L85"
            for (__9 => _denom in stdgo._internal.math.big.Big__ratdenoms._ratDenoms) {
                var _tx:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L87"
                _tx.setString(((_num + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _denom?.__copy__() : stdgo.GoString)?.__copy__());
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L89"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L90"
                    _t.errorf(("marshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L91"
                    continue;
                };
                var _rx:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L94"
                {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)))) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L95"
                        _t.errorf(("unmarshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L96"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L98"
                if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>)) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/ratmarsh_test.go#L99"
                    _t.errorf(("JSON encoding of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>))));
                };
            };
        };
    }
