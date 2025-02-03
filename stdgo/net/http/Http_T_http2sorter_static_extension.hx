package stdgo.net.http;
class T_http2sorter_static_extension {
    static public function sortStrings(_s:T_http2sorter, _ss:Array<String>):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
        final _ss = ([for (i in _ss) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.sortStrings(_s, _ss);
    }
    static public function keys(_s:T_http2sorter, _h:Header):Array<String> {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
        return [for (i in stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.keys(_s, _h)) i];
    }
    static public function less(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.less(_s, _i, _j);
    }
    static public function swap(_s:T_http2sorter, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.swap(_s, _i, _j);
    }
    static public function len(_s:T_http2sorter):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.net.http.Http_T_http2sorter.T_http2sorter>);
        return stdgo._internal.net.http.Http_T_http2sorter_static_extension.T_http2sorter_static_extension.len(_s);
    }
}
