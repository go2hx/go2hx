package stdgo._internal.encoding.hex;
function testEncodeToString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L59"
        for (_i => _test in stdgo._internal.encoding.hex.Hex__encdectests._encDecTests) {
            var _s = (stdgo._internal.encoding.hex.Hex_encodetostring.encodeToString(_test._dec)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L61"
            if (_s != (_test._enc)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/hex/hex_test.go#L62"
                _t.errorf(("#%d got:%s want:%s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_test._enc));
            };
        };
    }
