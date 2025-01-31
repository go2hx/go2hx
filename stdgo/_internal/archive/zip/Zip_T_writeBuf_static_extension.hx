package stdgo._internal.archive.zip;
import stdgo._internal.internal.godebug.Godebug;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.time.Time;
import stdgo._internal.strings.Strings;
import stdgo._internal.path.Path;
import stdgo._internal.compress.flate.Flate;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.encoding.binary.Binary;
@:keep @:allow(stdgo._internal.archive.zip.Zip.T_writeBuf_asInterface) class T_writeBuf_static_extension {
    @:keep
    @:tdfield
    static public function _uint64( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf>, _v:stdgo.GoUInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint64((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf)).__slice__((8 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint32( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf>, _v:stdgo.GoUInt32):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint32((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf)).__slice__((4 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint16( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf>, _v:stdgo.GoUInt16):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf> = _b;
        stdgo._internal.encoding.binary.Binary_littleEndian.littleEndian.putUint16((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf), _v);
        (_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf)).__slice__((2 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf));
    }
    @:keep
    @:tdfield
    static public function _uint8( _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf>, _v:stdgo.GoUInt8):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf> = _b;
        ((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf))[(0 : stdgo.GoInt)] = _v;
        (_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf).__setData__((((_b : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf)).__slice__((1 : stdgo.GoInt)) : stdgo._internal.archive.zip.Zip_T_writeBuf.T_writeBuf));
    }
}
