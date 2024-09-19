package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkBuildString_Builder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.strings_test.Strings_test__benchmarkBuilder._benchmarkBuilder(_b, function(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>, _numWrite:stdgo.GoInt, _grow:Bool):Void {
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                    var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
                    if (_grow) {
                        _buf.grow(((_internal.strings_test.Strings_test__someBytes._someBytes.length) * _numWrite : stdgo.GoInt));
                    };
                    {
                        var _i = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < _numWrite : Bool), _i++, {
                            _buf.write(_internal.strings_test.Strings_test__someBytes._someBytes);
                        });
                    };
                    _internal.strings_test.Strings_test__sinkS._sinkS = (_buf.string() : stdgo.GoString)?.__copy__();
                });
            };
        });
    }
