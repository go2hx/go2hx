package stdgo._internal.math.big;
function benchmarkNatSetBytes(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _lengths = (new stdgo.Slice<stdgo.GoInt>(6, 6, ...[(8 : stdgo.GoInt), (24 : stdgo.GoInt), (128 : stdgo.GoInt), (7 : stdgo.GoInt), (23 : stdgo.GoInt), (127 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _n = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((128 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__14 => _l in _lengths) {
            _b.run(stdgo._internal.fmt.Fmt_sprint.sprint(stdgo.Go.toInterface(_l))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                        _n._setBytes((_buf.__slice__(0, _l) : stdgo.Slice<stdgo.GoUInt8>));
                    });
                };
            });
        };
    }
