package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
var _makeFieldsInput : () -> stdgo.Slice<stdgo.GoUInt8> = function():stdgo.Slice<stdgo.GoUInt8> {
        var _x = (new stdgo.Slice<stdgo.GoUInt8>((1048576 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _x) {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = stdgo._internal.math.rand.Rand_intn.intn((10 : stdgo.GoInt));
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (0 : stdgo.GoInt)))) {
                            _x[(_i : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (1 : stdgo.GoInt)))) {
                            if (((_i > (0 : stdgo.GoInt) : Bool) && (_x[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (120 : stdgo.GoUInt8)) : Bool)) {
                                stdgo.Go.copySlice((_x.__slice__((_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), ("χ" : stdgo.GoString));
                                break;
                            };
                            @:fallthrough {
                                __switchIndex__ = 2;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            _x[(_i : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
                            break;
                        };
                    };
                    break;
                };
            };
        };
        return _x;
    };
