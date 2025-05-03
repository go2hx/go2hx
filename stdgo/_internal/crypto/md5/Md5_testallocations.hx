package stdgo._internal.crypto.md5;
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = ((("hello, world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (16 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _h = (stdgo._internal.crypto.md5.Md5_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _n = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L219"
            _h.reset();
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L220"
            _h.write(_in);
            _out = _h.sum((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L223"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/md5/md5_test.go#L224"
            _t.errorf(("allocs = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
