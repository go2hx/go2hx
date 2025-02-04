package stdgo._internal.regexp;
function testReplaceAllFunc(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _tc in stdgo._internal.regexp.Regexp__replacefunctests._replaceFuncTests) {
            var __tmp__ = stdgo._internal.regexp.Regexp_compile.compile(_tc._pattern?.__copy__()), _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Unexpected error compiling %q: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_err));
                continue;
            };
            var _actual = (@:check2r _re.replaceAllStringFunc(_tc._input?.__copy__(), _tc._replacement)?.__copy__() : stdgo.GoString);
            if (_actual != (_tc._output)) {
                @:check2r _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
            _actual = (@:check2r _re.replaceAllFunc((_tc._input : stdgo.Slice<stdgo.GoUInt8>), function(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                return (_tc._replacement((_s : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoUInt8>);
            }) : stdgo.GoString)?.__copy__();
            if (_actual != (_tc._output)) {
                @:check2r _t.errorf(("%q.ReplaceFunc(%q,fn) = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_tc._pattern), stdgo.Go.toInterface(_tc._input), stdgo.Go.toInterface(_actual), stdgo.Go.toInterface(_tc._output));
            };
        };
    }
