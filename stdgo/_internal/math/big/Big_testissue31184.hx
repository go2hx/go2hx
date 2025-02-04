package stdgo._internal.math.big;
function testIssue31184(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_rat.Rat = ({} : stdgo._internal.math.big.Big_rat.Rat);
        for (__8 => _want in (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("-213.090" : stdgo.GoString), ("8.192" : stdgo.GoString), ("16.000" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            @:check2 _x.setString(_want?.__copy__());
            var _got = (@:check2 _x.floatString((3 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                @:check2r _t.errorf(("got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
