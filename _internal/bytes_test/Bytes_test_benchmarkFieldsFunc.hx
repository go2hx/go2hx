package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function benchmarkFieldsFunc(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _sd in _internal.bytes_test.Bytes_test__bytesdata._bytesdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = (_sd._data.__slice__(0, _j) : stdgo.Slice<stdgo.GoUInt8>);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    stdgo._internal.bytes.Bytes_fieldsFunc.fieldsFunc(_data, stdgo._internal.unicode.Unicode_isSpace.isSpace);
                                });
                            };
                        });
                    });
                };
            });
        };
    }
