package stdgo._internal.hash.crc64;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tabISO = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-2882303761517117440i64 : stdgo.GoUInt64));
        var _tabECMA = stdgo._internal.hash.crc64.Crc64_maketable.makeTable((-3932672073523589310i64 : stdgo.GoUInt64));
        //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L59"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.hash.crc64.Crc64__golden._golden.length) : Bool)) {
                var _g = (stdgo._internal.hash.crc64.Crc64__golden._golden[(_i : stdgo.GoInt)] : stdgo._internal.hash.crc64.Crc64_t_test.T_test);
var _c = (stdgo._internal.hash.crc64.Crc64_new_.new_(_tabISO) : stdgo._internal.hash.Hash_hash64.Hash64);
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L62"
                stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
var _s = (_c.sum64() : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L64"
                if (_s != (_g._outISO)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L65"
                    _t.fatalf(("ISO crc64(%s) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._outISO));
                };
_c = stdgo._internal.hash.crc64.Crc64_new_.new_(_tabECMA);
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L68"
                stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
_s = _c.sum64();
//"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L70"
                if (_s != (_g._outECMA)) {
                    //"file:///home/runner/.go/go1.21.3/src/hash/crc64/crc64_test.go#L71"
                    _t.fatalf(("ECMA crc64(%s) = 0x%x want 0x%x" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._outECMA));
                };
                _i++;
            };
        };
    }
