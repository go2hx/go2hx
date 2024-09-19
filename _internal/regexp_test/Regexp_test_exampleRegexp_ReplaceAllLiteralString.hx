package _internal.regexp_test;
function exampleRegexp_ReplaceAllLiteralString():Void {
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a(x*)b" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("T" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("$1" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.replaceAllLiteralString(("-ab-axxb-" : stdgo.GoString), ("${1}" : stdgo.GoString))));
    }
