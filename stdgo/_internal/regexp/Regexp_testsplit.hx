package stdgo._internal.regexp;
function testSplit(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.regexp.Regexp__splittests._splitTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_test._r?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("#%d: %q: compile error: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_err.error()));
                continue;
            };
            var _split = @:check2r _re.split(_test._s?.__copy__(), _test._n);
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out))) {
                @:check2r _t.errorf(("#%d: %q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_test._out));
            };
            if (stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_test._r?.__copy__()) == (_test._r)) {
                var _strsplit = stdgo._internal.strings.Strings_splitn.splitN(_test._s?.__copy__(), _test._r?.__copy__(), _test._n);
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit))) {
                    @:check2r _t.errorf(("#%d: Split(%q, %q, %d): regexp vs strings mismatch\nregexp=%q\nstrings=%q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._s), stdgo.Go.toInterface(_test._r), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_split), stdgo.Go.toInterface(_strsplit));
                };
            };
        };
    }
