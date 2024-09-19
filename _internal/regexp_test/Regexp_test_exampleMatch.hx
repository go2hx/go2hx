package _internal.regexp_test;
function exampleMatch():Void {
        var __tmp__ = stdgo._internal.regexp.Regexp_match.match(("foo.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>)), _matched:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp_match.match(("bar.*" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
        {
            var __tmp__ = stdgo._internal.regexp.Regexp_match.match(("a(b" : stdgo.GoString), (("seafood" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
            _matched = __tmp__._0;
            _err = __tmp__._1;
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_matched), stdgo.Go.toInterface(_err));
    }
