package stdgo._internal.math.big;
function testIntXMLEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in stdgo._internal.math.big.Big__encodingTests._encodingTests) {
            for (__15 => _sign in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[stdgo.Go.str()?.__copy__(), ("+" : stdgo.GoString), ("-" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
                var _x = ((_sign + _test?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _tx:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
                _tx.setString(_x?.__copy__(), (0 : stdgo.GoInt));
                var __tmp__ = stdgo._internal.encoding.xml.Xml_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("marshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _rx:stdgo._internal.math.big.Big_Int_.Int_ = ({} : stdgo._internal.math.big.Big_Int_.Int_);
                {
                    var _err = (stdgo._internal.encoding.xml.Xml_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("unmarshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                if (_rx.cmp((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>)) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("XML encoding of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>))));
                };
            };
        };
    }