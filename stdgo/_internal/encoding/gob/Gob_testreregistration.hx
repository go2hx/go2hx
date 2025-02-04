package stdgo._internal.encoding.gob;
function testReregistration(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _newtyp = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("int" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((0 : stdgo.GoInt)))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tint._tInt._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("uint" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface((0u32 : stdgo.GoUInt))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tuint._tUint._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
        _newtyp = stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("string" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(("hello" : stdgo.GoString))));
        if (stdgo.Go.toInterface(_newtyp) != (stdgo.Go.toInterface(stdgo._internal.encoding.gob.Gob__tstring._tString._gobType()))) {
            @:check2r _t.errorf(("reregistration of %s got new type" : stdgo.GoString), stdgo.Go.toInterface(_newtyp._string()));
        };
    }
