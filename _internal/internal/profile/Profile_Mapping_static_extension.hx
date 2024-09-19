package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Mapping_asInterface) class Mapping_static_extension {
    @:keep
    static public function _key( _m:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>):_internal.internal.profile.Profile_T_mappingKey.T_mappingKey {
        @:recv var _m:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = _m;
        {};
        var _size = (_m.limit - _m.start : stdgo.GoUInt64);
        _size = ((_size + (4096i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _size = (_size - ((_size % (4096i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _key = ({ _size : _size, _offset : _m.offset } : _internal.internal.profile.Profile_T_mappingKey.T_mappingKey);
        if (_m.buildID != (stdgo.Go.str())) {
            _key._buildIDOrFile = _m.buildID?.__copy__();
        } else if (_m.file != (stdgo.Go.str())) {
            _key._buildIDOrFile = _m.file?.__copy__();
        } else {};
        return _key?.__copy__();
    }
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = _p;
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), _p.id);
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (2 : stdgo.GoInt), _p.start);
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (3 : stdgo.GoInt), _p.limit);
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (4 : stdgo.GoInt), _p.offset);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (5 : stdgo.GoInt), _p._fileX);
        _internal.internal.profile.Profile__encodeInt64Opt._encodeInt64Opt(_b, (6 : stdgo.GoInt), _p._buildIDX);
        _internal.internal.profile.Profile__encodeBoolOpt._encodeBoolOpt(_b, (7 : stdgo.GoInt), _p.hasFunctions);
        _internal.internal.profile.Profile__encodeBoolOpt._encodeBoolOpt(_b, (8 : stdgo.GoInt), _p.hasFilenames);
        _internal.internal.profile.Profile__encodeBoolOpt._encodeBoolOpt(_b, (9 : stdgo.GoInt), _p.hasLineNumbers);
        _internal.internal.profile.Profile__encodeBoolOpt._encodeBoolOpt(_b, (10 : stdgo.GoInt), _p.hasInlineFrames);
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping> = _p;
        return _internal.internal.profile.Profile__mappingDecoder._mappingDecoder;
    }
}
