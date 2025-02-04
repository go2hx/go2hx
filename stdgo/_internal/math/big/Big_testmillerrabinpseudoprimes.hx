package stdgo._internal.math.big;
function testMillerRabinPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.math.big.Big__testpseudoprimes._testPseudoprimes(_t, ("probablyPrimeMillerRabin" : stdgo.GoString), function(_n:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
            return (_n._probablyPrimeMillerRabin((1 : stdgo.GoInt), true) && !_n._probablyPrimeLucas() : Bool);
        }, (new stdgo.Slice<stdgo.GoInt>(16, 16, ...[
(2047 : stdgo.GoInt),
(3277 : stdgo.GoInt),
(4033 : stdgo.GoInt),
(4681 : stdgo.GoInt),
(8321 : stdgo.GoInt),
(15841 : stdgo.GoInt),
(29341 : stdgo.GoInt),
(42799 : stdgo.GoInt),
(49141 : stdgo.GoInt),
(52633 : stdgo.GoInt),
(65281 : stdgo.GoInt),
(74665 : stdgo.GoInt),
(80581 : stdgo.GoInt),
(85489 : stdgo.GoInt),
(88357 : stdgo.GoInt),
(90751 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
    }
