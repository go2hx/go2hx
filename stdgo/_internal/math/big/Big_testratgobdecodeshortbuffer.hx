package stdgo._internal.math.big;
function testRatGobDecodeShortBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _tc in (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(3, 3, ...[(new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(2 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(5, 5, ...[(2 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8), (255 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            var _err = (@:check2r stdgo._internal.math.big.Big_newrat.newRat((1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64)).gobDecode(_tc) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected GobDecode to return error for malformed input" : stdgo.GoString)));
            };
        };
    }
