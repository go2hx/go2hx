package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_connLRU_static_extension.T_connLRU_static_extension) class T_connLRU {
    public var _ll : stdgo.Ref<stdgo._internal.container.list.List_List.List> = (null : stdgo.Ref<stdgo._internal.container.list.List_List.List>);
    public var _m : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>> = (null : stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>);
    public function new(?_ll:stdgo.Ref<stdgo._internal.container.list.List_List.List>, ?_m:stdgo.GoMap<stdgo.Ref<stdgo._internal.net.http.Http_T_persistConn.T_persistConn>, stdgo.Ref<stdgo._internal.container.list.List_Element.Element>>) {
        if (_ll != null) this._ll = _ll;
        if (_m != null) this._m = _m;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_connLRU(_ll, _m);
    }
}
