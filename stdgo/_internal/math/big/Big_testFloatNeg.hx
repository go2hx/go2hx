package stdgo._internal.math.big;
function testFloatNeg(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__14 => _test in (new stdgo.Slice<stdgo.GoString>(7, 7, ...[("0" : stdgo.GoString), ("1" : stdgo.GoString), ("1234" : stdgo.GoString), ("1.23e-2" : stdgo.GoString), ("1e-1000" : stdgo.GoString), ("1e1000" : stdgo.GoString), ("Inf" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            var _p1 = stdgo._internal.math.big.Big__makeFloat._makeFloat(_test?.__copy__());
            var _n1 = stdgo._internal.math.big.Big__makeFloat._makeFloat((("-" : stdgo.GoString) + _test?.__copy__() : stdgo.GoString)?.__copy__());
            var _n2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).neg(_p1);
            var _p2 = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Float_.Float_)) : stdgo.Ref<stdgo._internal.math.big.Big_Float_.Float_>).neg(_n2);
            if (!stdgo._internal.math.big.Big__alike._alike(_n2, _n1)) {
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_n2.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_n1.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
            if (!stdgo._internal.math.big.Big__alike._alike(_p2, _p1)) {
                _t.errorf(("%s: got %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_test), stdgo.Go.toInterface(_p2.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))), stdgo.Go.toInterface(_p1.text((103 : stdgo.GoUInt8), (10 : stdgo.GoInt))));
            };
        };
    }
