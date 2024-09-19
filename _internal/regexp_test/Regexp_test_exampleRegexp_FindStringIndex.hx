package _internal.regexp_test;
function exampleRegexp_FindStringIndex():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("ab?" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findStringIndex(("tablett" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findStringIndex(("foo" : stdgo.GoString)) == null));
    }
