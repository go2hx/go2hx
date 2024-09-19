package _internal.regexp_test;
function exampleRegexp_FindAllSubmatchIndex():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _pattern = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _allIndexes = _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.GoInt));
        for (__0 => _loc in _allIndexes) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(_loc));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(0 : stdgo.GoInt)], _loc[(1 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(2 : stdgo.GoInt)], _loc[(3 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(((_content.__slice__(_loc[(4 : stdgo.GoInt)], _loc[(5 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
        };
    }
