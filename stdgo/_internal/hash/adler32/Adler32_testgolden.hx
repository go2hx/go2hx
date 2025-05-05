package stdgo._internal.hash.adler32;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L76"
        for (__0 => _g in stdgo._internal.hash.adler32.Adler32__golden._golden) {
            var _in = (_g._in?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L78"
            if (((_in.length) > (220 : stdgo.GoInt) : Bool)) {
                _in = (((_in.__slice__(0, (100 : stdgo.GoInt)) : stdgo.GoString) + ("..." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (_in.__slice__(((_in.length) - (100 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
            };
            var _p = (_g._in : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L82"
            {
                var _got = (stdgo._internal.hash.adler32.Adler32__checksum._checksum(_p) : stdgo.GoUInt32);
                if (_got != (_g._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L83"
                    _t.errorf(("simple implementation: checksum(%q) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_g._out));
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L84"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L86"
            {
                var _got = (stdgo._internal.hash.adler32.Adler32_checksum.checksum(_p) : stdgo.GoUInt32);
                if (_got != (_g._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L87"
                    _t.errorf(("optimized implementation: Checksum(%q) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_g._out));
                    //"file:///home/runner/.go/go1.21.3/src/hash/adler32/adler32_test.go#L88"
                    continue;
                };
            };
        };
    }
