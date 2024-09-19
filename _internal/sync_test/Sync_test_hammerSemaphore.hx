package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function hammerSemaphore(_s:stdgo.Pointer<stdgo.GoUInt32>, _loops:stdgo.GoInt, _cdone:stdgo.Chan<Bool>):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loops : Bool), _i++, {
                stdgo._internal.sync.Sync_runtime_Semacquire.runtime_Semacquire(_s);
                stdgo._internal.sync.Sync_runtime_Semrelease.runtime_Semrelease(_s, false, (0 : stdgo.GoInt));
            });
        };
        _cdone.__send__(true);
    }
