package stdgo._internal.crypto.sha256;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L95"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.crypto.sha256.Sha256__golden._golden.length) : Bool)) {
                var _g = (stdgo._internal.crypto.sha256.Sha256__golden._golden[(_i : stdgo.GoInt)] : stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test);
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_sum256.sum256((_g._in : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L98"
                if (_s != (_g._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L99"
                    _t.fatalf(("Sum256 function: sha256(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
var _c = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L102"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (3 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L103"
                        if ((_j < (2 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L104"
                            stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L106"
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L107"
                            _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L108"
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_c.sum((null : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L111"
                        if (_s != (_g._out)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L112"
                            _t.fatalf(("sha256[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L114"
                        _c.reset();
                        _j++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L117"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.crypto.sha256.Sha256__golden224._golden224.length) : Bool)) {
                var _g = (stdgo._internal.crypto.sha256.Sha256__golden224._golden224[(_i : stdgo.GoInt)] : stdgo._internal.crypto.sha256.Sha256_t_sha256test.T_sha256Test);
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha256.Sha256_sum224.sum224((_g._in : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L120"
                if (_s != (_g._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L121"
                    _t.fatalf(("Sum224 function: sha224(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
var _c = (stdgo._internal.crypto.sha256.Sha256_new224.new224() : stdgo._internal.hash.Hash_hash.Hash);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L124"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (3 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L125"
                        if ((_j < (2 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L126"
                            stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L128"
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L129"
                            _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L130"
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_c.sum((null : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L133"
                        if (_s != (_g._out)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L134"
                            _t.fatalf(("sha224[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
//"file:///home/runner/.go/go1.21.3/src/crypto/sha256/sha256_test.go#L136"
                        _c.reset();
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
