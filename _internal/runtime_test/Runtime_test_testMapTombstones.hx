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
function testMapTombstones(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>);
        {};
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                _m[_i] = _i;
            });
        };
        stdgo._internal.runtime.Runtime_mapTombstoneCheck.mapTombstoneCheck(_m);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if (_m != null) _m.remove(_i);
            });
        };
        stdgo._internal.runtime.Runtime_mapTombstoneCheck.mapTombstoneCheck(_m);
        {
            var _i = (10000 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15000 : stdgo.GoInt) : Bool), _i++, {
                _m[_i] = _i;
            });
        };
        stdgo._internal.runtime.Runtime_mapTombstoneCheck.mapTombstoneCheck(_m);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (15000 : stdgo.GoInt) : Bool), _i++, {
                if (_m != null) _m.remove(_i);
            });
        };
        stdgo._internal.runtime.Runtime_mapTombstoneCheck.mapTombstoneCheck(_m);
    }
