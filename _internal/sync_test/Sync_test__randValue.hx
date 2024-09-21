package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _randValue(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):stdgo.AnyInterface {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_r.intn((4 : stdgo.GoInt)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _ in _b) {
            _b[(_i : stdgo.GoInt)] = ((97 : stdgo.GoUInt8) + (stdgo._internal.math.rand.Rand_intn.intn((26 : stdgo.GoInt)) : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        return stdgo.Go.toInterface((_b : stdgo.GoString));
    }
