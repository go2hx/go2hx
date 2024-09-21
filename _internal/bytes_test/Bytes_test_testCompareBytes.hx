package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testCompareBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testCompareBytes" + " skip function");
        return;
        var _lengths = (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (128 : stdgo.GoInt) : Bool), _i++, {
                _lengths = (_lengths.__append__(_i));
            });
        };
        _lengths = (_lengths.__append__((256 : stdgo.GoInt), (512 : stdgo.GoInt), (1024 : stdgo.GoInt), (1333 : stdgo.GoInt), (4095 : stdgo.GoInt), (4096 : stdgo.GoInt), (4097 : stdgo.GoInt)));
        if (!stdgo._internal.testing.Testing_short.short()) {
            _lengths = (_lengths.__append__((65535 : stdgo.GoInt), (65536 : stdgo.GoInt), (65537 : stdgo.GoInt), (99999 : stdgo.GoInt)));
        };
        var _n = (_lengths[((_lengths.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n + (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _len in _lengths) {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _len : Bool), _i++, {
                    _a[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                    _b[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                });
            };
            {
                var _i = (_len : stdgo.GoInt);
                stdgo.Go.cfor((_i <= _n : Bool), _i++, {
                    _a[(_i : stdgo.GoInt)] = (8 : stdgo.GoUInt8);
                    _b[(_i : stdgo.GoInt)] = (9 : stdgo.GoUInt8);
                });
            };
            var _cmp = (stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            if (_cmp != ((0 : stdgo.GoInt))) {
                _t.errorf(("CompareIdentical(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
            };
            if ((_len > (0 : stdgo.GoInt) : Bool)) {
                _cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                if (_cmp != ((-1 : stdgo.GoInt))) {
                    _t.errorf(("CompareAshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
                _cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, (_len - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                if (_cmp != ((1 : stdgo.GoInt))) {
                    _t.errorf(("CompareBshorter(%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_cmp));
                };
            };
            {
                var _k = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_k < _len : Bool), _k++, {
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_cmp != ((1 : stdgo.GoInt))) {
                        _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = (_a[(_k : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                    _cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _len) : stdgo.Slice<stdgo.GoUInt8>));
                    if (_cmp != ((-1 : stdgo.GoInt))) {
                        _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_k), stdgo.Go.toInterface(_cmp));
                    };
                    _b[(_k : stdgo.GoInt)] = _a[(_k : stdgo.GoInt)];
                });
            };
        };
    }
