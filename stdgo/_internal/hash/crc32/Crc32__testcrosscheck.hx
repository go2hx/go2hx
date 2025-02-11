package stdgo._internal.hash.crc32;
function _testCrossCheck(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _crcFunc1:(stdgo.GoUInt32, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoUInt32, _crcFunc2:(stdgo.GoUInt32, stdgo.Slice<stdgo.GoUInt8>) -> stdgo.GoUInt32):Void {
        var _lengths = (new stdgo.Slice<stdgo.GoInt>(46, 46, ...[
(0 : stdgo.GoInt),
(1 : stdgo.GoInt),
(2 : stdgo.GoInt),
(3 : stdgo.GoInt),
(4 : stdgo.GoInt),
(5 : stdgo.GoInt),
(10 : stdgo.GoInt),
(16 : stdgo.GoInt),
(50 : stdgo.GoInt),
(63 : stdgo.GoInt),
(64 : stdgo.GoInt),
(65 : stdgo.GoInt),
(100 : stdgo.GoInt),
(127 : stdgo.GoInt),
(128 : stdgo.GoInt),
(129 : stdgo.GoInt),
(255 : stdgo.GoInt),
(256 : stdgo.GoInt),
(257 : stdgo.GoInt),
(300 : stdgo.GoInt),
(312 : stdgo.GoInt),
(384 : stdgo.GoInt),
(416 : stdgo.GoInt),
(448 : stdgo.GoInt),
(480 : stdgo.GoInt),
(500 : stdgo.GoInt),
(501 : stdgo.GoInt),
(502 : stdgo.GoInt),
(503 : stdgo.GoInt),
(504 : stdgo.GoInt),
(505 : stdgo.GoInt),
(512 : stdgo.GoInt),
(513 : stdgo.GoInt),
(1000 : stdgo.GoInt),
(1024 : stdgo.GoInt),
(2000 : stdgo.GoInt),
(4030 : stdgo.GoInt),
(4031 : stdgo.GoInt),
(4032 : stdgo.GoInt),
(4033 : stdgo.GoInt),
(4036 : stdgo.GoInt),
(4040 : stdgo.GoInt),
(4048 : stdgo.GoInt),
(4096 : stdgo.GoInt),
(5000 : stdgo.GoInt),
(10000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (__4 => _length in _lengths) {
            var _p = (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var __blank__ = stdgo._internal.math.rand.Rand_read.read(_p);
            var _crcInit = (stdgo._internal.math.rand.Rand_int63.int63() : stdgo.GoUInt32);
            var _crc1 = (_crcFunc1(_crcInit, _p) : stdgo.GoUInt32);
            var _crc2 = (_crcFunc2(_crcInit, _p) : stdgo.GoUInt32);
            if (_crc1 != (_crc2)) {
                @:check2r _t.errorf(("mismatch: 0x%x vs 0x%x (buffer length %d)" : stdgo.GoString), stdgo.Go.toInterface(_crc1), stdgo.Go.toInterface(_crc2), stdgo.Go.toInterface(_length));
            };
        };
    }
