package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function benchmarkAtof64RandomLongFloats(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.strconv_test.Strconv_test__initAtof._initAtof();
        var _samples = (new stdgo.Slice<stdgo.GoString>((_internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _t in _internal.strconv_test.Strconv_test__atofRandomTests._atofRandomTests) {
            _samples[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_t._x, (103 : stdgo.GoUInt8), (20 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__();
        };
        _b.resetTimer();
        var _idx = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_samples[(_idx : stdgo.GoInt)]?.__copy__(), (64 : stdgo.GoInt));
                _idx++;
                if (_idx == ((_samples.length))) {
                    _idx = (0 : stdgo.GoInt);
                };
            });
        };
    }
