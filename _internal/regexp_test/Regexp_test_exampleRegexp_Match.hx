package _internal.regexp_test;
function exampleRegexp_Match():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("foo.?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.match((("seafood fool" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.match((("something else" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>))));
    }
