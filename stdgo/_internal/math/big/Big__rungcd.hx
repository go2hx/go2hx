package stdgo._internal.math.big;
function _runGCD(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>, _aSize:stdgo.GoUInt, _bSize:stdgo.GoUInt):Void {
        if ((stdgo._internal.math.big.Big__isracebuilder._isRaceBuilder && (((_aSize > (1000u32 : stdgo.GoUInt) : Bool) || (_bSize > (1000u32 : stdgo.GoUInt) : Bool) : Bool)) : Bool)) {
            @:check2r _b.skip(stdgo.Go.toInterface(("skipping on race builder" : stdgo.GoString)));
        };
        @:check2r _b.run(("WithoutXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.math.big.Big__rungcdext._runGCDExt(_b, _aSize, _bSize, false);
        });
        @:check2r _b.run(("WithXY" : stdgo.GoString), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
            stdgo._internal.math.big.Big__rungcdext._runGCDExt(_b, _aSize, _bSize, true);
        });
    }
