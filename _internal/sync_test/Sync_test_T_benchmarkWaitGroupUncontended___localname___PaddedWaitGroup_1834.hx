package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
@:structInit @:using(_internal.sync_test.Sync_test_T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_static_extension.T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834_static_extension) class T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834 {
    @:embedded
    public var waitGroup : stdgo._internal.sync.Sync_WaitGroup.WaitGroup = ({} : stdgo._internal.sync.Sync_WaitGroup.WaitGroup);
    public var _pad : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(128, 128, ...[for (i in 0 ... 128) (0 : stdgo.GoUInt8)]);
    public function new(?waitGroup:stdgo._internal.sync.Sync_WaitGroup.WaitGroup, ?_pad:stdgo.GoArray<stdgo.GoUInt8>) {
        if (waitGroup != null) this.waitGroup = waitGroup;
        if (_pad != null) this._pad = _pad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function add(_skip:stdgo.GoInt) this.waitGroup.add(_skip);
    @:embedded
    public function done() this.waitGroup.done();
    @:embedded
    public function wait_() this.waitGroup.wait_();
    public function __copy__() {
        return new T_benchmarkWaitGroupUncontended___localname___PaddedWaitGroup_1834(waitGroup, _pad);
    }
}
