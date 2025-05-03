package stdgo._internal.encoding.gob;
function testUnsupported(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L267"
        for (__8 => _v in stdgo._internal.encoding.gob.Gob__unsupportedvalues._unsupportedValues) {
            var _err = (_enc.encode(_v) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L269"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L270"
                _t.errorf(("expected error for %T; got none" : stdgo.GoString), _v);
            };
        };
    }
