package _internal.regexp_test;
function exampleRegexp_Find():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.find((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
