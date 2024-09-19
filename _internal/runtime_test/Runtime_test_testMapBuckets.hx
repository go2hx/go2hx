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
function testMapBuckets(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("mapliteral" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            for (__14 => _tt in _internal.runtime_test.Runtime_test__mapBucketTests._mapBucketTests) {
                var _localMap = ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                if (stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_localMap)) {
                    _t.errorf(("no escape: buckets pointer is nil for non-escaping map" : stdgo.GoString));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _localMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_localMap) : stdgo.GoInt);
                    if (_got != (_tt._noescape)) {
                        _t.errorf(("no escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._noescape), stdgo.Go.toInterface(_got));
                    };
                };
                var _escapingMap = stdgo._internal.runtime.Runtime_escape.escape(({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>));
                {
                    var _count = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (((_count > (1 : stdgo.GoInt) : Bool) && stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_escapingMap) : Bool)) {
                        _t.errorf(("escape: buckets pointer is nil for n=%d buckets" : stdgo.GoString), stdgo.Go.toInterface(_count));
                    };
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _escapingMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (_got != (_tt._escape)) {
                        _t.errorf(("escape n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._escape), stdgo.Go.toInterface(_got));
                    };
                };
            };
        });
        _t.run(("nohint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            for (__22 => _tt in _internal.runtime_test.Runtime_test__mapBucketTests._mapBucketTests) {
                var _localMap = ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                if (stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_localMap)) {
                    _t.errorf(("no escape: buckets pointer is nil for non-escaping map" : stdgo.GoString));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _localMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_localMap) : stdgo.GoInt);
                    if (_got != (_tt._noescape)) {
                        _t.errorf(("no escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._noescape), stdgo.Go.toInterface(_got));
                    };
                };
                var _escapingMap = stdgo._internal.runtime.Runtime_escape.escape(({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>));
                {
                    var _count = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (((_count > (1 : stdgo.GoInt) : Bool) && stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_escapingMap) : Bool)) {
                        _t.errorf(("escape: buckets pointer is nil for n=%d buckets" : stdgo.GoString), stdgo.Go.toInterface(_count));
                    };
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _escapingMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (_got != (_tt._escape)) {
                        _t.errorf(("escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._escape), stdgo.Go.toInterface(_got));
                    };
                };
            };
        });
        _t.run(("makemap" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            for (__30 => _tt in _internal.runtime_test.Runtime_test__mapBucketTests._mapBucketTests) {
                var _localMap = ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                if (stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_localMap)) {
                    _t.errorf(("no escape: buckets pointer is nil for non-escaping map" : stdgo.GoString));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _localMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_localMap) : stdgo.GoInt);
                    if (_got != (_tt._noescape)) {
                        _t.errorf(("no escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._noescape), stdgo.Go.toInterface(_got));
                    };
                };
                var _escapingMap = stdgo._internal.runtime.Runtime_escape.escape(({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>));
                {
                    var _count = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (((_count > (1 : stdgo.GoInt) : Bool) && stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_escapingMap) : Bool)) {
                        _t.errorf(("escape: buckets pointer is nil for n=%d buckets" : stdgo.GoString), stdgo.Go.toInterface(_count));
                    };
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _escapingMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (_got != (_tt._escape)) {
                        _t.errorf(("escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._escape), stdgo.Go.toInterface(_got));
                    };
                };
            };
        });
        _t.run(("makemap64" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            for (__38 => _tt in _internal.runtime_test.Runtime_test__mapBucketTests._mapBucketTests) {
                var _localMap = ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
                if (stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_localMap)) {
                    _t.errorf(("no escape: buckets pointer is nil for non-escaping map" : stdgo.GoString));
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _localMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_localMap) : stdgo.GoInt);
                    if (_got != (_tt._noescape)) {
                        _t.errorf(("no escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._noescape), stdgo.Go.toInterface(_got));
                    };
                };
                var _escapingMap = stdgo._internal.runtime.Runtime_escape.escape(({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
                    x.__defaultValue__ = () -> (0 : stdgo.GoInt);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>));
                {
                    var _count = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (((_count > (1 : stdgo.GoInt) : Bool) && stdgo._internal.runtime.Runtime_mapBucketsPointerIsNil.mapBucketsPointerIsNil(_escapingMap) : Bool)) {
                        _t.errorf(("escape: buckets pointer is nil for n=%d buckets" : stdgo.GoString), stdgo.Go.toInterface(_count));
                    };
                };
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < _tt._n : Bool), _i++, {
                        _escapingMap[_i] = _i;
                    });
                };
                {
                    var _got = (stdgo._internal.runtime.Runtime_mapBucketsCount.mapBucketsCount(_escapingMap) : stdgo.GoInt);
                    if (_got != (_tt._escape)) {
                        _t.errorf(("escape: n=%d want %d buckets, got %d" : stdgo.GoString), stdgo.Go.toInterface(_tt._n), stdgo.Go.toInterface(_tt._escape), stdgo.Go.toInterface(_got));
                    };
                };
            };
        });
    }
