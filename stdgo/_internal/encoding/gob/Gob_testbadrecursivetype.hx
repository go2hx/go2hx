package stdgo._internal.encoding.gob;
function testBadRecursiveType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _rec:stdgo._internal.encoding.gob.Gob_t_testbadrecursivetype___localname___rec_23209.T_testBadRecursiveType___localname___Rec_23209 = (null : stdgo._internal.encoding.gob.Gob_t_testbadrecursivetype___localname___rec_23209.T_testBadRecursiveType___localname___Rec_23209);
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_b)).encode(stdgo.Go.toInterface(stdgo.Go.pointer(_rec))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1001"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1002"
            _t.error(stdgo.Go.toInterface(("expected error; got none" : stdgo.GoString)));
        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("recursive" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1004"
            _t.error(stdgo.Go.toInterface(("expected recursive type error; got" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
    }
