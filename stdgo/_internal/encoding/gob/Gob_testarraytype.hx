package stdgo._internal.encoding.gob;
function testArrayType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _a3:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(3, 3).__setNumber32__();
        var _a3int = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("foo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_a3))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        var _newa3int = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("bar" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_a3))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_a3int) != (stdgo.Go.toInterface(_newa3int))) {
            @:check2r _t.errorf(("second registration of [3]int creates new type" : stdgo.GoString));
        };
        var _a4:stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(4, 4).__setNumber32__();
        var _a4int = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("goo" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_a4))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a4int))) {
            @:check2r _t.errorf(("registration of [3]int creates same type as [4]int" : stdgo.GoString));
        };
        var _b3:stdgo.GoArray<Bool> = new stdgo.GoArray<Bool>(3, 3);
        var _a3bool = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_b3))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_a3int) == (stdgo.Go.toInterface(_a3bool))) {
            @:check2r _t.errorf(("registration of [3]bool creates same type as [3]int" : stdgo.GoString));
        };
        var _str = (_a3bool._string()?.__copy__() : stdgo.GoString);
        var _expected = (("[3]bool" : stdgo.GoString) : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("array printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
