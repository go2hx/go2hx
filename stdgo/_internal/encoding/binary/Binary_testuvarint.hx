package stdgo._internal.encoding.binary;
function testUvarint(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__8 => _x in stdgo._internal.encoding.binary.Binary__tests._tests) {
            stdgo._internal.encoding.binary.Binary__testuvarint._testUvarint(_t, (_x : stdgo.GoUInt64));
        };
        {
            var _x = ((7i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            while (_x != ((0i64 : stdgo.GoUInt64))) {
                stdgo._internal.encoding.binary.Binary__testuvarint._testUvarint(_t, _x);
                _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            };
        };
    }
