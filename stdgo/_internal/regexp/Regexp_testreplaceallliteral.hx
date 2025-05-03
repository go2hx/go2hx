package stdgo._internal.regexp;
function testReplaceAllLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L287"
        for (__0 => _tc in stdgo._internal.regexp.Regexp__replacetests._replaceTests) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L288"
            if (stdgo._internal.strings.Strings_contains.contains(_tc._replacement?.__copy__(), ("$" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L289"
                continue;
            };
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L292"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L293"
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L294"
                continue;
            };
            var _actual = (_re.replaceAllLiteralString(_tc._input?.__copy__(), _tc._replacement?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L297"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L298"
                _t.errorf(("%q.ReplaceAllLiteralString(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllLiteral((_tc._input : stdgo.Slice<stdgo.GoUInt8>), (_tc._replacement : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L303"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L304"
                _t.errorf(("%q.ReplaceAllLiteral(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L310"
        for (__1 => _tc in stdgo._internal.regexp.Regexp__replaceliteraltests._replaceLiteralTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L312"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L313"
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L314"
                continue;
            };
            var _actual = (_re.replaceAllLiteralString(_tc._input?.__copy__(), _tc._replacement?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L317"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L318"
                _t.errorf(("%q.ReplaceAllLiteralString(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllLiteral((_tc._input : stdgo.Slice<stdgo.GoUInt8>), (_tc._replacement : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L323"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L324"
                _t.errorf(("%q.ReplaceAllLiteral(%q,%q) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_tc._replacement), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
