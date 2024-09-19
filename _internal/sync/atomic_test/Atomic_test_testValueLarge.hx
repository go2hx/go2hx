package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValueLarge(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        _v.store(stdgo.Go.toInterface(("foo" : stdgo.GoString)));
        var _x = (_v.load() : stdgo.AnyInterface);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != ("foo" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want foo" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface(("barbaz" : stdgo.GoString)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoString)) : stdgo.GoString), _1 : true };
            } catch(_) {
                { _0 : ("" : stdgo.GoString), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != ("barbaz" : stdgo.GoString)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want barbaz" : stdgo.GoString), _x);
            };
        };
    }
