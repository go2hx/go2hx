package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testEndianBaseCompare(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (512 : stdgo.GoInt) : Bool), _i++, {
                _a[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
                _b[(_i : stdgo.GoInt)] = (((1 : stdgo.GoInt) + (((31 : stdgo.GoInt) * _i : stdgo.GoInt) % (254 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
            });
        };
        {
            var _i = (2 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= (512 : stdgo.GoInt) : Bool), _i = (_i << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _j++, {
                        _a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        var _cmp = (stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
                        if (_cmp != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("CompareBbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.GoInt)] = (_b[(_j : stdgo.GoInt)] + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] - (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _cmp = stdgo._internal.bytes.Bytes_compare.compare((_a.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
                        if (_cmp != ((1 : stdgo.GoInt))) {
                            _t.errorf(("CompareAbigger(%d,%d) = %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_cmp));
                        };
                        _a[(_j : stdgo.GoInt)] = _b[(_j : stdgo.GoInt)];
                        _a[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)] = _b[(_j + (1 : stdgo.GoInt) : stdgo.GoInt)];
                    });
                };
            });
        };
    }
