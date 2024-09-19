package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkFields(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        for (__0 => _sd in _internal.strings_test.Strings_test__stringdata._stringdata) {
            _b.run(_sd._name?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                {
                    var _j = (16 : stdgo.GoInt);
                    stdgo.Go.cfor((_j <= (1048576 : stdgo.GoInt) : Bool), _j = (_j << ((4i64 : stdgo.GoUInt64)) : stdgo.GoInt), {
                        _b.run(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d" : stdgo.GoString), stdgo.Go.toInterface(_j))?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
                            _b.reportAllocs();
                            _b.setBytes((_j : stdgo.GoInt64));
                            var _data = ((_sd._data.__slice__(0, _j) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                            {
                                var _i = (0 : stdgo.GoInt);
                                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                                    stdgo._internal.strings.Strings_fields.fields(_data?.__copy__());
                                });
                            };
                        });
                    });
                };
            });
        };
    }
