package _internal.regexp_test;
function exampleRegexp_Expand():Void {
        var _content = (("\n\t# comment line\n\toption1: value1\n\toption2: value2\n\n\t# another comment line\n\toption3: value3\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _pattern = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("(?m)(?P<key>\\w+):\\s+(?P<value>\\w+)$" : stdgo.GoString));
        var _template = (("$key=$value\n" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _result = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _submatches in _pattern.findAllSubmatchIndex(_content, (-1 : stdgo.GoInt))) {
            _result = _pattern.expand(_result, _template, _content, _submatches);
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_result : stdgo.GoString)));
    }
