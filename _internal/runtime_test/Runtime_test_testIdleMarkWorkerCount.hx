package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
function testIdleMarkWorkerCount(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _c = stdgo._internal.runtime.Runtime_newGCController.newGCController((100 : stdgo.GoInt), (9223372036854775807i64 : stdgo.GoInt64));
        _c.setMaxIdleMarkWorkers((10 : stdgo.GoInt32));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                if (!_c.needIdleMarkWorker()) {
                    _t.fatalf(("expected to need idle mark workers: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (!_c.addIdleMarkWorker()) {
                    _t.fatalf(("expected to be able to add an idle mark worker: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
        if (_c.needIdleMarkWorker()) {
            _t.fatalf(("expected to not need idle mark workers" : stdgo.GoString));
        };
        if (_c.addIdleMarkWorker()) {
            _t.fatalf(("expected to not be able to add an idle mark worker" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                _c.removeIdleMarkWorker();
                if (!_c.needIdleMarkWorker()) {
                    _t.fatalf(("expected to need idle mark workers after removal: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (9 : stdgo.GoInt) : Bool), _i++, {
                if (!_c.addIdleMarkWorker()) {
                    _t.fatalf(("expected to be able to add idle mark workers after adding again: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
            });
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10 : stdgo.GoInt) : Bool), _i++, {
                if (!_c.addIdleMarkWorker()) {
                    _t.fatalf(("expected to be able to add idle mark workers interleaved: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                if (_c.addIdleMarkWorker()) {
                    _t.fatalf(("expected to not be able to add idle mark workers interleaved: i=%d" : stdgo.GoString), stdgo.Go.toInterface(_i));
                };
                _c.removeIdleMarkWorker();
            });
        };
        _c.setMaxIdleMarkWorkers((0 : stdgo.GoInt32));
        if (_c.needIdleMarkWorker()) {
            _t.fatalf(("expected to not need idle mark workers after capacity set to 0" : stdgo.GoString));
        };
        if (_c.addIdleMarkWorker()) {
            _t.fatalf(("expected to not be able to add idle mark workers after capacity set to 0" : stdgo.GoString));
        };
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (9 : stdgo.GoInt) : Bool), _i++, {
                _c.removeIdleMarkWorker();
            });
        };
        if (_c.needIdleMarkWorker()) {
            _t.fatalf(("expected to not need idle mark workers after capacity set to 0" : stdgo.GoString));
        };
        if (_c.addIdleMarkWorker()) {
            _t.fatalf(("expected to not be able to add idle mark workers after capacity set to 0" : stdgo.GoString));
        };
        _c.setMaxIdleMarkWorkers((1 : stdgo.GoInt32));
        if (!_c.needIdleMarkWorker()) {
            _t.fatalf(("expected to need idle mark workers after capacity set to 1" : stdgo.GoString));
        };
        if (!_c.addIdleMarkWorker()) {
            _t.fatalf(("expected to be able to add idle mark workers after capacity set to 1" : stdgo.GoString));
        };
    }
