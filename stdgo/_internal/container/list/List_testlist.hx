package stdgo._internal.container.list;
function testList(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L65"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e = _l.pushFront(stdgo.Go.toInterface(("a" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L69"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L70"
        _l.moveToFront(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L71"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L72"
        _l.moveToBack(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L73"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(1, 1, ...[_e]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L74"
        _l.remove(_e);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L75"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        var _e2 = _l.pushFront(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e1 = _l.pushFront(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        var _e3 = _l.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        var _e4 = _l.pushBack(stdgo.Go.toInterface(("banana" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L82"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L84"
        _l.remove(_e2);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L85"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e3, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L87"
        _l.moveToFront(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L88"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L90"
        _l.moveToFront(_e1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L91"
        _l.moveToBack(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L92"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L94"
        _l.moveToFront(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L95"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L96"
        _l.moveToFront(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L97"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e3, _e1, _e4]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L99"
        _l.moveToBack(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L100"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L101"
        _l.moveToBack(_e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L102"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(3, 3, ...[_e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        _e2 = _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L105"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e2, _e1, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L106"
        _l.remove(_e2);
        _e2 = _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e4);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L108"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L109"
        _l.remove(_e2);
        _e2 = _l.insertBefore(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L111"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L112"
        _l.remove(_e2);
        _e2 = _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e1);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L115"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e2, _e4, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L116"
        _l.remove(_e2);
        _e2 = _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e4);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L118"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e2, _e3]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L119"
        _l.remove(_e2);
        _e2 = _l.insertAfter(stdgo.Go.toInterface((2 : stdgo.GoInt)), _e3);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L121"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(4, 4, ...[_e1, _e4, _e3, _e2]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L122"
        _l.remove(_e2);
        var _sum = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L126"
        {
            var _e = _l.front();
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L127"
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
                _e = _e.next();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L131"
        if (_sum != ((4 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L132"
            _t.errorf(("sum over l = %d, want 4" : stdgo.GoString), stdgo.Go.toInterface(_sum));
        };
        var _next:stdgo.Ref<stdgo._internal.container.list.List_element.Element> = (null : stdgo.Ref<stdgo._internal.container.list.List_element.Element>);
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L137"
        {
            var _e = _l.front();
            while (({
                final value = _e;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _next = _e.next();
//"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L139"
                _l.remove(_e);
                _e = _next;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/container/list/list_test.go#L141"
        stdgo._internal.container.list.List__checklistpointers._checkListPointers(_t, _l, (new stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<stdgo._internal.container.list.List_element.Element>>));
    }
