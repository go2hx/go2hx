package stdgo._internal.math.big;
function testRatXMLEncoding(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__8 => _num in stdgo._internal.math.big.Big__ratNums._ratNums) {
            for (__9 => _denom in stdgo._internal.math.big.Big__ratDenoms._ratDenoms) {
                var _tx:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
                var _tx__pointer__ = (stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _tx__pointer__ = (stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _tx__pointer__ = (stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _tx__pointer__ = (stdgo.Go.setRef(_tx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                _tx.setString(((_num + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _denom?.__copy__() : stdgo.GoString)?.__copy__());
                var __tmp__ = stdgo._internal.encoding.xml.Xml_marshal.marshal(stdgo.Go.toInterface(stdgo.Go.asInterface(_tx__pointer__))), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("marshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tx__pointer__)), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _rx:stdgo._internal.math.big.Big_Rat.Rat = ({} : stdgo._internal.math.big.Big_Rat.Rat);
                var _rx__pointer__ = (stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _rx__pointer__ = (stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _rx__pointer__ = (stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                var _rx__pointer__ = (stdgo.Go.setRef(_rx) : stdgo.Ref<stdgo._internal.math.big.Big_Rat.Rat>);
                {
                    var _err = (stdgo._internal.encoding.xml.Xml_unmarshal.unmarshal(_b, stdgo.Go.toInterface(stdgo.Go.asInterface(_rx__pointer__))) : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("unmarshaling of %s failed: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tx__pointer__)), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                if (_rx.cmp(_tx__pointer__) != ((0 : stdgo.GoInt))) {
                    _t.errorf(("XML encoding of %s failed: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_tx__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rx__pointer__)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tx__pointer__)));
                };
            };
        };
    }
