package stdgo._internal.regexp;
function testBadCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.regexp.Regexp__badre._badRe.length) : Bool)) {
                stdgo._internal.regexp.Regexp__compiletest._compileTest(_t, stdgo._internal.regexp.Regexp__badre._badRe[(_i : stdgo.GoInt)]._re.__copy__(), stdgo._internal.regexp.Regexp__badre._badRe[(_i : stdgo.GoInt)]._err.__copy__());
                _i++;
            };
        };
    }
