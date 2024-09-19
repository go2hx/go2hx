package stdgo._internal.encoding.gob;
function testMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mapStringInt = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("map" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_m))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        var _newm:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _newMapStringInt = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(("map1" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_newm))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_mapStringInt) != (stdgo.Go.toInterface(_newMapStringInt))) {
            _t.errorf(("second registration of map[string]int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _mapStringBool = (stdgo._internal.encoding.gob.Gob__getTypeUnlocked._getTypeUnlocked(stdgo.Go.str()?.__copy__(), stdgo._internal.reflect.Reflect_typeOf.typeOf(stdgo.Go.toInterface(_b))) : stdgo._internal.encoding.gob.Gob_T_gobType.T_gobType);
        if (stdgo.Go.toInterface(_mapStringBool) == (stdgo.Go.toInterface(_mapStringInt))) {
            _t.errorf(("registration of map[string]bool creates same type as map[string]int" : stdgo.GoString));
        };
        var _str = (_mapStringBool._string()?.__copy__() : stdgo.GoString);
        var _expected = ("map[string]bool" : stdgo.GoString);
        if (_str != (_expected)) {
            _t.errorf(("map printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
