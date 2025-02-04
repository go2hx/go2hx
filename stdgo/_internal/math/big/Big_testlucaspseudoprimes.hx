package stdgo._internal.math.big;
function testLucasPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.math.big.Big__testpseudoprimes._testPseudoprimes(_t, ("probablyPrimeLucas" : stdgo.GoString), function(_n:stdgo._internal.math.big.Big_t_nat.T_nat):Bool {
            return (_n._probablyPrimeLucas() && !_n._probablyPrimeMillerRabin((1 : stdgo.GoInt), true) : Bool);
        }, (new stdgo.Slice<stdgo.GoInt>(12, 12, ...[
(989 : stdgo.GoInt),
(3239 : stdgo.GoInt),
(5777 : stdgo.GoInt),
(10877 : stdgo.GoInt),
(27971 : stdgo.GoInt),
(29681 : stdgo.GoInt),
(30739 : stdgo.GoInt),
(31631 : stdgo.GoInt),
(39059 : stdgo.GoInt),
(72389 : stdgo.GoInt),
(73919 : stdgo.GoInt),
(75077 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>));
    }
