package stdgo._internal.encoding.hex;
function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var _s = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_test._dec)?.__copy__() : stdgo.GoString);
            if (_s != (_test._enc)) {
                @:check2r _t.errorf(("#%d got:%s want:%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
