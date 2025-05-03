package stdgo._internal.math.big;
function testIssue31184(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
        //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L590"
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("-213.090" : stdgo.GoString), ("8.192" : stdgo.GoString), ("16.000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L595"
            _x.setString(_want?.__copy__());
            var _got = (_x.floatString((3 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L597"
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/ratconv_test.go#L598"
                _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
