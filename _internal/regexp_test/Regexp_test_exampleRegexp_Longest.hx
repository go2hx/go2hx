package _internal.regexp_test;
function exampleRegexp_Longest():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(|b)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString))));
        _re.longest();
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findString(("ab" : stdgo.GoString))));
    }
