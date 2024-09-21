package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testGrow(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testGrow" + " skip function");
        return;
        var _x = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(120 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _y = (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(121 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((72 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _growLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            for (__1 => _startLen in (new stdgo.Slice<stdgo.GoInt>(5, 5, ...[(0 : stdgo.GoInt), (100 : stdgo.GoInt), (1000 : stdgo.GoInt), (10000 : stdgo.GoInt), (100000 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
                var _xBytes = stdgo._internal.bytes.Bytes_repeat.repeat(_x, _startLen);
                var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_xBytes);
                var __tmp__ = _buf.read(_tmp), _readBytes:stdgo.GoInt = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                var _yBytes = stdgo._internal.bytes.Bytes_repeat.repeat(_y, _growLen);
                var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                    _buf.grow(_growLen);
                    _buf.write(_yBytes);
                }) : stdgo.GoFloat64);
                if (_allocs != (0 : stdgo.GoFloat64)) {
                    _t.errorf(("allocation occurred during write" : stdgo.GoString));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal((_buf.bytes().__slice__((0 : stdgo.GoInt), (_startLen - _readBytes : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_xBytes.__slice__(_readBytes) : stdgo.Slice<stdgo.GoUInt8>))) {
                    _t.errorf(("bad initial data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
                if (!stdgo._internal.bytes.Bytes_equal.equal((_buf.bytes().__slice__((_startLen - _readBytes : stdgo.GoInt), ((_startLen - _readBytes : stdgo.GoInt) + _growLen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _yBytes)) {
                    _t.errorf(("bad written data at %d %d" : stdgo.GoString), stdgo.Go.toInterface(_startLen), stdgo.Go.toInterface(_growLen));
                };
            };
        };
    }
