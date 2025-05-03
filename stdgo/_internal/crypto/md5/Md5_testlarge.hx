package stdgo._internal.crypto.md5;
function testLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _ok = (("2bb571599a4180e1d542f76904adc3df" : stdgo.GoString) : stdgo.GoString);
        var _block = (new stdgo.Slice<stdgo.GoUInt8>((10004 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _c = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L126"
        {
            var _offset = (0 : stdgo.GoInt);
            while ((_offset < (4 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L127"
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (10000 : stdgo.GoInt) : Bool)) {
                        _block[(_offset + _i : stdgo.GoInt)] = ((48 : stdgo.GoUInt8) + ((_i % (10 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
                        _i++;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L130"
                {
                    var _blockSize = (10 : stdgo.GoInt);
                    while ((_blockSize <= (10000 : stdgo.GoInt) : Bool)) {
                        var _blocks = ((10000 : stdgo.GoInt) / _blockSize : stdgo.GoInt);
var _b = (_block.__slice__(_offset, (_offset + _blockSize : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L133"
                        _c.reset();
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L134"
                        {
                            var _i = (0 : stdgo.GoInt);
                            while ((_i < _blocks : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L135"
                                _c.write(_b);
                                _i++;
                            };
                        };
var _s = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_c.sum((null : stdgo.Slice<stdgo.GoUInt8>)))).__copy__() : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L138"
                        if (_s != (_ok)) {
                            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L139"
                            _t.fatalf(("md5 TestLarge offset=%d, blockSize=%d = %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_offset), stdgo.Go.toInterface(_blockSize), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ok));
                        };
                        _blockSize = (_blockSize * ((10 : stdgo.GoInt)) : stdgo.GoInt);
                    };
                };
                _offset++;
            };
        };
    }
