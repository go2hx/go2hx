package stdgo._internal.crypto.md5;
function testLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _ok = (("2bb571599a4180e1d542f76904adc3df" : stdgo.GoString) : stdgo.GoString);
        var _block = (new stdgo.Slice<stdgo.GoUInt8>((10004 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _c = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        {
            var _offset = (0 : stdgo.GoInt);
            while ((_offset < (4 : stdgo.GoInt) : Bool)) {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                        _block[(_offset + _i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_i % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _i++;
                    };
                };
{
                    var _blockSize = (10 : stdgo.GoInt);
                    while ((_blockSize <= (10000 : stdgo.GoInt) : Bool)) {
                        var _blocks = ((10000 : stdgo.GoInt) / _blockSize : stdgo.GoInt);
var _b = (_block.__slice__(_offset, (_offset + _blockSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_c.reset();
{
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _blocks : Bool)) {
                                _c.write(_b);
                                _i++;
                            };
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_c.sum((null : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
if (_s != (_ok)) {
                            @:check2r _t.fatalf(("md5 TestLarge offset=%d, blockSize=%d = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_blockSize), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok));
                        };
                        _blockSize = (_blockSize * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _offset++;
            };
        };
    }
