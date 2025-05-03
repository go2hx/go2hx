package stdgo._internal.encoding.gob;
function testInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _iVal = ((3 : stdgo._internal.encoding.gob.Gob_int_.Int_) : stdgo._internal.encoding.gob.Gob_int_.Int_);
        var _fVal = ((5 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_float_.Float_);
        var _vVal = (new stdgo.Slice<stdgo.GoInt>(3, 3, ...[(1 : stdgo.GoInt), (2 : stdgo.GoInt), (3 : stdgo.GoInt)]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_vector.Vector);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _item1 = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem((1 : stdgo.GoInt), stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), stdgo.Go.asInterface(_vVal), (11.5 : stdgo.GoFloat64), (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>(4, 4, ...[stdgo.Go.asInterface(_iVal), stdgo.Go.asInterface(_fVal), (null : stdgo._internal.encoding.gob.Gob_squarer.Squarer), stdgo.Go.asInterface(_vVal)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_squarer.Squarer>)) : stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1135"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.encoding.gob.Gob_int_.Int_))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1136"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface(((0 : stdgo.GoFloat64) : stdgo._internal.encoding.gob.Gob_float_.Float_))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1137"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo._internal.encoding.gob.Gob_vector.Vector))));
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_item1))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1139"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1140"
            _t.error(stdgo.Go.toInterface(("expected no encode error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _item2 = (new stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem() : stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem);
        _err = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b)).decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_item2) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_interfaceitem.InterfaceItem>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1145"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1146"
            _t.fatal(stdgo.Go.toInterface(("decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1148"
        if (_item2.i != ((@:checkr _item1 ?? throw "null pointer dereference").i)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1149"
            _t.error(stdgo.Go.toInterface(("normal int did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1151"
        if (((_item2.sq1 == null) || (_item2.sq1.square() != _iVal.square()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1152"
            _t.error(stdgo.Go.toInterface(("Int did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1154"
        if (((_item2.sq2 == null) || (_item2.sq2.square() != _fVal.square()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1155"
            _t.error(stdgo.Go.toInterface(("Float did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1157"
        if (((_item2.sq3 == null) || (_item2.sq3.square() != _vVal.square()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1158"
            _t.error(stdgo.Go.toInterface(("Vector did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1160"
        if (_item2.f != ((@:checkr _item1 ?? throw "null pointer dereference").f)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1161"
            _t.error(stdgo.Go.toInterface(("normal float did not decode correctly" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1164"
        if (((@:checkr _item1 ?? throw "null pointer dereference").sq.length) != ((_item2.sq.length))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1165"
            _t.fatalf(("[]Squarer length wrong: got %d; expected %d" : stdgo.GoString), stdgo.Go.toInterface((_item2.sq.length)), stdgo.Go.toInterface(((@:checkr _item1 ?? throw "null pointer dereference").sq.length)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1167"
        for (_i => _v1 in (@:checkr _item1 ?? throw "null pointer dereference").sq) {
            var _v2 = (_item2.sq[(_i : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_squarer.Squarer);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1169"
            if (((_v1 == null) || (_v2 == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1170"
                if (((_v1 != null) || (_v2 != null) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1171"
                    _t.errorf(("item %d inconsistent nils" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            } else if (_v1.square() != (_v2.square())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1174"
                _t.errorf(("item %d inconsistent values: %v %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v1), stdgo.Go.toInterface(_v2));
            };
        };
    }
