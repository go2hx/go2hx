package stdgo._internal.regexp;
function testQuoteMeta(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _tc in stdgo._internal.regexp.Regexp__metatests._metaTests) {
            var _quoted = (stdgo._internal.regexp.Regexp_quotemeta.quoteMeta(_tc._pattern?.__copy__())?.__copy__() : stdgo.GoString);
            if (_quoted != (_tc._output)) {
                @:check2r _t.errorf(("QuoteMeta(`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_quoted), stdgo.Go.toInterface(_tc._output));
                continue;
            };
            if (_tc._pattern != ((stdgo.Go.str() : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_quoted?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("Unexpected error compiling QuoteMeta(`%s`): %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _src = (((("abc" : stdgo.GoString) + _tc._pattern?.__copy__() : stdgo.GoString) + ("def" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                var _repl = (("xyz" : stdgo.GoString) : stdgo.GoString);
                var _replaced = (@:check2r _re.replaceAllString(_src?.__copy__(), _repl?.__copy__())?.__copy__() : stdgo.GoString);
                var _expected = (("abcxyzdef" : stdgo.GoString) : stdgo.GoString);
                if (_replaced != (_expected)) {
                    @:check2r _t.errorf(("QuoteMeta(`%s`).Replace(`%s`,`%s`) = `%s`; want `%s`" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_repl), stdgo.Go.toInterface(_replaced), stdgo.Go.toInterface(_expected));
                };
            };
        };
    }
