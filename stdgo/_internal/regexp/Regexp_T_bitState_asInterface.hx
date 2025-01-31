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
class T_bitState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _push(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void @:_0 __self__.value._push(_re, _pc, _pos, _arg);
    @:keep
    @:tdfield
    public dynamic function _shouldVisit(_pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool return @:_0 __self__.value._shouldVisit(_pc, _pos);
    @:keep
    @:tdfield
    public dynamic function _reset(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void @:_0 __self__.value._reset(_prog, _end, _ncap);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_T_bitStatePointer.T_bitStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
