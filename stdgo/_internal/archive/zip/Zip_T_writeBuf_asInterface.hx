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
class T_writeBuf_asInterface {
    @:keep
    @:tdfield
    public dynamic function _uint64(_v:stdgo.GoUInt64):Void @:_0 __self__.value._uint64(_v);
    @:keep
    @:tdfield
    public dynamic function _uint32(_v:stdgo.GoUInt32):Void @:_0 __self__.value._uint32(_v);
    @:keep
    @:tdfield
    public dynamic function _uint16(_v:stdgo.GoUInt16):Void @:_0 __self__.value._uint16(_v);
    @:keep
    @:tdfield
    public dynamic function _uint8(_v:stdgo.GoUInt8):Void @:_0 __self__.value._uint8(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.zip.Zip_T_writeBufPointer.T_writeBufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
