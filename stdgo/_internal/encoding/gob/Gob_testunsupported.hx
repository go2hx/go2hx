package stdgo._internal.encoding.gob;
function testUnsupported(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        for (__8 => _v in stdgo._internal.encoding.gob.Gob__unsupportedvalues._unsupportedValues) {
            var _err = (@:check2r _enc.encode(_v) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.errorf(("expected error for %T; got none" : stdgo.GoString), _v);
            };
        };
    }
