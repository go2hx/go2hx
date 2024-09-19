package stdgo._internal.crypto.sha1;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (stdgo._internal.crypto.sha1.Sha1__golden._golden.length) : Bool), _i++, {
                var _g = (stdgo._internal.crypto.sha1.Sha1__golden._golden[(_i : stdgo.GoInt)] : stdgo._internal.crypto.sha1.Sha1_T_sha1Test.T_sha1Test);
                var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.sha1.Sha1_sum.sum((_g._in : stdgo.Slice<stdgo.GoUInt8>))))?.__copy__() : stdgo.GoString);
                if (_s != (_g._out)) {
                    _t.fatalf(("Sum function: sha1(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
                var _c = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (4 : stdgo.GoInt) : Bool), _j++, {
                        var _sum:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
                        {
                            final __value__ = _j;
                            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt))) {
                                stdgo._internal.io.Io_writeString.writeString(_c, _g._in?.__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((2 : stdgo.GoInt))) {
                                stdgo._internal.io.Io_writeString.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                                stdgo._internal.io.Io_writeString.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _sum = _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            } else if (__value__ == ((3 : stdgo.GoInt))) {
                                if (false) {
                                    continue;
                                };
                                stdgo._internal.io.Io_writeString.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                                stdgo._internal.io.Io_writeString.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                                _sum = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>)) : stdgo.Ref<stdgo._internal.crypto.sha1.Sha1_T_digest.T_digest>).constantTimeSum((null : stdgo.Slice<stdgo.GoUInt8>));
                            };
                        };
                        var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_sum))?.__copy__() : stdgo.GoString);
                        if (_s != (_g._out)) {
                            _t.fatalf(("sha1[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
                        _c.reset();
                    });
                };
            });
        };
    }