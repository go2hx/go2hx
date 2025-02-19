package stdgo._internal.container.list;
function testZeroList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l1 = (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_list.List)) : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
        @:check2r _l1.pushFront(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        stdgo._internal.container.list.List__checklist._checkList(_t, _l1, (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        var _l2 = (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_list.List)) : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
        @:check2r _l2.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        stdgo._internal.container.list.List__checklist._checkList(_t, _l2, (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        var _l3 = (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_list.List)) : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
        @:check2r _l3.pushFrontList(_l1);
        stdgo._internal.container.list.List__checklist._checkList(_t, _l3, (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
        var _l4 = (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_list.List)) : stdgo.Ref<stdgo._internal.container.list.List_list.List>);
        @:check2r _l4.pushBackList(_l2);
        stdgo._internal.container.list.List__checklist._checkList(_t, _l4, (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface((1 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
    }
