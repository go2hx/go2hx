package stdgo._internal.regexp;
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re1 = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        var _re2 = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L903"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L904"
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L907"
        _re1.matchString(("abcdefghijklmn" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L908"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L909"
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L912"
        _re2.matchString(("abcdefghijklmn" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L913"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L914"
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L917"
        _re2.matchString(stdgo._internal.strings.Strings_repeat.repeat(("abcdefghijklmn" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L918"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L919"
            _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
    }
