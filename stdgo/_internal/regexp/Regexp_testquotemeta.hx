package stdgo._internal.regexp;
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L382"
        for (__0 => _tc in stdgo._internal.regexp.Regexp__metatests._metaTests) {
            var _quoted = (stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_tc._pattern?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L385"
            if (_quoted != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L386"
                _t.errorf(("QuoteMeta(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_quoted), stdgo.Go.toInterface(_tc._output));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L388"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L393"
            if (_tc._pattern != ((stdgo.Go.str() : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_quoted?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L395"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L396"
                    _t.errorf(("Unexpected error compiling QuoteMeta(`%s`): %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L397"
                    continue;
                };
                var _src = (((("abc" : stdgo.GoString) + _tc._pattern?.__copy__() : stdgo.GoString) + ("def" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _repl = (("xyz" : stdgo.GoString) : stdgo.GoString);
                var _replaced = (_re.replaceAllString(_src?.__copy__(), _repl?.__copy__())?.__copy__() : stdgo.GoString);
                var _expected = (("abcxyzdef" : stdgo.GoString) : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L403"
                if (_replaced != (_expected)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L404"
                    _t.errorf(("QuoteMeta(`%s`).Replace(`%s`,`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_repl), stdgo.Go.toInterface(_replaced), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
