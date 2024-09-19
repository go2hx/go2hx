package stdgo._internal.encoding.gob;
function testMutipleEncodingsOfBadType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _x = ({ name : ("name" : stdgo.GoString), secret : (new stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret((1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_Bug4Secret.Bug4Secret) } : stdgo._internal.encoding.gob.Gob_Bug4Public.Bug4Public);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _err = (_enc.encode(stdgo.Go.toInterface(_x)) : stdgo.Error);
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("first encoding: expected error" : stdgo.GoString)));
        };
        _buf.reset();
        _enc = stdgo._internal.encoding.gob.Gob_newEncoder.newEncoder(stdgo.Go.asInterface(_buf));
        _err = _enc.encode(stdgo.Go.toInterface(_x));
        if (_err == null) {
            _t.fatal(stdgo.Go.toInterface(("second encoding: expected error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("no exported fields" : stdgo.GoString))) {
            _t.errorf(("expected error about no exported fields; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }