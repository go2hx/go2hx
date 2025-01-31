package stdgo._internal.path.filepath;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.sort.Sort;
class T_lazybuf_asInterface {
    @:keep
    @:tdfield
    public dynamic function _string():stdgo.GoString return @:_0 __self__.value._string();
    @:keep
    @:tdfield
    public dynamic function _prepend(_prefix:haxe.Rest<stdgo.GoUInt8>):Void @:_0 __self__.value._prepend(..._prefix);
    @:keep
    @:tdfield
    public dynamic function _append(_c:stdgo.GoUInt8):Void @:_0 __self__.value._append(_c);
    @:keep
    @:tdfield
    public dynamic function _index(_i:stdgo.GoInt):stdgo.GoUInt8 return @:_0 __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.path.filepath.Filepath_T_lazybufPointer.T_lazybufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
