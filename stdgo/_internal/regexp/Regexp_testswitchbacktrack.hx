package stdgo._internal.regexp;
function testSwitchBacktrack(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _re = stdgo._internal.regexp.Regexp_mustcompile.mustCompile(("a|b" : stdgo.GoString));
        var _long = (new stdgo.Slice<stdgo.GoUInt8>((262145 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L583"
        _re.match(_long);
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L584"
        _re.match((_long.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
    }
