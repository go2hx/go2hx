package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Function_asInterface) class Function_static_extension {
    @:keep
    @:tdfield
    static public function _key( _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>):stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey {
        @:recv var _f:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = _f;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L374"
        return (new stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey((@:checkr _f ?? throw "null pointer dereference").startLine, (@:checkr _f ?? throw "null pointer dereference").name?.__copy__(), (@:checkr _f ?? throw "null pointer dereference").systemName?.__copy__(), (@:checkr _f ?? throw "null pointer dereference").filename?.__copy__()) : stdgo._internal.internal.profile.Profile_t_functionkey.T_functionKey);
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L442"
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").iD);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L443"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._nameX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L444"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._systemNameX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L445"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (4 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._filenameX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L446"
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (5 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").startLine);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_function.Function> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L438"
        return stdgo._internal.internal.profile.Profile__functiondecoder._functionDecoder;
    }
}
