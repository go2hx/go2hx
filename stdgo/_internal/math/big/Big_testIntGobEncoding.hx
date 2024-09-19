package stdgo._internal.math.big;
function testIntGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        for (__14 => _test in stdgo._internal.math.big.Big__encodingTests._encodingTests) {
            for (__15 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                _medium.reset();
                var _tx:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
                _tx.setString(_x?.__copy__(), (10 : stdgo.GoInt));
                {
                    var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("encoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                var _rx:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("decoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))));
                };
            };
        };
    }
