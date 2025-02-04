package stdgo._internal.archive.tar;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerGNU_asInterface) class T_headerGNU_static_extension {
    @:keep
    @:tdfield
    static public function _realSize( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((483 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _sparse( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return (((_h.__slice__((386 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (97 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.archive.tar.Tar_t_sparsearray.T_sparseArray);
    }
    @:keep
    @:tdfield
    static public function _changeTime( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((357 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _accessTime( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((345 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _devMinor( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((337 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _devMajor( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((329 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _groupName( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((297 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _userName( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((265 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (32 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _version( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((263 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _magic( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return ((_h.__slice__((257 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (6 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _v7( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU>):stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headergnu.T_headerGNU> = _h;
        return (_h : stdgo.Ref<stdgo._internal.archive.tar.Tar_t_headerv7.T_headerV7>);
    }
}
