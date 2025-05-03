package stdgo._internal.math.big;
function benchmarkStringPiParallel(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        var _x:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        {
            var __tmp__ = _x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(stdgo._internal.math.big.Big__pi._pi?.__copy__())), (0 : stdgo.GoInt), false);
            _x = @:tmpset0 __tmp__._0;
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L342"
        if ((_x._utoa((10 : stdgo.GoInt)) : stdgo.GoString) != (stdgo._internal.math.big.Big__pi._pi)) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L343"
            throw stdgo.Go.toInterface(("benchmark incorrect: conversion failed" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L345"
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_pb.PB>):Void {
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L346"
            while (_pb.next()) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L347"
                _x._utoa((10 : stdgo.GoInt));
            };
        });
    }
