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
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_serviceArray_asInterface) class T_serviceArray_static_extension {
    @:keep
    @:tdfield
    static public function swap( _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray = _s;
        {
            final __tmp__0 = _s[(_j : stdgo.GoInt)];
            final __tmp__1 = _s[(_i : stdgo.GoInt)];
            final __tmp__2 = _s;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _s;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray = _s;
        return (_s[(_i : stdgo.GoInt)].name < _s[(_j : stdgo.GoInt)].name : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray):stdgo.GoInt {
        @:recv var _s:stdgo._internal.net.rpc.Rpc_T_serviceArray.T_serviceArray = _s;
        return (_s.length);
    }
}
