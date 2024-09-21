package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Function_asInterface) class Function_static_extension {
    @:keep
    static public function _key( _f:stdgo.Ref<_internal.internal.profile.Profile_Function.Function>):_internal.internal.profile.Profile_T_functionKey.T_functionKey {
        @:recv var _f:stdgo.Ref<_internal.internal.profile.Profile_Function.Function> = _f;
        return (new _internal.internal.profile.Profile_T_functionKey.T_functionKey(_f.startLine, _f.name?.__copy__(), _f.systemName?.__copy__(), _f.filename?.__copy__()) : _internal.internal.profile.Profile_T_functionKey.T_functionKey);
    }
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Function.Function>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Function.Function> = _p;
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), _p.id);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (2 : stdgo.GoInt), _p._nameX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (3 : stdgo.GoInt), _p._systemNameX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (4 : stdgo.GoInt), _p._filenameX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (5 : stdgo.GoInt), _p.startLine);
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Function.Function>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Function.Function> = _p;
        return _internal.internal.profile.Profile__functionDecoder._functionDecoder;
    }
}
