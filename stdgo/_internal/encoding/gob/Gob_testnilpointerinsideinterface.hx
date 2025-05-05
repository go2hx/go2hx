package stdgo._internal.encoding.gob;
function testNilPointerInsideInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        var _si = ({ i : stdgo.Go.toInterface(_ip) } : stdgo._internal.encoding.gob.Gob_struct0.Struct0);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_si))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1000"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1001"
            _t.fatal(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
        var _errMsg = (_err.error()?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1004"
        if ((!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("interface" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1005"
            _t.fatal(stdgo.Go.toInterface(("expected error about nil pointer and interface, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
