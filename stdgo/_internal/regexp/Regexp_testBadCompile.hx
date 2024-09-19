package stdgo._internal.regexp;
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (stdgo._internal.regexp.Regexp__badRe._badRe.length) : Bool), _i++, {
                stdgo._internal.regexp.Regexp__compileTest._compileTest(_t, stdgo._internal.regexp.Regexp__badRe._badRe[(_i : stdgo.GoInt)]._re?.__copy__(), stdgo._internal.regexp.Regexp__badRe._badRe[(_i : stdgo.GoInt)]._err?.__copy__());
            });
        };
    }
