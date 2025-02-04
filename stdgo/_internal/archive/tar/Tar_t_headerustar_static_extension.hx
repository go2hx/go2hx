package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerUSTAR_asInterface) class T_headerUSTAR_static_extension {
    @:keep
    @:tdfield
    static public function _prefix( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((345 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (155 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _devMinor( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((337 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _devMajor( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((329 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _groupName( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((297 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _userName( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((265 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _version( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((263 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _magic( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return ((_h.__slice__((257 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _v7( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerustar.T_headerUSTAR> = _h;
        return (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
    }
}
