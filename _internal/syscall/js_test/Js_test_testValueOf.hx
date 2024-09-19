package _internal.syscall.js_test;
function testValueOf(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((0 : stdgo.GoInt)), stdgo.Go.toInterface((42 : stdgo.GoInt)), stdgo.Go.toInterface((0 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)), stdgo.Go.toInterface((0 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = (_a.index((1 : stdgo.GoInt)).index((1 : stdgo.GoInt)).int_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
        var _o = (stdgo._internal.syscall.js.Js_valueOf.valueOf(stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("x" : stdgo.GoString), stdgo.Go.toInterface(({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(("y" : stdgo.GoString), stdgo.Go.toInterface((42 : stdgo.GoInt)));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)))?.__copy__() : stdgo._internal.syscall.js.Js_Value.Value);
        {
            var _got = (_o.get(("x" : stdgo.GoString)).get(("y" : stdgo.GoString)).int_() : stdgo.GoInt);
            if (_got != ((42 : stdgo.GoInt))) {
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface((42 : stdgo.GoInt)));
            };
        };
    }
