package stdgo._internal.container.list;
function _checkListLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _l:stdgo.Ref<stdgo._internal.container.list.List_list.List>, _len:stdgo.GoInt):Bool {
        {
            var _n = (@:check2r _l.len() : stdgo.GoInt);
            if (_n != (_len)) {
                @:check2r _t.errorf(("l.Len() = %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_len));
                return false;
            };
        };
        return true;
    }
