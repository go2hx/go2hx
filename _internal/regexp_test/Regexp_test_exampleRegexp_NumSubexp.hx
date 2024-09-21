package _internal.regexp_test;
function exampleRegexp_NumSubexp():Void {
        var _re0 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a." : stdgo.GoString));
        stdgo._internal.fmt.Fmt_printf.printf(("%d\n" : stdgo.GoString), stdgo.Go.toInterface(_re0.numSubexp()));
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(.*)((a)b)(.*)a" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.numSubexp()));
    }
