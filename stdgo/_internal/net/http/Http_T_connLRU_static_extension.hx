package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_connLRU_asInterface) class T_connLRU_static_extension {
    @:keep
    @:tdfield
    static public function _len( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>):stdgo.GoInt {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        return ((@:checkr _cl ?? throw "null pointer dereference")._m.length);
    }
    @:keep
    @:tdfield
    static public function _remove( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        {
            var __tmp__ = ((@:checkr _cl ?? throw "null pointer dereference")._m != null && (@:checkr _cl ?? throw "null pointer dereference")._m.exists(_pc) ? { _0 : (@:checkr _cl ?? throw "null pointer dereference")._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), _ele:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                @:check2r (@:checkr _cl ?? throw "null pointer dereference")._ll.remove(_ele);
                if ((@:checkr _cl ?? throw "null pointer dereference")._m != null) (@:checkr _cl ?? throw "null pointer dereference")._m.remove(_pc);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _removeOldest( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>):stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn> {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        var _ele = @:check2r (@:checkr _cl ?? throw "null pointer dereference")._ll.back();
        var _pc = (stdgo.Go.typeAssert(((@:checkr _ele ?? throw "null pointer dereference").value : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>)) : stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>);
        @:check2r (@:checkr _cl ?? throw "null pointer dereference")._ll.remove(_ele);
        if ((@:checkr _cl ?? throw "null pointer dereference")._m != null) (@:checkr _cl ?? throw "null pointer dereference")._m.remove(_pc);
        return _pc;
    }
    @:keep
    @:tdfield
    static public function _add( _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU>, _pc:stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>):Void {
        @:recv var _cl:stdgo.Ref<stdgo._internal.net.http.Http_T_connLRU.T_connLRU> = _cl;
        if (((@:checkr _cl ?? throw "null pointer dereference")._ll == null || ((@:checkr _cl ?? throw "null pointer dereference")._ll : Dynamic).__nil__)) {
            (@:checkr _cl ?? throw "null pointer dereference")._ll = stdgo._internal.container.list.List_new_.new_();
            (@:checkr _cl ?? throw "null pointer dereference")._m = ({
                final x = new stdgo.GoMap.GoRefMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>();
                {};
                cast x;
            } : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>);
        };
        var _ele = @:check2r (@:checkr _cl ?? throw "null pointer dereference")._ll.pushFront(stdgo.Go.toInterface(stdgo.Go.asInterface(_pc)));
        {
            var __tmp__ = ((@:checkr _cl ?? throw "null pointer dereference")._m != null && (@:checkr _cl ?? throw "null pointer dereference")._m.exists(_pc) ? { _0 : (@:checkr _cl ?? throw "null pointer dereference")._m[_pc], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.container.list.List_Element.Element>), _1 : false }), __36497:stdgo.Ref<stdgo._internal.container.list.List_Element.Element> = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                throw stdgo.Go.toInterface(("persistConn was already in LRU" : stdgo.GoString));
            };
        };
        (@:checkr _cl ?? throw "null pointer dereference")._m[_pc] = _ele;
    }
}
