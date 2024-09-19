package _internal.regexp_test;
function exampleRegexp_Split():Void {
        var _a = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (0 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_a.split(("banana" : stdgo.GoString), (2 : stdgo.GoInt))));
        var _zp = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("z+" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (0 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_zp.split(("pizza" : stdgo.GoString), (2 : stdgo.GoInt))));
    }
