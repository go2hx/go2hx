package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function benchmarkByteByteMap(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _str = ((stdgo._internal.strings.Strings_repeat.repeat(("a" : stdgo.GoString), (100 : stdgo.GoInt)) + stdgo._internal.strings.Strings_repeat.repeat(("b" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _fn = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            {
                final __value__ = _r;
                if (__value__ == ((97 : stdgo.GoInt32))) {
                    return (65 : stdgo.GoInt32);
                } else if (__value__ == ((98 : stdgo.GoInt32))) {
                    return (66 : stdgo.GoInt32);
                };
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b.n : Bool), _i++, {
                stdgo._internal.strings.Strings_map_.map_(_fn, _str?.__copy__());
            });
        };
    }
