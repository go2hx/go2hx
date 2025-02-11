package stdgo._internal.math.big;
function benchmarkStringPiParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var __tmp__ = _x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(stdgo._internal.math.big.Big__pi._pi?.__copy__())), (0 : stdgo.GoInt), false);
            _x = @:tmpset0 __tmp__._0;
        };
        if ((_x._utoa((10 : stdgo.GoInt)) : stdgo.GoString) != (stdgo._internal.math.big.Big__pi._pi)) {
            throw stdgo.Go.toInterface(("benchmark incorrect: conversion failed" : stdgo.GoString));
        };
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            while (@:check2r _pb.next()) {
                _x._utoa((10 : stdgo.GoInt));
            };
        });
    }
