package stdgo._internal.hash.crc32;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L251"
        stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE);
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L255"
        {
            var _delta = (1 : stdgo.GoInt);
            while ((_delta <= (7 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L256"
                stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                    var _ieee = (stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() : stdgo._internal.hash.Hash_hash32.Hash32);
                    var _d = (_delta : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L259"
                    if ((_d >= (_b.length) : Bool)) {
                        _d = (_b.length);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L262"
                    _ieee.write((_b.__slice__(0, _d) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L263"
                    _ieee.write((_b.__slice__(_d) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L264"
                    return _ieee.sum32();
                });
                _delta++;
            };
        };
        var _castagnoliTab = stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32));
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L269"
        if (({
            final value = _castagnoliTab;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L270"
            _t.errorf(("nil Castagnoli Table" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L273"
        stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            var _castagnoli = (stdgo._internal.hash.crc32.Crc32_new_.new_(_castagnoliTab) : stdgo._internal.hash.Hash_hash32.Hash32);
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L275"
            _castagnoli.write(_b);
            //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L276"
            return _castagnoli.sum32();
        });
        //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L281"
        {
            var _delta = (1 : stdgo.GoInt);
            while ((_delta <= (7 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L282"
                stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                    var _castagnoli = (stdgo._internal.hash.crc32.Crc32_new_.new_(_castagnoliTab) : stdgo._internal.hash.Hash_hash32.Hash32);
                    var _d = (_delta : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L285"
                    if ((_d >= (_b.length) : Bool)) {
                        _d = (_b.length);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L288"
                    _castagnoli.write((_b.__slice__(0, _d) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L289"
                    _castagnoli.write((_b.__slice__(_d) : stdgo.Slice<stdgo.GoUInt8>));
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc32/crc32_test.go#L290"
                    return _castagnoli.sum32();
                });
                _delta++;
            };
        };
    }
