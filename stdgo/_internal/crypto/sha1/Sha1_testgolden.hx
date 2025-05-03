package stdgo._internal.crypto.sha1;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L62"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.crypto.sha1.Sha1__golden._golden.length) : Bool)) {
                var _g = (stdgo._internal.crypto.sha1.Sha1__golden._golden[(_i : stdgo.GoInt)] : stdgo._internal.crypto.sha1.Sha1_t_sha1test.T_sha1Test);
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1_sum.sum((_g._in : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L65"
                if (_s != (_g._out)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L66"
                    _t.fatalf(("Sum function: sha1(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
var _c = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L69"
                {
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (4 : stdgo.GoInt) : Bool)) {
                        var _sum:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L71"
                        {
                            final __value__ = _j;
                            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L73"
                                stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L76"
                                stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L77"
                                _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L78"
                                stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((3 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L81"
                                if (false) {
                                    //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L82"
                                    {
                                        _j++;
                                        continue;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L84"
                                stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L85"
                                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                                //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L86"
                                stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                                _sum = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_t_digest.T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                            };
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum)).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L90"
                        if (_s != (_g._out)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L91"
                            _t.fatalf(("sha1[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
//"file:///home/runner/.go/go1.21.3/src/crypto/sha1/sha1_test.go#L93"
                        _c.reset();
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
