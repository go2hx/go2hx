package stdgo._internal.encoding.gob;
function testEncoderDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et0 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et0.ET0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et0.ET0>);
        (@:checkr _et0 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et0 ?? throw "null pointer dereference").b = ("gobs of fun" : stdgo.GoString);
        var _err = (_enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et0))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L161"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L162"
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _newEt0 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et0.ET0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et0.ET0>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt0)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L169"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L170"
            _t.fatal(stdgo.Go.toInterface(("error decoding ET0:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L173"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_et0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt0)))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L174"
            _t.fatalf(("invalid data for et0: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_et0 : stdgo._internal.encoding.gob.Gob_et0.ET0))), stdgo.Go.toInterface(stdgo.Go.asInterface((_newEt0 : stdgo._internal.encoding.gob.Gob_et0.ET0))));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L176"
        if (_b.len() != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L177"
            _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
        var _et1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        (@:checkr _et1 ?? throw "null pointer dereference").a = (7 : stdgo.GoInt);
        (@:checkr _et1 ?? throw "null pointer dereference").et2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
        _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L187"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L188"
            _t.error(stdgo.Go.toInterface(("encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
        var _newEt1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt1)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L193"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L194"
            _t.fatal(stdgo.Go.toInterface(("error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L197"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt1)))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L198"
            _t.fatalf(("invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_et1 : stdgo._internal.encoding.gob.Gob_et1.ET1))), stdgo.Go.toInterface(stdgo.Go.asInterface((_newEt1 : stdgo._internal.encoding.gob.Gob_et1.ET1))));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L200"
        if (_b.len() != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L201"
            _t.error(stdgo.Go.toInterface(("not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L204"
        _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1)));
        _newEt1 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et1.ET1)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et1.ET1>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt1)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L207"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L208"
            _t.fatal(stdgo.Go.toInterface(("round 2: error decoding ET1:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L210"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt1)))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L211"
            _t.fatalf(("round 2: invalid data for et1: expected %+v; got %+v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((_et1 : stdgo._internal.encoding.gob.Gob_et1.ET1))), stdgo.Go.toInterface(stdgo.Go.asInterface((_newEt1 : stdgo._internal.encoding.gob.Gob_et1.ET1))));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L213"
        if (_b.len() != ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L214"
            _t.error(stdgo.Go.toInterface(("round 2: not at eof;" : stdgo.GoString)), stdgo.Go.toInterface(_b.len()), stdgo.Go.toInterface(("bytes left" : stdgo.GoString)));
        };
        _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_et1)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L219"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L220"
            _t.error(stdgo.Go.toInterface(("round 3: encoder fail:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _newEt2 = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>);
        _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_newEt2)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L224"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L225"
            _t.fatal(stdgo.Go.toInterface(("round 3: expected `bad type\' error decoding ET2" : stdgo.GoString)));
        };
    }
