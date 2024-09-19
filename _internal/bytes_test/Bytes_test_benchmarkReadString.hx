package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkReadString(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _data = (new stdgo.Slice<stdgo.GoUInt8>((32768 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _data[(32767 : stdgo.GoInt)] = (120 : stdgo.GoUInt8);
        _b.setBytes((32768i64 : stdgo.GoInt64));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                var _buf = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_data);
                var __tmp__ = _buf.readString((120 : stdgo.GoUInt8)), __16:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _b.fatal(stdgo.Go.toInterface(_err));
                };
            });
        };
    }
