package stdgo._internal.encoding.gob;
function testUnsupported(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
        for (__8 => _v in stdgo._internal.encoding.gob.Gob__unsupportedValues._unsupportedValues) {
            var _err = (_enc.encode(_v) : stdgo.Error);
            if (_err == null) {
                _t.errorf(("expected error for %T; got none" : stdgo.GoString), _v);
            };
        };
    }
