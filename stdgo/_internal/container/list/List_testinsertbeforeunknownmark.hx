package stdgo._internal.container.list;
function testInsertBeforeUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l:stdgo._internal.container.list.List_list.List = ({} : stdgo._internal.container.list.List_list.List);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L310"
        _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L311"
        _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L312"
        _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L313"
        _l.insertBefore(stdgo.Go.toInterface((1 : stdgo.GoInt)), (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_element.Element)) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L314"
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
    }
