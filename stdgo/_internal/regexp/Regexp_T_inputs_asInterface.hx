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
class T_inputs_asInterface {
    @:keep
    @:tdfield
    public dynamic function _init(_r:stdgo._internal.io.Io_RuneReader.RuneReader, _b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):{ var _0 : stdgo._internal.regexp.Regexp_T_input.T_input; var _1 : stdgo.GoInt; } return @:_0 __self__.value._init(_r, _b, _s);
    @:keep
    @:tdfield
    public dynamic function _clear():Void @:_0 __self__.value._clear();
    @:keep
    @:tdfield
    public dynamic function _newReader(_r:stdgo._internal.io.Io_RuneReader.RuneReader):stdgo._internal.regexp.Regexp_T_input.T_input return @:_0 __self__.value._newReader(_r);
    @:keep
    @:tdfield
    public dynamic function _newString(_s:stdgo.GoString):stdgo._internal.regexp.Regexp_T_input.T_input return @:_0 __self__.value._newString(_s);
    @:keep
    @:tdfield
    public dynamic function _newBytes(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo._internal.regexp.Regexp_T_input.T_input return @:_0 __self__.value._newBytes(_b);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_T_inputsPointer.T_inputsPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
