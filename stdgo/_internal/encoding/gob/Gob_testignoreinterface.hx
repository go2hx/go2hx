package stdgo._internal.encoding.gob;
function testIgnoreInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _iVal = ((3 : stdgo._internal.encoding.gob.Gob_int_.Int_) : stdgo._internal.encoding.gob.Gob_int_.Int_);
        var _fVal = ((5 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_float_.Float_);
        var _pVal = (new stdgo._internal.encoding.gob.Gob_point.Point((2 : stdgo.GoInt), (3 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_point.Point);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem((1 : stdgo.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_pVal), (11.5 : stdgo.GoFloat64), (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>)) : stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1270"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.encoding.gob.Gob_int_.Int_))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1271"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_float_.Float_))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1272"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_point.Point() : stdgo._internal.encoding.gob.Gob_point.Point))));
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1274"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1275"
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (new stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem() : stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_nointerfaceitem.NoInterfaceItem>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1280"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1281"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1283"
        if (_item2.i != ((@:checkr _item1 ?? throw "null pointer dereference").i)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1284"
            _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1286"
        if (_item2.f != ((@:checkr _item1 ?? throw "null pointer dereference").f)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1287"
            _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
    }
