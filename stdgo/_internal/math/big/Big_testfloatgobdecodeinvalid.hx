package stdgo._internal.math.big;
function testFloatGobDecodeInvalid(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _tc in (new stdgo.Slice<stdgo._internal.math.big.Big_t__struct_33.T__struct_33>(2, 2, ...[({ _buf : (new stdgo.Slice<stdgo.GoUInt8>(20, 20, ...[
(1 : stdgo.GoUInt8),
(42 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(32 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(12 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _msg : ("Float.GobDecode: msb not set in last word" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_33.T__struct_33), ({ _buf : (new stdgo.Slice<stdgo.GoUInt8>(11, 11, ...[
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8),
(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), _msg : ("Float.GobDecode: nonzero finite number with empty mantissa" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_33.T__struct_33)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _buf : (null : stdgo.Slice<stdgo.GoUInt8>), _msg : ("" : stdgo.GoString) } : stdgo._internal.math.big.Big_t__struct_33.T__struct_33)])) : stdgo.Slice<stdgo._internal.math.big.Big_t__struct_33.T__struct_33>)) {
            var _err = (@:check2r stdgo._internal.math.big.Big_newfloat.newFloat((0 : stdgo.GoFloat64)).gobDecode(_tc._buf) : stdgo.Error);
            if (((_err == null) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_err.error()?.__copy__(), _tc._msg?.__copy__()) : Bool)) {
                @:check2r _t.errorf(("expected GobDecode error prefix: %s, got: %v" : stdgo.GoString), stdgo.Go.toInterface(_tc._msg), stdgo.Go.toInterface(_err));
            };
        };
    }
