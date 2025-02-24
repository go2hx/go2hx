package stdgo._internal.container.list;
function testIssue4103(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _l1 = stdgo._internal.container.list.List_new_.new_();
        @:check2r _l1.pushBack(stdgo.Go.toInterface((1 : stdgo.GoInt)));
        @:check2r _l1.pushBack(stdgo.Go.toInterface((2 : stdgo.GoInt)));
        var _l2 = stdgo._internal.container.list.List_new_.new_();
        @:check2r _l2.pushBack(stdgo.Go.toInterface((3 : stdgo.GoInt)));
        @:check2r _l2.pushBack(stdgo.Go.toInterface((4 : stdgo.GoInt)));
        var _e = @:check2r _l1.front();
        @:check2r _l2.remove(_e);
        {
            var _n = (@:check2r _l2.len() : stdgo.GoInt);
            if (_n != ((2 : stdgo.GoInt))) {
                @:check2r _t.errorf(("l2.Len() = %d, want 2" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
        @:check2r _l1.insertBefore(stdgo.Go.toInterface((8 : stdgo.GoInt)), _e);
        {
            var _n = (@:check2r _l1.len() : stdgo.GoInt);
            if (_n != ((3 : stdgo.GoInt))) {
                @:check2r _t.errorf(("l1.Len() = %d, want 3" : stdgo.GoString), stdgo.Go.toInterface(_n));
            };
        };
    }
