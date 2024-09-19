package stdgo._internal.encoding.gob;
function testNilPointerInsideInterface(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ip:stdgo.Pointer<stdgo.GoInt> = (null : stdgo.Pointer<stdgo.GoInt>);
        var _si = ({ i : stdgo.Go.toInterface(_ip) } : stdgo._internal.encoding.gob.Gob_Struct0.Struct0);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _err = (stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf)).encode(stdgo.Go.toInterface(_si)) : stdgo.Error);
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("expected error, got none" : stdgo.GoString)));
        };
        var _errMsg = (_err.error()?.__copy__() : stdgo.GoString);
        if ((!stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("nil pointer" : stdgo.GoString)) || !stdgo._internal.strings.Strings_contains.contains(_errMsg?.__copy__(), ("interface" : stdgo.GoString)) : Bool)) {
            _t.fatal(stdgo.Go.toInterface(("expected error about nil pointer and interface, got:" : stdgo.GoString)), stdgo.Go.toInterface(_errMsg));
        };
    }
