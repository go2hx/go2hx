package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_finishAsyncByteRead_static_extension.T_finishAsyncByteRead_static_extension) class T_finishAsyncByteRead {
    public var _tw : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>);
    public function new(?_tw:stdgo.Ref<stdgo._internal.net.http.Http_T_transferWriter.T_transferWriter>) {
        if (_tw != null) this._tw = _tw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_finishAsyncByteRead(_tw);
    }
}
