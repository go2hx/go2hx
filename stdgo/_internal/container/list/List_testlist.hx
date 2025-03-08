package stdgo._internal.container.list;
function testList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e = @:check2r _l.pushFront(stdgo.Go.toInterface(("a" : stdgo.GoString)));
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToFront(_e);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToBack(_e);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e2 = @:check2r _l.pushFront(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e1 = @:check2r _l.pushFront(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e3 = @:check2r _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        var _e4 = @:check2r _l.pushBack(stdgo.Go.toInterface(("banana" : stdgo.GoString)));
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToFront(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToFront(_e1);
        @:check2r _l.moveToBack(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToFront(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToFront(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToBack(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.moveToBack(_e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        _e2 = @:check2r _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e1);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e2, _e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        _e2 = @:check2r _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e4);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        _e2 = @:check2r _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        _e2 = @:check2r _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e1);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        _e2 = @:check2r _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e4);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        _e2 = @:check2r _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e3);
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e3, _e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        @:check2r _l.remove(_e2);
        var _sum = (0 : stdgo.GoInt);
        {
            var _e = @:check2r _l.front();
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _e ?? throw "null pointer dereference").value : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
                    } catch(_) {
                        { _0 : (0 : stdgo.GoInt), _1 : false };
                    }, _i = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _sum = (_sum + (_i) : stdgo.GoInt);
                    };
                };
                _e = @:check2r _e.next();
            };
        };
        if (_sum != ((4 : stdgo.GoInt))) {
            @:check2r _t.errorf(("sum over l = %d, want 4" : stdgo.GoString), stdgo.Go.toInterface(_sum));
        };
        var _next:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        {
            var _e = @:check2r _l.front();
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _next = @:check2r _e.next();
@:check2r _l.remove(_e);
                _e = _next;
            };
        };
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
