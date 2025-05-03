package stdgo._internal.math.big;
function testScanPiParallel(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _c = (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L321"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L322"
                stdgo.Go.routine(() -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L323"
                        stdgo._internal.math.big.Big_testscanpi.testScanPi(_t);
                        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L324"
                        _c.__send__((0 : stdgo.GoInt));
                    };
                    a();
                }));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L327"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/natconv_test.go#L328"
                _c.__get__();
                _i++;
            };
        };
    }
