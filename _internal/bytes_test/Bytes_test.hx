package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
@:keep var __init_go2hx__ = {
        try {
            _internal.bytes_test.Bytes_test__testBytes._testBytes = (new stdgo.Slice<stdgo.GoUInt8>((10000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                    _internal.bytes_test.Bytes_test__testBytes._testBytes[(_i : stdgo.GoInt)] = ((97 : stdgo.GoUInt8) + ((_i % (26 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
                });
            };
            _internal.bytes_test.Bytes_test__testString._testString = (_internal.bytes_test.Bytes_test__testBytes._testBytes : stdgo.GoString)?.__copy__();
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
