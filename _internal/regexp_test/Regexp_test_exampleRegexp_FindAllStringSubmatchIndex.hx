package _internal.regexp_test;
function exampleRegexp_FindAllStringSubmatchIndex():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-ab-axb-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-axxb-ab-" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllStringSubmatchIndex(("-foo-" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
