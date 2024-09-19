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
function benchmarkAtof32Random(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _n = ((997u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _float32strings:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(4096, 4096, ...[for (i in 0 ... 4096) ("" : stdgo.GoString)]);
        for (_i => _ in _float32strings) {
            _n = (((((99991u32 : stdgo.GoUInt32) * _n : stdgo.GoUInt32) + (42u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) % (2139095040u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _float32strings[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatFloat.formatFloat((stdgo._internal.math.Math_float32frombits.float32frombits(_n) : stdgo.GoFloat64), (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (32 : stdgo.GoInt))?.__copy__();
        };
        _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strconv.Strconv_parseFloat.parseFloat(_float32strings[(_i % (4096 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), (32 : stdgo.GoInt));
            });
        };
    }
