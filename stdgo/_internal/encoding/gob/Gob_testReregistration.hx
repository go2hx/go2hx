package stdgo._internal.encoding.gob;
function testReregistration(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _newtyp = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("int" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tInt._tInt._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("uint" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface((0u32 : stdgo.GoUInt))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tUint._tUint._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("string" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tString._tString._gobType()))) {
            _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
    }
