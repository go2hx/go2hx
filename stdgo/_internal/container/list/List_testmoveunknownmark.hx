package stdgo._internal.container.list;
function testMoveUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l1:stdgo._internal.container.list.List_list.List = ({} : stdgo._internal.container.list.List_list.List);
        var _e1 = _l1.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _l2:stdgo._internal.container.list.List_list.List = ({} : stdgo._internal.container.list.List_list.List);
        var _e2 = _l2.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L335"
        _l1.moveAfter(_e1, _e2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L336"
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l1) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L337"
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l2) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((2 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L339"
        _l1.moveBefore(_e1, _e2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L340"
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l1) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L341"
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l2) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((2 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
    }
