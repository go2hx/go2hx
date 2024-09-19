package _internal.regexp_test;
function exampleRegexp_FindAllString():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a." : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllString(("paranormal" : stdgo.GoString), (2 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllString(("graal" : stdgo.GoString), (-1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllString(("none" : stdgo.GoString), (-1 : stdgo.GoInt))));
    }
