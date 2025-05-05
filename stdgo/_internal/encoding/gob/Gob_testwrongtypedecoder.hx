package stdgo._internal.encoding.gob;
function testWrongTypeDecoder(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L253"
        stdgo._internal.encoding.gob.Gob__badtypecheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et2.ET2)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et2.ET2>))), true, ("no fields in common" : stdgo.GoString), _t);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L254"
        stdgo._internal.encoding.gob.Gob__badtypecheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et3.ET3)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et3.ET3>))), false, ("different name of field" : stdgo.GoString), _t);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L255"
        stdgo._internal.encoding.gob.Gob__badtypecheck._badTypeCheck(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_et4.ET4)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_et4.ET4>))), true, ("different type of field" : stdgo.GoString), _t);
    }
