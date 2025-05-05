package stdgo._internal.regexp;
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L514"
        for (_i => _test in stdgo._internal.regexp.Regexp__splittests._splitTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._r?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L516"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L517"
                _t.errorf(("#%d: %q: compile error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_err.error()));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L518"
                continue;
            };
            var _split = _re.split(_test._s?.__copy__(), _test._n);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L522"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L523"
                _t.errorf(("#%d: %q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out));
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L526"
            if (stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_test._r?.__copy__()) == (_test._r)) {
                var _strsplit = stdgo._internal.strings.Strings_splitn.splitN(_test._s?.__copy__(), _test._r?.__copy__(), _test._n);
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L528"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit))) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L529"
                    _t.errorf(("#%d: Split(%q, %q, %d): regexp vs strings mismatch\nregexp=%q\nstrings=%q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit));
                };
            };
        };
    }
