package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function _applyCalls(_m:_internal.sync_test.Sync_test_T_mapInterface.T_mapInterface, _calls:stdgo.Slice<_internal.sync_test.Sync_test_T_mapCall.T_mapCall>):{ var _0 : stdgo.Slice<_internal.sync_test.Sync_test_T_mapResult.T_mapResult>; var _1 : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>; } {
        var _results = (null : stdgo.Slice<_internal.sync_test.Sync_test_T_mapResult.T_mapResult>), _final = (null : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        for (__4 => _c in _calls) {
            var __tmp__ = _c._apply(_m), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
            _results = (_results.__append__((new _internal.sync_test.Sync_test_T_mapResult.T_mapResult(_v, _ok) : _internal.sync_test.Sync_test_T_mapResult.T_mapResult)));
        };
        _final = ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo.AnyInterface>);
        _m.range(function(_k:stdgo.AnyInterface, _v:stdgo.AnyInterface):Bool {
            _final[_k] = _v;
            return true;
        });
        return { _0 : _results, _1 : _final };
    }
