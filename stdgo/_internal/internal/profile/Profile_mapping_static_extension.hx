package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Mapping_asInterface) class Mapping_static_extension {
    @:keep
    @:tdfield
    static public function _key( _m:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>):stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = _m;
        {};
        var _size = ((@:checkr _m ?? throw "null pointer dereference").limit - (@:checkr _m ?? throw "null pointer dereference").start : stdgo.GoUInt64);
        _size = ((_size + (4096i64 : stdgo.GoUInt64) : stdgo.GoUInt64) - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
        _size = (_size - ((_size % (4096i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
        var _key = ({ _size : _size, _offset : (@:checkr _m ?? throw "null pointer dereference").offset } : stdgo._internal.internal.profile.Profile_t_mappingkey.T_mappingKey);
        if ((@:checkr _m ?? throw "null pointer dereference").buildID != ((stdgo.Go.str() : stdgo.GoString))) {
            _key._buildIDOrFile = (@:checkr _m ?? throw "null pointer dereference").buildID?.__copy__();
        } else if ((@:checkr _m ?? throw "null pointer dereference").file != ((stdgo.Go.str() : stdgo.GoString))) {
            _key._buildIDOrFile = (@:checkr _m ?? throw "null pointer dereference").file?.__copy__();
        } else {};
        return _key?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = _p;
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").iD);
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").start);
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (3 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").limit);
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (4 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").offset);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (5 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._fileX);
        stdgo._internal.internal.profile.Profile__encodeint64opt._encodeInt64Opt(_b, (6 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._buildIDX);
        stdgo._internal.internal.profile.Profile__encodeboolopt._encodeBoolOpt(_b, (7 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").hasFunctions);
        stdgo._internal.internal.profile.Profile__encodeboolopt._encodeBoolOpt(_b, (8 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").hasFilenames);
        stdgo._internal.internal.profile.Profile__encodeboolopt._encodeBoolOpt(_b, (9 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").hasLineNumbers);
        stdgo._internal.internal.profile.Profile__encodeboolopt._encodeBoolOpt(_b, (10 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").hasInlineFrames);
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_mapping.Mapping> = _p;
        return stdgo._internal.internal.profile.Profile__mappingdecoder._mappingDecoder;
    }
}
