package stdgo._internal.archive.tar;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.path.Path;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.archive.tar.Tar.T_headerV7_asInterface) class T_headerV7_static_extension {
    @:keep
    @:tdfield
    static public function _linkName( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((157 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (100 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _typeFlag( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((156 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _chksum( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((148 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _modTime( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((136 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _size( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((124 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (12 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _gid( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((116 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _uid( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((108 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _mode( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((100 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    @:tdfield
    static public function _name( _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _h:stdgo.Ref<stdgo._internal.archive.tar.Tar_T_headerV7.T_headerV7> = _h;
        return ((_h.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__slice__(0, (100 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
    }
}
