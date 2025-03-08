package stdgo._internal.container.list;
function testIssue6349(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l = stdgo._internal.container.list.List_new_.new_();
        @:check2r _l.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        @:check2r _l.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _e = @:check2r _l.front();
        @:check2r _l.remove(_e);
        if ((@:checkr _e ?? throw "null pointer dereference").value != (stdgo.Go.toInterface((1 : stdgo.GoInt)))) {
            @:check2r _t.errorf(("e.value = %d, want 1" : stdgo.GoString), (@:checkr _e ?? throw "null pointer dereference").value);
        };
        if (({
            final value = @:check2r _e.next();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            @:check2r _t.errorf(("e.Next() != nil" : stdgo.GoString));
        };
        if (({
            final value = @:check2r _e.prev();
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            @:check2r _t.errorf(("e.Prev() != nil" : stdgo.GoString));
        };
    }
