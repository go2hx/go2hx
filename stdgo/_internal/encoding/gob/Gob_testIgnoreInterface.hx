package stdgo._internal.encoding.gob;
function testIgnoreInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _iVal = ((3 : stdgo._internal.encoding.gob.Gob_Int_.Int_) : stdgo._internal.encoding.gob.Gob_Int_.Int_);
        var _fVal = ((5 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_);
        var _pVal = (new stdgo._internal.encoding.gob.Gob_Point.Point((2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Point.Point);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem((1 : stdgo.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_pVal), (11.5 : stdgo.GoFloat64), (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_Squarer.Squarer>)) : stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_InterfaceItem.InterfaceItem>);
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.encoding.gob.Gob_Int_.Int_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_Float_.Float_))));
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_Point.Point() : stdgo._internal.encoding.gob.Gob_Point.Point))));
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(_item1)) : stdgo.Error);
        if (_err != null) {
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (new stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem() : stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem);
        var _item2__pointer__ = (stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem>);
        var _item2__pointer__ = (stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem>);
        var _item2__pointer__ = (stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem>);
        var _item2__pointer__ = (stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_NoInterfaceItem.NoInterfaceItem>);
        _err = stdgo._internal.encoding.gob.Gob_newDecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(_item2__pointer__));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        if (_item2.i != (_item1.i)) {
            _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        if (_item2.f != (_item1.f)) {
            _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
    }
