package _internal.regexp_test;
function exampleRegexp_FindAllIndex():Void {
        var _content = (("London" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("o." : stdgo.GoString));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (1 : stdgo.GoInt))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_re.findAllIndex(_content, (-1 : stdgo.GoInt))));
    }
