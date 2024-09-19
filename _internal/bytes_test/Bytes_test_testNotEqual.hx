package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testNotEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _size:stdgo.GoInt = (128 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _size = (32 : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _len = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_len <= _size : Bool), _len++, {
                {
                    var _x = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_x <= (_size - _len : stdgo.GoInt) : Bool), _x++, {
                        {
                            var _y = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_y <= (_size - _len : stdgo.GoInt) : Bool), _y++, {
                                {
                                    var _diffpos = (_x : stdgo.GoInt);
                                    stdgo.Go.cfor((_diffpos < (_x + _len : stdgo.GoInt) : Bool), _diffpos++, {
                                        _a[(_diffpos : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                                        if ((stdgo._internal.bytes.Bytes_equal.equal((_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) || stdgo._internal.bytes.Bytes_equal.equal((_b.__slice__(_y, (_y + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_a.__slice__(_x, (_x + _len : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                                            _t.errorf(("NotEqual(%d, %d, %d, %d) = true" : stdgo.GoString), stdgo.Go.toInterface(_len), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_y), stdgo.Go.toInterface(_diffpos));
                                        };
                                        _a[(_diffpos : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
