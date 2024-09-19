package _internal.regexp_test;
function exampleRegexp_FindAllStringSubmatch():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-ab-axb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.findAllStringSubmatch(("-axxb-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
