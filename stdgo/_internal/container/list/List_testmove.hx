package stdgo._internal.container.list;
function testMove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        var _e1 = @:check2r _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e2 = @:check2r _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e3 = @:check2r _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        var _e4 = @:check2r _l.pushBack(stdgo.Go.toInterface((4 : stdgo.GoInt)));
        @:check2r _l.moveAfter(_e3, _e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveBefore(_e2, _e2);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveAfter(_e3, _e2);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveBefore(_e2, _e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveBefore(_e2, _e4);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e3, _e2, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        {
            final __tmp__0 = _e3;
            final __tmp__1 = _e2;
            _e2 = @:binopAssign __tmp__0;
            _e3 = @:binopAssign __tmp__1;
        };
        @:check2r _l.moveBefore(_e4, _e1);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e4, _e1, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        {
            final __tmp__0 = _e4;
            final __tmp__1 = _e1;
            final __tmp__2 = _e2;
            final __tmp__3 = _e3;
            _e1 = @:binopAssign __tmp__0;
            _e2 = @:binopAssign __tmp__1;
            _e3 = @:binopAssign __tmp__2;
            _e4 = @:binopAssign __tmp__3;
        };
        @:check2r _l.moveAfter(_e4, _e1);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        {
            final __tmp__0 = _e4;
            final __tmp__1 = _e2;
            final __tmp__2 = _e3;
            _e2 = @:binopAssign __tmp__0;
            _e3 = @:binopAssign __tmp__1;
            _e4 = @:binopAssign __tmp__2;
        };
        @:check2r _l.moveAfter(_e2, _e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e3, _e2, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
