package stdgo._internal.container.list;
function testRemove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        var _e1 = _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e2 = _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L208"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(2, 2, ...[_e1, _e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e = _l.front();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L210"
        _l.remove(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L211"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L212"
        _l.remove(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L213"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
