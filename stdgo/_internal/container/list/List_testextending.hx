package stdgo._internal.container.list;
function testExtending(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l1 = stdgo._internal.container.list.List_new_.new_();
        var _l2 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L163"
        _l1.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L164"
        _l1.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L165"
        _l1.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L167"
        _l2.pushBack(stdgo.Go.toInterface((4 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L168"
        _l2.pushBack(stdgo.Go.toInterface((5 : stdgo.GoInt)));
        var _l3 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L171"
        _l3.pushBackList(_l1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L172"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L173"
        _l3.pushBackList(_l2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L174"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(5, 5, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        _l3 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L177"
        _l3.pushFrontList(_l2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L178"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L179"
        _l3.pushFrontList(_l1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L180"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(5, 5, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L182"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l1, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L183"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l2, (new stdgo.Slice<stdgo.AnyInterface>(2, 2, ...[stdgo.Go.toInterface((4 : stdgo.GoInt)), stdgo.Go.toInterface((5 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        _l3 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L186"
        _l3.pushBackList(_l1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L187"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L188"
        _l3.pushBackList(_l3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L189"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(6, 6, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        _l3 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L192"
        _l3.pushFrontList(_l1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L193"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L194"
        _l3.pushFrontList(_l3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L195"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(6, 6, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt)), stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        _l3 = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L198"
        _l1.pushBackList(_l3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L199"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l1, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L200"
        _l1.pushFrontList(_l3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L201"
        stdgo._internal.container.list.List__checklist._checkList(_t, _l1, (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
    }
