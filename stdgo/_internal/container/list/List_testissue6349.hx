package stdgo._internal.container.list;
function testIssue6349(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L239"
        _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L240"
        _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e = _l.front();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L243"
        _l.remove(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L244"
        if ((@:checkr _e ?? throw "null pointer dereference").value != (stdgo.Go.toInterface((1 : stdgo.GoInt)))) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L245"
            _t.errorf(("e.value = %d, want 1" : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference").value);
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L247"
        if (({
            final value = _e.next();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L248"
            _t.errorf(("e.Next() != nil" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L250"
        if (({
            final value = _e.prev();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L251"
            _t.errorf(("e.Prev() != nil" : stdgo.GoString));
        };
    }
