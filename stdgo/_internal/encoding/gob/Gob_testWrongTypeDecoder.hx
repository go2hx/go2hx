package stdgo._internal.encoding.gob;
function testWrongTypeDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET2.ET2>))), true, ("no fields in common" : stdgo.GoString), _t);
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET3.ET3)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET3.ET3>))), false, ("different name of field" : stdgo.GoString), _t);
        stdgo._internal.encoding.gob.Gob__badTypeCheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_ET4.ET4)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ET4.ET4>))), true, ("different type of field" : stdgo.GoString), _t);
    }
