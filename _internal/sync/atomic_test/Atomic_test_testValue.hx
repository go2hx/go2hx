package _internal.sync.atomic_test;
import stdgo._internal.sync.atomic_.Atomic_;
import stdgo._internal.sync.atomic_.Atomic_;
function testValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _v:stdgo._internal.sync.atomic_.Atomic__Value.Value = ({} : stdgo._internal.sync.atomic_.Atomic__Value.Value);
        if (_v.load() != null) {
            _t.fatal(stdgo.Go.toInterface(("initial Value is not nil" : stdgo.GoString)));
        };
        _v.store(stdgo.Go.toInterface((42 : stdgo.GoInt)));
        var _x = (_v.load() : stdgo.AnyInterface);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoInt), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != (42 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want 42" : stdgo.GoString), _x);
            };
        };
        _v.store(stdgo.Go.toInterface((84 : stdgo.GoInt)));
        _x = _v.load();
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((_x : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
            } catch(_) {
                { _0 : (0 : stdgo.GoInt), _1 : false };
            }, _xx = __tmp__._0, _ok = __tmp__._1;
            if ((!_ok || (_xx != (84 : stdgo.GoInt)) : Bool)) {
                _t.fatalf(("wrong value: got %+v, want 84" : stdgo.GoString), _x);
            };
        };
    }
