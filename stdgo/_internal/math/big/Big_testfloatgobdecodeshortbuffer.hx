package stdgo._internal.math.big;
function testFloatGobDecodeShortBuffer(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _tc in (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(2, 2, ...[(new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(1 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(6, 6, ...[(1 : stdgo.GoUInt8), (250 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8), (0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>)) {
            var _err = (@:check2r stdgo._internal.math.big.Big_newfloat.newFloat((0 : stdgo.GoFloat64)).gobDecode(_tc) : stdgo.Error);
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("expected GobDecode to return error for malformed input" : stdgo.GoString)));
            };
        };
    }
