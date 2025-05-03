package stdgo._internal.encoding.gob;
function testGobEncoderFieldsOfDifferentType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct(("ABC" : stdgo.GoString)) : stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>)) : stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L389"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L390"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _x = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L395"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L396"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L398"
        if ((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a != ((65 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L399"
            _t.errorf(("expected \'A\' got %c" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _x ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._a));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L402"
        _b.reset();
        _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0((17 : stdgo.GoInt), (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct((88 : stdgo.GoUInt8)) : stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>)) : stdgo._internal.encoding.gob.Gob_gobtest0.GobTest0))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L404"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L405"
            _t.fatal(stdgo.Go.toInterface(("encode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _y = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_gobtest1.GobTest1>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_y)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L409"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L410"
            _t.fatal(stdgo.Go.toInterface(("decode error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L412"
        if ((@:checkr (@:checkr _y ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._s != (("XYZ" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L413"
            _t.fatalf(("expected `XYZ` got %q" : stdgo.GoString), stdgo.Go.toInterface((@:checkr (@:checkr _y ?? throw "null pointer dereference").g ?? throw "null pointer dereference")._s));
        };
    }
