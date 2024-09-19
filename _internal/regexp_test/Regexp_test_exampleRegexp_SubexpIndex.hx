package _internal.regexp_test;
function exampleRegexp_SubexpIndex():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?P<first>[a-zA-Z]+) (?P<last>[a-zA-Z]+)" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.matchString(("Alan Turing" : stdgo.GoString))));
        var _matches = _re.findStringSubmatch(("Alan Turing" : stdgo.GoString));
        var _lastIndex = (_re.subexpIndex(("last" : stdgo.GoString)) : stdgo.GoInt);
        stdgo._internal.fmt.Fmt_printf.printf(("last => %d\n" : stdgo.GoString), stdgo.Go.toInterface(_lastIndex));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_matches[(_lastIndex : stdgo.GoInt)]));
    }
