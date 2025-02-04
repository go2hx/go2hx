package stdgo._internal.encoding.binary;
function testVarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _x in stdgo._internal.encoding.binary.Binary__tests._tests) {
            stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, _x);
            stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, -_x);
        };
        {
            var _x = ((7i64 : stdgo.GoInt64) : stdgo.GoInt64);
            while (_x != ((0i64 : stdgo.GoInt64))) {
                stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, _x);
stdgo._internal.encoding.binary.Binary__testvarint._testVarint(_t, -_x);
                _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt64);
            };
        };
    }
