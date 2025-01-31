package stdgo._internal.text.template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.flag.Flag;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.testing.Testing;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.net.url.Url;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.os.Os;
import stdgo._internal.path.Path;
import stdgo._internal.internal.fmtsort.Fmtsort;
class T__asInterface {
    @:keep
    @:tdfield
    public dynamic function getU():stdgo.Ref<stdgo._internal.text.template.Template_U.U> return @:_0 __self__.value.getU();
    @:keep
    @:tdfield
    public dynamic function myError(_error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.myError(_error);
    @:keep
    @:tdfield
    public dynamic function mAdd(_a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.mAdd(_a, _b);
    @:keep
    @:tdfield
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> return @:_0 __self__.value.copy();
    @:keep
    @:tdfield
    public dynamic function method3(_v:stdgo.AnyInterface):stdgo.GoString return @:_0 __self__.value.method3(_v);
    @:keep
    @:tdfield
    public dynamic function method2(_a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.method2(_a, _b);
    @:keep
    @:tdfield
    public dynamic function method1(_a:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value.method1(_a);
    @:keep
    @:tdfield
    public dynamic function method0():stdgo.GoString return @:_0 __self__.value.method0();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.Template_T_Pointer.T_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
