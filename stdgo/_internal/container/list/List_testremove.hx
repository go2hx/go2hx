package stdgo._internal.container.list;
function testRemove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        var _e1 = @:check2r _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e2 = @:check2r _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(2, 2, ...[_e1, _e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e = @:check2r _l.front();
        @:check2r _l.remove(_e);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
