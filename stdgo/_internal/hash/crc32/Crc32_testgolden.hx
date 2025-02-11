package stdgo._internal.hash.crc32;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, stdgo._internal.hash.crc32.Crc32_checksumieee.checksumIEEE);
        {
            var _delta = (1 : stdgo.GoInt);
            while ((_delta <= (7 : stdgo.GoInt) : Bool)) {
                stdgo._internal.hash.crc32.Crc32__testgoldenieee._testGoldenIEEE(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                    var _ieee = (stdgo._internal.hash.crc32.Crc32_newieee.newIEEE() : stdgo._internal.hash.Hash_hash32.Hash32);
                    var _d = (_delta : stdgo.GoInt);
                    if ((_d >= (_b.length) : Bool)) {
                        _d = (_b.length);
                    };
                    _ieee.write((_b.__slice__(0, _d) : stdgo.Slice<stdgo.GoUInt8>));
                    _ieee.write((_b.__slice__(_d) : stdgo.Slice<stdgo.GoUInt8>));
                    return _ieee.sum32();
                });
                _delta++;
            };
        };
        var _castagnoliTab = stdgo._internal.hash.crc32.Crc32_maketable.makeTable((-2097792136u32 : stdgo.GoUInt32));
        if ((_castagnoliTab == null || (_castagnoliTab : Dynamic).__nil__)) {
            @:check2r _t.errorf(("nil Castagnoli Table" : stdgo.GoString));
        };
        stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
            var _castagnoli = (stdgo._internal.hash.crc32.Crc32_new_.new_(_castagnoliTab) : stdgo._internal.hash.Hash_hash32.Hash32);
            _castagnoli.write(_b);
            return _castagnoli.sum32();
        });
        {
            var _delta = (1 : stdgo.GoInt);
            while ((_delta <= (7 : stdgo.GoInt) : Bool)) {
                stdgo._internal.hash.crc32.Crc32__testgoldencastagnoli._testGoldenCastagnoli(_t, function(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 {
                    var _castagnoli = (stdgo._internal.hash.crc32.Crc32_new_.new_(_castagnoliTab) : stdgo._internal.hash.Hash_hash32.Hash32);
                    var _d = (_delta : stdgo.GoInt);
                    if ((_d >= (_b.length) : Bool)) {
                        _d = (_b.length);
                    };
                    _castagnoli.write((_b.__slice__(0, _d) : stdgo.Slice<stdgo.GoUInt8>));
                    _castagnoli.write((_b.__slice__(_d) : stdgo.Slice<stdgo.GoUInt8>));
                    return _castagnoli.sum32();
                });
                _delta++;
            };
        };
    }
