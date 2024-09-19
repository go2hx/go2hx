package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testIndexByteBig(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n:stdgo.GoInt = (1024 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (128 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _b1 = (_b.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
                _b1 = (_b.__slice__((_i / (2 : stdgo.GoInt) : stdgo.GoInt), (_n - (((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_b1.length) : Bool), _j++, {
                        _b1[(_j : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                        var _pos = (stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8)) : stdgo.GoInt);
                        if (_pos != (_j)) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                        _b1[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                        _pos = stdgo._internal.bytes.Bytes_indexByte.indexByte(_b1, (120 : stdgo.GoUInt8));
                        if (_pos != ((-1 : stdgo.GoInt))) {
                            _t.errorf(("IndexByte(%q, \'x\') = %v" : stdgo.GoString), stdgo.Go.toInterface(_b1), stdgo.Go.toInterface(_pos));
                        };
                    });
                };
            });
        };
    }
