package stdgo._internal.math.big;
function testRatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        for (__14 => _test in stdgo._internal.math.big.Big__encodingTests._encodingTests) {
            _medium.reset();
            var _tx:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
            _tx.setString((_test + (".14159265" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            {
                var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)))) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("encoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var _rx:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
            {
                var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)))) : stdgo.Error);
                if (_err != null) {
                    _t.errorf(("decoding of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>)) != ((0 : stdgo.GoInt))) {
                _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>))));
            };
        };
    }