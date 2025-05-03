package stdgo._internal.container.list;
function testIssue4103(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l1 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L218"
        _l1.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L219"
        _l1.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _l2 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L222"
        _l2.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L223"
        _l2.pushBack(stdgo.Go.toInterface((4 : stdgo.GoInt)));
        var _e = _l1.front();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L226"
        _l2.remove(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L227"
        {
            var _n = (_l2.len() : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L228"
                _t.errorf(("l2.Len() = %d, want 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L231"
        _l1.insertBefore(stdgo.Go.toInterface((8 : stdgo.GoInt)), _e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L232"
        {
            var _n = (_l1.len() : stdgo.GoInt);
            if (_n != ((3 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L233"
                _t.errorf(("l1.Len() = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
