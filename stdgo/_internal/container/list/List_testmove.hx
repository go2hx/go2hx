package stdgo._internal.container.list;
function testMove(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        var _e1 = _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e2 = _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e3 = _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        var _e4 = _l.pushBack(stdgo.Go.toInterface((4 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L262"
        _l.moveAfter(_e3, _e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L263"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L264"
        _l.moveBefore(_e2, _e2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L265"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L267"
        _l.moveAfter(_e3, _e2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L268"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L269"
        _l.moveBefore(_e2, _e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L270"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L272"
        _l.moveBefore(_e2, _e4);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L273"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e3, _e2, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        {
            final __tmp__0 = _e3;
            final __tmp__1 = _e2;
            _e2 = @:binopAssign __tmp__0;
            _e3 = @:binopAssign __tmp__1;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L276"
        _l.moveBefore(_e4, _e1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L277"
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
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L280"
        _l.moveAfter(_e4, _e1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L281"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        {
            final __tmp__0 = _e4;
            final __tmp__1 = _e2;
            final __tmp__2 = _e3;
            _e2 = @:binopAssign __tmp__0;
            _e3 = @:binopAssign __tmp__1;
            _e4 = @:binopAssign __tmp__2;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L284"
        _l.moveAfter(_e2, _e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L285"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e3, _e2, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
