package stdgo._internal.math.big;
function testFloatGobEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _medium:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_medium) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        for (__8 => _test in stdgo._internal.math.big.Big__floatvals._floatVals) {
            for (__9 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[(stdgo.Go.str() : stdgo.GoString)?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                for (__10 => _prec in (new stdgo.Slice<stdgo.GoUInt>(8, 8, ...[(0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (10u32 : stdgo.GoUInt), (53u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
                    for (__11 => _mode in (new stdgo.Slice<stdgo._internal.math.big.Big_roundingmode.RoundingMode>(6, 6, ...[(0 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (1 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (2 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (3 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (4 : stdgo._internal.math.big.Big_roundingmode.RoundingMode), (5 : stdgo._internal.math.big.Big_roundingmode.RoundingMode)]).__setNumber32__() : stdgo.Slice<stdgo._internal.math.big.Big_roundingmode.RoundingMode>)) {
                        @:check2 _medium.reset();
                        var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        var _tx:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                        var __tmp__ = @:check2r @:check2r @:check2 _tx.setPrec(_prec).setMode(_mode).parse(_x?.__copy__(), (0 : stdgo.GoInt)), __12:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = __tmp__._0, __13:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                        if (_err != null) {
                            @:check2r _t.errorf(("parsing of %s (%dbits, %v) failed (invalid test case): %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                            continue;
                        };
                        if (_prec == ((0u32 : stdgo.GoUInt))) {
                            @:check2 _tx.setPrec((0u32 : stdgo.GoUInt));
                        };
                        {
                            var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)))) : stdgo.Error);
                            if (_err != null) {
                                @:check2r _t.errorf(("encoding of %v (%dbits, %v) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                                continue;
                            };
                        };
                        var _rx:stdgo._internal.math.big.Big_float_.Float_ = ({} : stdgo._internal.math.big.Big_float_.Float_);
                        {
                            var _err = (@:check2r _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)))) : stdgo.Error);
                            if (_err != null) {
                                @:check2r _t.errorf(("decoding of %v (%dbits, %v) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)), stdgo.Go.toInterface(_err));
                                continue;
                            };
                        };
                        if (@:check2 _rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>)) != ((0 : stdgo.GoInt))) {
                            @:check2r _t.errorf(("transmission of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface((@:check2 _rx.string() : stdgo.GoString)), stdgo.Go.toInterface((@:check2 _tx.string() : stdgo.GoString)));
                            continue;
                        };
                        if (@:check2 _rx.prec() != (_prec)) {
                            @:check2r _t.errorf(("transmission of %s\'s prec failed: got %d want %d" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(@:check2 _rx.prec()), stdgo.Go.toInterface(_prec));
                        };
                        if (@:check2 _rx.mode() != (_mode)) {
                            @:check2r _t.errorf(("transmission of %s\'s mode failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2 _rx.mode())), stdgo.Go.toInterface(stdgo.Go.asInterface(_mode)));
                        };
                        if (@:check2 _rx.acc() != (@:check2 _tx.acc())) {
                            @:check2r _t.errorf(("transmission of %s\'s accuracy failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2 _rx.acc())), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2 _tx.acc())));
                        };
                    };
                };
            };
        };
    }
