package _internal.regexp_test;
function exampleRegexp_FindStringSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b(y|z)c" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findStringSubmatch(("-axxxbyc-" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findStringSubmatch(("-abzc-" : stdgo.GoString))));
    }
