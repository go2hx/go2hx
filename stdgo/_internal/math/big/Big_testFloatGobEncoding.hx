package stdgo._internal.math.big;
function testFloatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        for (__8 => _test in stdgo._internal.math.big.Big__floatVals._floatVals) {
            for (__9 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                for (__10 => _prec in (new stdgo.Slice<stdgo.GoUInt>(8, 8, ...[(0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (10u32 : stdgo.GoUInt), (53u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
                    for (__11 => _mode in (new stdgo.Slice<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>(6, 6, ...[(0 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (1 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (2 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (3 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (4 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode), (5 : stdgo._internal.math.big.Big_RoundingMode.RoundingMode)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_RoundingMode.RoundingMode>)) {
                        _medium.reset();
                        var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        var _tx:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                        var __tmp__ = _tx.setPrec(_prec).setMode(_mode).parse(_x?.__copy__(), (0 : stdgo.GoInt)), __12:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __13:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            _t.errorf(("parsing of %s (%dbits, %v) failed (invalid test case): %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                            continue;
                        };
                        if (_prec == ((0u32 : stdgo.GoUInt))) {
                            _tx.setPrec((0u32 : stdgo.GoUInt));
                        };
                        {
                            var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
                            if (_err != null) {
                                _t.errorf(("encoding of %v (%dbits, %v) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                                continue;
                            };
                        };
                        var _rx:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                        {
                            var _err = (_dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
                            if (_err != null) {
                                _t.errorf(("decoding of %v (%dbits, %v) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                                continue;
                            };
                        };
                        if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)) != ((0 : stdgo.GoInt))) {
                            _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((_rx.string() : stdgo.GoString)), stdgo.Go.toInterface((_tx.string() : stdgo.GoString)));
                            continue;
                        };
                        if (_rx.prec() != (_prec)) {
                            _t.errorf(("transmission of %s\'s prec failed: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_rx.prec()), stdgo.Go.toInterface(_prec));
                        };
                        if (_rx.mode() != (_mode)) {
                            _t.errorf(("transmission of %s\'s mode failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx.mode())), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
                        };
                        if (_rx.acc() != (_tx.acc())) {
                            _t.errorf(("transmission of %s\'s accuracy failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx.acc())), stdgo.Go.toInterface(stdgo.Go.asInterface(_tx.acc())));
                        };
                    };
                };
            };
        };
    }
