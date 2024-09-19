package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
var _misuseTests : stdgo.Slice<_internal.sync_test.Sync_test_T__struct_2.T__struct_2> = (new stdgo.Slice<_internal.sync_test.Sync_test_T__struct_2.T__struct_2>(8, 8, ...[({ _name : ("Mutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        _mu.unlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("Mutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.Unlock" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.unlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.Unlock2" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.rlock();
        _mu.unlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.Unlock3" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.lock();
        _mu.unlock();
        _mu.unlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.RUnlock" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.runlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.RUnlock2" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.lock();
        _mu.runlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2), ({ _name : ("RWMutex.RUnlock3" : stdgo.GoString), _f : function():Void {
        var _mu:stdgo._internal.sync.Sync_RWMutex.RWMutex = ({} : stdgo._internal.sync.Sync_RWMutex.RWMutex);
        _mu.rlock();
        _mu.runlock();
        _mu.runlock();
    } } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _f : null } : _internal.sync_test.Sync_test_T__struct_2.T__struct_2)])) : stdgo.Slice<_internal.sync_test.Sync_test_T__struct_2.T__struct_2>);
