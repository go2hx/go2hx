package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_wantConnQueue_static_extension.T_wantConnQueue_static_extension) class T_wantConnQueue {
    public var _head : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
    public var _headPos : stdgo.GoInt = 0;
    public var _tail : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>);
    public function new(?_head:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>, ?_headPos:stdgo.GoInt, ?_tail:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_wantConn.T_wantConn>>) {
        if (_head != null) this._head = _head;
        if (_headPos != null) this._headPos = _headPos;
        if (_tail != null) this._tail = _tail;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_wantConnQueue(_head, _headPos, _tail);
    }
}
