package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testIndexByteSmall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((5015 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUInt8);
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        var _p = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (((100 : stdgo.GoInt) + _j : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_p != (_j)) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface(((100 : stdgo.GoInt) + _j : stdgo.GoInt)), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i <= ((_b.length) - (15 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        var _p = (stdgo._internal.bytes.Bytes_indexByte.indexByte((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_p != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, %d) = %d" : stdgo.GoString), stdgo.Go.toInterface((_b.__slice__(_i, (_i + (15 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface(_p));
                        };
                    });
                };
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (15 : stdgo.GoInt) : Bool), _j++, {
                        _b[(_i + _j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    });
                };
            });
        };
    }
