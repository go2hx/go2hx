package stdgo._internal.crypto.sha1;
function testAllocations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (false) {
            @:check2r _t.skip(stdgo.Go.toInterface(("BoringCrypto doesn\'t allocate the same way as stdlib" : stdgo.GoString)));
        };
        var _in = ((("hello, world!" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _h = (stdgo._internal.crypto.sha1.Sha1_new_.new_() : stdgo._internal.hash.Hash_hash.Hash);
        var _n = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            _h.reset();
            _h.write(_in);
            _out = _h.sum((_out.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        }) : stdgo.GoInt);
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            @:check2r _t.errorf(("allocs = %d, want 0" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
