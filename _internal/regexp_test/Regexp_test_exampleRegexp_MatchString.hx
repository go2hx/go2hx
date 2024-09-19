package _internal.regexp_test;
function exampleRegexp_MatchString():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(gopher){2}" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.matchString(("gopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.matchString(("gophergopher" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.matchString(("gophergophergopher" : stdgo.GoString))));
    }
