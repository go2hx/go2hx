package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
class T_inputBytes_asInterface {
    @:keep
    @:tdfield
    public dynamic function _context(_pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag return @:_0 __self__.value._context(_pos);
    @:keep
    @:tdfield
    public dynamic function _index(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return @:_0 __self__.value._index(_re, _pos);
    @:keep
    @:tdfield
    public dynamic function _hasPrefix(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool return @:_0 __self__.value._hasPrefix(_re);
    @:keep
    @:tdfield
    public dynamic function _canCheckPrefix():Bool return @:_0 __self__.value._canCheckPrefix();
    @:keep
    @:tdfield
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return @:_0 __self__.value._step(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_T_inputBytesPointer.T_inputBytesPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
