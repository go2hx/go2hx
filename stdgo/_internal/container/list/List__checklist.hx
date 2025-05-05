package stdgo._internal.container.list;
function _checkList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _es:stdgo.Slice<stdgo.AnyInterface>):Void {
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L145"
        if (!stdgo._internal.container.list.List__checklistlen._checkListLen(_t, _l, (_es.length))) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L146"
            return;
        };
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L150"
        {
            var _e = _l.front();
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                var _le = (stdgo.Go.typeAssert(((@:checkr _e ?? throw "null pointer dereference").value : stdgo.GoInt)) : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L152"
                if (stdgo.Go.toInterface(_le) != (_es[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L153"
                    _t.errorf(("elt[%d].Value = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_le), _es[(_i : stdgo.GoInt)]);
                };
//"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L155"
                _i++;
                _e = _e.next();
            };
        };
    }
