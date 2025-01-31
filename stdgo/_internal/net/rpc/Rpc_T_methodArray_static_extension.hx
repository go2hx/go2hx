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
@:keep @:allow(stdgo._internal.net.rpc.Rpc.T_methodArray_asInterface) class T_methodArray_static_extension {
    @:keep
    @:tdfield
    static public function swap( _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray = _m;
        {
            final __tmp__0 = _m[(_j : stdgo.GoInt)];
            final __tmp__1 = _m[(_i : stdgo.GoInt)];
            final __tmp__2 = _m;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _m;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function less( _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray = _m;
        return (_m[(_i : stdgo.GoInt)].type._method.name < _m[(_j : stdgo.GoInt)].type._method.name : Bool);
    }
    @:keep
    @:tdfield
    static public function len( _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray):stdgo.GoInt {
        @:recv var _m:stdgo._internal.net.rpc.Rpc_T_methodArray.T_methodArray = _m;
        return (_m.length);
    }
}
