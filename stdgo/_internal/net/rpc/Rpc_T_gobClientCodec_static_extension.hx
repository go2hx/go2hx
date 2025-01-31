package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_gobClientCodec_asInterface) class T_gobClientCodec_static_extension {
    @:keep
    @:tdfield
    static public function close( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return (@:checkr _c ?? throw "null pointer dereference")._rwc.close();
    }
    @:keep
    @:tdfield
    static public function readResponseBody( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(_body);
    }
    @:keep
    @:tdfield
    static public function readResponseHeader( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Response.Response>):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        return @:check2r (@:checkr _c ?? throw "null pointer dereference")._dec.decode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
    @:keep
    @:tdfield
    static public function writeRequest( _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec>, _r:stdgo.Ref<stdgo._internal.net.rpc.Rpc_Request.Request>, _body:stdgo.AnyInterface):stdgo.Error {
        @:recv var _c:stdgo.Ref<stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec> = _c;
        var _err = (null : stdgo.Error);
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
            if (_err != null) {
                return _err;
            };
        };
        {
            _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._enc.encode(_body);
            if (_err != null) {
                return _err;
            };
        };
        return _err = @:check2r (@:checkr _c ?? throw "null pointer dereference")._encBuf.flush();
    }
}
