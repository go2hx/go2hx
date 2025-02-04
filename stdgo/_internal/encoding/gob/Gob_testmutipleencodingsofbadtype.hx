package stdgo._internal.encoding.gob;
function testMutipleEncodingsOfBadType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x = ({ name : ("name" : stdgo.GoString), secret : (new stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret((1 : stdgo.GoInt)) : stdgo._internal.encoding.gob.Gob_bug4secret.Bug4Secret) } : stdgo._internal.encoding.gob.Gob_bug4public.Bug4Public);
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x))) : stdgo.Error);
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("first encoding: expected error" : stdgo.GoString)));
        };
        @:check2r _buf.reset();
        _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface(_buf));
        _err = @:check2r _enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_x)));
        if (_err == null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("second encoding: expected error" : stdgo.GoString)));
        };
        if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("no exported fields" : stdgo.GoString))) {
            @:check2r _t.errorf(("expected error about no exported fields; got %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
