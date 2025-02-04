package stdgo._internal.math.big;
function testDecimalRounding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _test in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_9.T__struct_9>(20, 20, ...[
({ _x : (0i64 : stdgo.GoUInt64), _n : (0 : stdgo.GoInt), _down : ("0" : stdgo.GoString), _even : ("0" : stdgo.GoString), _up : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (0i64 : stdgo.GoUInt64), _n : (1 : stdgo.GoInt), _down : ("0" : stdgo.GoString), _even : ("0" : stdgo.GoString), _up : ("0" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (1i64 : stdgo.GoUInt64), _n : (0 : stdgo.GoInt), _down : ("0" : stdgo.GoString), _even : ("0" : stdgo.GoString), _up : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (5i64 : stdgo.GoUInt64), _n : (0 : stdgo.GoInt), _down : ("0" : stdgo.GoString), _even : ("0" : stdgo.GoString), _up : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (9i64 : stdgo.GoUInt64), _n : (0 : stdgo.GoInt), _down : ("0" : stdgo.GoString), _even : ("10" : stdgo.GoString), _up : ("10" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (15i64 : stdgo.GoUInt64), _n : (1 : stdgo.GoInt), _down : ("10" : stdgo.GoString), _even : ("20" : stdgo.GoString), _up : ("20" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (45i64 : stdgo.GoUInt64), _n : (1 : stdgo.GoInt), _down : ("40" : stdgo.GoString), _even : ("40" : stdgo.GoString), _up : ("50" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (95i64 : stdgo.GoUInt64), _n : (1 : stdgo.GoInt), _down : ("90" : stdgo.GoString), _even : ("100" : stdgo.GoString), _up : ("100" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12344999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12340000" : stdgo.GoString), _even : ("12340000" : stdgo.GoString), _up : ("12350000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12345000i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12340000" : stdgo.GoString), _even : ("12340000" : stdgo.GoString), _up : ("12350000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12345001i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12340000" : stdgo.GoString), _even : ("12350000" : stdgo.GoString), _up : ("12350000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (23454999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("23450000" : stdgo.GoString), _even : ("23450000" : stdgo.GoString), _up : ("23460000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (23455000i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("23450000" : stdgo.GoString), _even : ("23460000" : stdgo.GoString), _up : ("23460000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (23455001i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("23450000" : stdgo.GoString), _even : ("23460000" : stdgo.GoString), _up : ("23460000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (99994999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("99990000" : stdgo.GoString), _even : ("99990000" : stdgo.GoString), _up : ("100000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (99995000i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("99990000" : stdgo.GoString), _even : ("100000000" : stdgo.GoString), _up : ("100000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (99999999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("99990000" : stdgo.GoString), _even : ("100000000" : stdgo.GoString), _up : ("100000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12994999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12990000" : stdgo.GoString), _even : ("12990000" : stdgo.GoString), _up : ("13000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12995000i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12990000" : stdgo.GoString), _even : ("13000000" : stdgo.GoString), _up : ("13000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9),
({ _x : (12999999i64 : stdgo.GoUInt64), _n : (4 : stdgo.GoInt), _down : ("12990000" : stdgo.GoString), _even : ("13000000" : stdgo.GoString), _up : ("13000000" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9)].concat([for (i in 20 ... (20 > 20 ? 20 : 20 : stdgo.GoInt).toBasic()) ({ _x : (0 : stdgo.GoUInt64), _n : (0 : stdgo.GoInt), _down : ("" : stdgo.GoString), _even : ("" : stdgo.GoString), _up : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_9.T__struct_9)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_9.T__struct_9>)) {
            var _x = ((new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat)._setUint64(_test._x) : stdgo._internal.math.big.Big_t_nat.T_nat);
            var _d:stdgo._internal.math.big.Big_t_decimal.T_decimal = ({} : stdgo._internal.math.big.Big_t_decimal.T_decimal);
            @:check2 _d._init(_x, (0 : stdgo.GoInt));
            @:check2 _d._roundDown(_test._n);
            {
                var _got = ((@:check2 _d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._down)) {
                    @:check2r _t.errorf(("roundDown(%d, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._down));
                };
            };
            @:check2 _d._init(_x, (0 : stdgo.GoInt));
            @:check2 _d._round(_test._n);
            {
                var _got = ((@:check2 _d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._even)) {
                    @:check2r _t.errorf(("round(%d, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._even));
                };
            };
            @:check2 _d._init(_x, (0 : stdgo.GoInt));
            @:check2 _d._roundUp(_test._n);
            {
                var _got = ((@:check2 _d.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_test._up)) {
                    @:check2r _t.errorf(("roundUp(%d, %d) = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test._x), stdgo.Go.toInterface(_test._n), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._up));
                };
            };
        };
    }
