package stdgo._internal.math.big;
function testScanPi(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _x:stdgo._internal.math.big.Big_t_nat.T_nat = (new stdgo._internal.math.big.Big_t_nat.T_nat(0, 0) : stdgo._internal.math.big.Big_t_nat.T_nat);
        var __tmp__ = _x._scan(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newreader.newReader(stdgo._internal.math.big.Big__pi._pi?.__copy__())), (10 : stdgo.GoInt), false), _z:stdgo._internal.math.big.Big_t_nat.T_nat = __tmp__._0, __8:stdgo.GoInt = __tmp__._1, __9:stdgo.GoInt = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L310"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L311"
            _t.errorf(("scanning pi: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L313"
        {
            var _s = ((_z._utoa((10 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (stdgo._internal.math.big.Big__pi._pi)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L314"
                _t.errorf(("scanning pi: got %s" : stdgo.GoString), stdgo.Go.toInterface(_s));
            };
        };
    }
