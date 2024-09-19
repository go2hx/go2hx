package _internal.sync_test;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
import stdgo._internal.sync.Sync;
function testMapRangeNestedCall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _m:stdgo._internal.sync.Sync_Map_.Map_ = ({} : stdgo._internal.sync.Sync_Map_.Map_);
        for (_i => _v in (new stdgo.GoArray<stdgo.GoString>(3, 3, ...[("hello" : stdgo.GoString), ("world" : stdgo.GoString), ("Go" : stdgo.GoString)]).__setString__() : stdgo.GoArray<stdgo.GoString>)) {
            _m.store(stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_v));
        };
        _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
            _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
                {
                    var __tmp__ = _m.load(_key), _v:stdgo.AnyInterface = __tmp__._0, _ok:Bool = __tmp__._1;
                    if ((!_ok || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_v, _value) : Bool)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %+v want %+v" : stdgo.GoString), _v, _value);
                    };
                };
                {
                    var __tmp__ = _m.loadOrStore(stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface(("dummy" : stdgo.GoString))), __20:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if (_loaded) {
                        _t.fatalf(("Nested Range loads unexpected value, want store a new value" : stdgo.GoString));
                    };
                };
                var _val = ("sync.Map" : stdgo.GoString);
                _m.store(stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface(_val));
                {
                    var __tmp__ = _m.loadAndDelete(stdgo.Go.toInterface((42 : stdgo.GoInt))), _v:stdgo.AnyInterface = __tmp__._0, _loaded:Bool = __tmp__._1;
                    if ((!_loaded || !stdgo._internal.reflect.Reflect_deepEqual.deepEqual(_v, stdgo.Go.toInterface(_val)) : Bool)) {
                        _t.fatalf(("Nested Range loads unexpected value, got %v, want %v" : stdgo.GoString), _v, stdgo.Go.toInterface(_val));
                    };
                };
                return true;
            });
            _m.delete(_key);
            return true;
        });
        var _length = (0 : stdgo.GoInt);
        _m.range(function(_key:stdgo.AnyInterface, _value:stdgo.AnyInterface):Bool {
            _length++;
            return true;
        });
        if (_length != ((0 : stdgo.GoInt))) {
            _t.fatalf(("Unexpected sync.Map size, got %v want %v" : stdgo.GoString), stdgo.Go.toInterface(_length), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        };
    }
