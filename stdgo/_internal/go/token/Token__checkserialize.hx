package stdgo._internal.go.token;
function _checkSerialize(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _p:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):Void {
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _encode = (function(_x:stdgo.AnyInterface):stdgo.Error {
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L68"
            return stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).encode(_x);
        } : stdgo.AnyInterface -> stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L70"
        {
            var _err = (_p.write(_encode) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L71"
                _t.errorf(("writing fileset failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L72"
                return;
            };
        };
        var _q = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _decode = (function(_x:stdgo.AnyInterface):stdgo.Error {
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L76"
            return stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>))).decode(_x);
        } : stdgo.AnyInterface -> stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L78"
        {
            var _err = (_q.read(_decode) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L79"
                _t.errorf(("reading fileset failed: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L80"
                return;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L82"
        {
            var _err = (stdgo._internal.go.token.Token__equal._equal(_p, _q) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize_test.go#L83"
                _t.errorf(("filesets not identical: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
