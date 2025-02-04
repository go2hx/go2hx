package stdgo._internal.encoding.gob;
function testSliceType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _s:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _sint = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("slice" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_s))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        var _news:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        var _newsint = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked(("slice1" : stdgo.GoString), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_news))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_sint) != (stdgo.Go.toInterface(_newsint))) {
            @:check2r _t.errorf(("second registration of []int creates new type" : stdgo.GoString));
        };
        var _b:stdgo.Slice<Bool> = (null : stdgo.Slice<Bool>);
        var _sbool = (stdgo._internal.encoding.gob.Gob__gettypeunlocked._getTypeUnlocked((stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo._internal.reflect.Reflect_typeof.typeOf(stdgo.Go.toInterface(_b))) : stdgo._internal.encoding.gob.Gob_t_gobtype.T_gobType);
        if (stdgo.Go.toInterface(_sbool) == (stdgo.Go.toInterface(_sint))) {
            @:check2r _t.errorf(("registration of []bool creates same type as []int" : stdgo.GoString));
        };
        var _str = (_sbool._string()?.__copy__() : stdgo.GoString);
        var _expected = (("[]bool" : stdgo.GoString) : stdgo.GoString);
        if (_str != (_expected)) {
            @:check2r _t.errorf(("slice printed as %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_str), stdgo.Go.toInterface(_expected));
        };
    }
