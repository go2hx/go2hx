package stdgo._internal.math.big;
function testFloatJSONEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in stdgo._internal.math.big.Big__floatVals._floatVals) {
            for (__15 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                for (__16 => _prec in (new stdgo.Slice<stdgo.GoUInt>(8, 8, ...[(0u32 : stdgo.GoUInt), (1u32 : stdgo.GoUInt), (2u32 : stdgo.GoUInt), (10u32 : stdgo.GoUInt), (53u32 : stdgo.GoUInt), (64u32 : stdgo.GoUInt), (100u32 : stdgo.GoUInt), (1000u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)) {
                    if (((_prec > (53u32 : stdgo.GoUInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        continue;
                    };
                    var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    var _tx:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                    var __tmp__ = _tx.setPrec(_prec).parse(_x?.__copy__(), (0 : stdgo.GoInt)), __17:stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_> = __tmp__._0, __18:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
                    if (_err != null) {
                        _t.errorf(("parsing of %s (prec = %d) failed (invalid test case): %v" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_err));
                        continue;
                    };
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        _t.errorf(("marshaling of %v (prec = %d) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_err));
                        continue;
                    };
                    var _rx:stdgo._internal.math.big.Big_Float_.Float_ = ({} : stdgo._internal.math.big.Big_Float_.Float_);
                    _rx.setPrec(_prec);
                    {
                        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)))) : stdgo.Error);
                        if (_err != null) {
                            _t.errorf(("unmarshaling of %v (prec = %d) failed: %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(_err));
                            continue;
                        };
                    };
                    if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>)) != ((0 : stdgo.GoInt))) {
                        _t.errorf(("JSON encoding of %v (prec = %d) failed: got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(_prec), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>))));
                    };
                };
            };
        };
    }