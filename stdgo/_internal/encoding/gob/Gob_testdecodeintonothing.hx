package stdgo._internal.encoding.gob;
function testDecodeIntoNothing(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L566"
        stdgo._internal.encoding.gob.Gob_register.register(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_newtype0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_newtype0.NewType0>))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L567"
        for (_i => _test in stdgo._internal.encoding.gob.Gob__ignoretests._ignoreTests) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b));
            var _err = (_enc.encode(_test._in) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L571"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L572"
                _t.errorf(("%d: encode error %s:" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L573"
                continue;
            };
            var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface(_b));
            _err = _dec.decode(_test._out);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L577"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L578"
                _t.errorf(("%d: decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L579"
                continue;
            };
            var _str = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("Value %d" : stdgo.GoString), stdgo.Go.toInterface(_i))?.__copy__() : stdgo.GoString);
            _err = _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_newtype0.NewType0(_str?.__copy__()) : stdgo._internal.encoding.gob.Gob_newtype0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_newtype0.NewType0>))));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L584"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L585"
                _t.fatalf(("%d: NewType0 encode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            var _ns = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_newtype0.NewType0)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_newtype0.NewType0>);
            _err = _dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_ns)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L589"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L590"
                _t.fatalf(("%d: NewType0 decode error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L592"
            if ((@:checkr _ns ?? throw "null pointer dereference").s != (_str)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L593"
                _t.fatalf(("%d: expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_str), stdgo.Go.toInterface((@:checkr _ns ?? throw "null pointer dereference").s));
            };
        };
    }
