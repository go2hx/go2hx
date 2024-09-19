package _internal.regexp_test;
function exampleRegexp_SubexpNames():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_printf.printf(("%q\n" : stdgo.GoString), stdgo.Go.toInterface(_re.subexpNames()));
        var _reversed = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("${%s} ${%s}" : stdgo.GoString), stdgo.Go.toInterface(_re.subexpNames()[(2 : stdgo.GoInt)]), stdgo.Go.toInterface(_re.subexpNames()[(1 : stdgo.GoInt)]))?.__copy__() : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_reversed));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllString(("Alan Turing" : stdgo.GoString), _reversed?.__copy__())));
    }
