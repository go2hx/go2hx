package stdgo.net.http;
class T_timeoutWriter_static_extension {
    static public function writeHeader(_tw:T_timeoutWriter, _code:StdTypes.Int):Void {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>);
        final _code = (_code : stdgo.GoInt);
        stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.writeHeader(_tw, _code);
    }
    static public function write(_tw:T_timeoutWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.write(_tw, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function header(_tw:T_timeoutWriter):Header {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>);
        return stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.header(_tw);
    }
    static public function push(_tw:T_timeoutWriter, _target:String, _opts:PushOptions):stdgo.Error {
        final _tw = (_tw : stdgo.Ref<stdgo._internal.net.http.Http_T_timeoutWriter.T_timeoutWriter>);
        final _target = (_target : stdgo.GoString);
        final _opts = (_opts : stdgo.Ref<stdgo._internal.net.http.Http_PushOptions.PushOptions>);
        return stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension.push(_tw, _target, _opts);
    }
}
