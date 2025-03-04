package stdgo._internal.crypto.md5;
function testGolden(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (stdgo._internal.crypto.md5.Md5__golden._golden.length) : Bool)) {
                var _g = (stdgo._internal.crypto.md5.Md5__golden._golden[(_i : stdgo.GoInt)] : stdgo._internal.crypto.md5.Md5_t_md5test.T_md5Test);
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.crypto.md5.Md5_sum.sum((_g._in : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
if (_s != (_g._out)) {
                    @:check2r _t.fatalf(("Sum function: md5(%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                };
var _c = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
var _buf = (new stdgo.Slice<stdgo.GoUInt8>(((_g._in.length) + (4 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
{
                    var _j = (0 : stdgo.GoInt);
                    while ((_j < (7 : stdgo.GoInt) : Bool)) {
                        if ((_j < (2 : stdgo.GoInt) : Bool)) {
                            stdgo._internal.io.Io_writestring.writeString(_c, _g._in.__copy__());
                        } else if (_j == ((2 : stdgo.GoInt))) {
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__((0 : stdgo.GoInt), ((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                            _c.sum((null : stdgo.Slice<stdgo.GoUInt8>));
                            stdgo._internal.io.Io_writestring.writeString(_c, (_g._in.__slice__(((_g._in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__());
                        } else if ((_j > (2 : stdgo.GoInt) : Bool)) {
                            _buf = (_buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _buf.__copyTo__(_g._in);
                            _c.write((_buf.__slice__(0, (_g._in.length)) : stdgo.Slice<stdgo.GoUInt8>));
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_c.sum((null : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
if (_s != (_g._out)) {
                            @:check2r _t.fatalf(("md5[%d](%s) = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface(_g._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_g._out));
                        };
_c.reset();
                        _j++;
                    };
                };
                _i++;
            };
        };
    }
