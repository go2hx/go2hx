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
function newClientWithCodec(_codec:stdgo._internal.net.rpc.Rpc_ClientCodec.ClientCodec):stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client> {
        var _client = (stdgo.Go.setRef(({ _codec : _codec, _pending : (({
            final x = new stdgo.GoMap.GoUInt64Map<stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) : stdgo.GoMap<stdgo.GoUInt64, stdgo.Ref<stdgo._internal.net.rpc.Rpc_Call.Call>>) } : stdgo._internal.net.rpc.Rpc_Client.Client)) : stdgo.Ref<stdgo._internal.net.rpc.Rpc_Client.Client>);
        stdgo.Go.routine(() -> @:check2r _client._input());
        return _client;
    }
