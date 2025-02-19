package stdgo._internal.index.suffixarray;
function _test(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _build:stdgo.Slice<stdgo.GoUInt8> -> stdgo.Slice<stdgo.GoInt>):Void {
        @:check2r _t.run(("ababab..." : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _size = (100000 : stdgo.GoInt);
            if (stdgo._internal.testing.Testing_short.short()) {
                _size = (10000 : stdgo.GoInt);
            };
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _x) {
                _x[(_i : stdgo.GoInt)] = ("ab" : stdgo.GoString)[(_i % (2 : stdgo.GoInt) : stdgo.GoInt)];
            };
            stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build);
        });
        @:check2r _t.run(("forcealloc" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((100000 : stdgo.GoInt).toBasic(), (100001 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _lo = ((1 : stdgo.GoUInt8) : stdgo.GoUInt8);
            var _hi = ((255 : stdgo.GoUInt8) : stdgo.GoUInt8);
            for (_i => _ in _x) {
                if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    _x[(_i : stdgo.GoInt)] = _lo;
                } else {
                    _x[(_i : stdgo.GoInt)] = _hi;
                    _hi--;
                    if ((_hi <= _lo : Bool)) {
                        _lo++;
                        if (_lo == ((0 : stdgo.GoUInt8))) {
                            _lo = (1 : stdgo.GoUInt8);
                        };
                        _hi = (255 : stdgo.GoUInt8);
                    };
                };
            };
            (_x.__slice__(0, _x.capacity) : stdgo.Slice<stdgo.GoUInt8>)[(_x.length : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
            stdgo._internal.index.suffixarray.Suffixarray__testsa._testSA(_t, _x, _build);
        });
        @:check2r _t.run(("exhaustive2" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _numFail = (0 : stdgo.GoInt);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            {
                var _n = (0 : stdgo.GoInt);
                while ((_n <= (21 : stdgo.GoInt) : Bool)) {
                    if (((_n > (12 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        break;
                    };
_x[(_n : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, (_x.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (2 : stdgo.GoInt), _numFail__pointer__, _build);
                    _n++;
                };
            };
        });
        @:check2r _t.run(("exhaustive3" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _x = (new stdgo.Slice<stdgo.GoUInt8>((30 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _numFail = (0 : stdgo.GoInt);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            var _numFail__pointer__ = stdgo.Go.pointer(_numFail);
            {
                var _n = (0 : stdgo.GoInt);
                while ((_n <= (14 : stdgo.GoInt) : Bool)) {
                    if (((_n > (8 : stdgo.GoInt) : Bool) && stdgo._internal.testing.Testing_short.short() : Bool)) {
                        break;
                    };
_x[(_n : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
stdgo._internal.index.suffixarray.Suffixarray__testrec._testRec(_t, (_x.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoInt), (3 : stdgo.GoInt), _numFail__pointer__, _build);
                    _n++;
                };
            };
        });
    }
