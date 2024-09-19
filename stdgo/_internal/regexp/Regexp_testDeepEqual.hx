package stdgo._internal.regexp;
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _re1 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        var _re2 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re1.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re2.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        _re2.matchString(stdgo._internal.strings.Strings_repeat.repeat(("abcdefghijklmn" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__());
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
    }