package stdgo._internal.regexp;
function testGoodCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (stdgo._internal.regexp.Regexp__goodRe._goodRe.length) : Bool), _i++, {
                stdgo._internal.regexp.Regexp__compileTest._compileTest(_t, stdgo._internal.regexp.Regexp__goodRe._goodRe[(_i : stdgo.GoInt)]?.__copy__(), stdgo.Go.str()?.__copy__());
            });
        };
    }
