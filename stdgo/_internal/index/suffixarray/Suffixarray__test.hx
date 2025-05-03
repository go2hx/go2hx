package stdgo._internal.index.suffixarray;
function _test(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Void {
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L344"
        _t.run(("ababab..." : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _size = (100000 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L349"
            if (stdgo._internal.testing.Testing_short.short()) {
                _size = (10000 : stdgo.GoInt);
            };
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L353"
            for (_i => _ in _x) {
                _x[(_i : stdgo.GoInt)] = ("ab" : stdgo.GoString)[(_i % (2 : stdgo.GoInt) : stdgo.GoInt)];
            };
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L356"
            stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build);
        });
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L359"
        _t.run(("forcealloc" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((100000 : stdgo.GoInt).toBasic(), (100001 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _lo = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            var _hi = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L374"
            for (_i => _ in _x) {
                //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L375"
                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _x[(_i : stdgo.GoInt)] = _lo;
                } else {
                    _x[(_i : stdgo.GoInt)] = _hi;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L379"
                    _hi--;
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L380"
                    if ((_hi <= _lo : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L381"
                        _lo++;
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L382"
                        if (_lo == ((0 : stdgo.GoUInt8))) {
                            _lo = (1 : stdgo.GoUInt8);
                        };
                        _hi = (255 : stdgo.GoUInt8);
                    };
                };
            };
            (_x.__slice__(0, _x.capacity) : stdgo.Slice<stdgo.GoUInt8>)[(_x.length : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L390"
            stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build);
        });
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L393"
        _t.run(("exhaustive2" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _numFail = (0 : stdgo.GoInt);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L398"
            {
                var _n = (0 : stdgo.GoInt);
                while ((_n <= (21 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L399"
                    if (((_n > (12 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L400"
                        break;
                    };
_x[(_n : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L403"
                    stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, (_x.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (2 : stdgo.GoInt), _numFail__pointer__, _build);
                    _n++;
                };
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L407"
        _t.run(("exhaustive3" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _numFail = (0 : stdgo.GoInt);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L412"
            {
                var _n = (0 : stdgo.GoInt);
                while ((_n <= (14 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L413"
                    if (((_n > (8 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L414"
                        break;
                    };
_x[(_n : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/index/suffixarray/suffixarray_test.go#L417"
                    stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, (_x.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (3 : stdgo.GoInt), _numFail__pointer__, _build);
                    _n++;
                };
            };
        });
    }
