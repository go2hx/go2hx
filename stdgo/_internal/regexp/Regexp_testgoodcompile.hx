package stdgo._internal.regexp;
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.regexp.Regexp__goodre._goodRe.length) : Bool)) {
                stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, stdgo._internal.regexp.Regexp__goodre._goodRe[(_i : stdgo.GoInt)].__copy__(), (stdgo.Go.str() : stdgo.GoString).__copy__());
                _i++;
            };
        };
    }
