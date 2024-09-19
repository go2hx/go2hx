package _internal.regexp_test;
function example():Void {
        var _validID:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp> = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("^[a-z]+\\[[0-9]+\\]$" : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_validID.matchString(("adam[23]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_validID.matchString(("eve[7]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_validID.matchString(("Job[48]" : stdgo.GoString))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_validID.matchString(("snakey" : stdgo.GoString))));
    }
