package stdgo._internal.container.list;
function testInsertAfterUnknownMark(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l:stdgo._internal.container.list.List_list.List = ({} : stdgo._internal.container.list.List_list.List);
        @:check2 _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        @:check2 _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        @:check2 _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        @:check2 _l.insertAfter(stdgo.Go.toInterface((1 : stdgo.GoInt)), (stdgo.Go.setRef(({} : stdgo._internal.container.list.List_element.Element)) : stdgo.Ref<stdgo._internal.container.list.List_element.Element>));
        stdgo._internal.container.list.List__checklist._checkList(_t, (stdgo.Go.setRef(_l) : stdgo.Ref<stdgo._internal.container.list.List_list.List>), (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((1 : stdgo.GoInt)), stdgo.Go.toInterface((2 : stdgo.GoInt)), stdgo.Go.toInterface((3 : stdgo.GoInt))]) : stdgo.Slice<stdgo.AnyInterface>));
    }
