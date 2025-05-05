package stdgo._internal.regexp;
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L331"
        for (__0 => _tc in stdgo._internal.regexp.Regexp__replacefunctests._replaceFuncTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L333"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L334"
                _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L335"
                continue;
            };
            var _actual = (_re.replaceAllStringFunc(_tc._input?.__copy__(), _tc._replacement)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L338"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L339"
                _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (_re.replaceAllFunc((_tc._input : stdgo.Slice<stdgo.GoUInt8>), function(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L343"
                return (_tc._replacement((_s : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoUInt8>);
            }) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L344"
            if (_actual != (_tc._output)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L345"
                _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
