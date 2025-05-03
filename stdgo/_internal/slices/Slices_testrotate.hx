package stdgo._internal.slices;
function testRotate(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _s = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1005"
        {
            var _n = (0 : stdgo.GoInt);
            while ((_n < (10 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1006"
                {
                    var _r = (0 : stdgo.GoInt);
                    while ((_r < _n : Bool)) {
                        _s = (_s.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
//"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1008"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _n : Bool)) {
                                _s = (_s.__append__(_i) : stdgo.Slice<stdgo.GoInt>);
                                _i++;
                            };
                        };
//"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1011"
                        stdgo._internal.slices.Slices__rotateleft._rotateLeft(_s, _r);
//"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1012"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _n : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1013"
                                if (_s[(_i : stdgo.GoInt)] != ((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt))) {
                                    //"file:///home/runner/.go/go1.21.3/src/slices/slices_test.go#L1014"
                                    _t.errorf(("expected n=%d r=%d i:%d want:%d got:%d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((((_i + _r : stdgo.GoInt)) % _n : stdgo.GoInt)), stdgo.Go.toInterface(_s[(_i : stdgo.GoInt)]));
                                };
                                _i++;
                            };
                        };
                        _r++;
                    };
                };
                _n++;
            };
        };
    }
