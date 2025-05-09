package stdgo._internal.encoding.gob;
function testMapType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _mapStringInt = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("map" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_m))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        var _newm:stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var _newMapStringInt = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("map1" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_newm))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L115"
        if (stdgo.Go.toInterface(_mapStringInt) != (stdgo.Go.toInterface(_newMapStringInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L116"
            _t.errorf(("second registration of map[string]int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _mapStringBool = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_b))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L120"
        if (stdgo.Go.toInterface(_mapStringBool) == (stdgo.Go.toInterface(_mapStringInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L121"
            _t.errorf(("registration of map[string]bool creates same type as map[string]int" : stdgo.GoString));
        };
        var _str = (_mapStringBool._string()?.__copy__() : stdgo.GoString);
        var _expected = (("map[string]bool" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L125"
        if (_str != (_expected)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/type_test.go#L126"
            _t.errorf(("map printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
