package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
class T_compiler_asInterface {
    @:keep
    @:tdfield
    public dynamic function _rune(_r:stdgo.Slice<stdgo.GoInt32>, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._rune(_r, _flags);
    @:keep
    @:tdfield
    public dynamic function _empty(_op:stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._empty(_op);
    @:keep
    @:tdfield
    public dynamic function _plus(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._plus(_f1, _nongreedy);
    @:keep
    @:tdfield
    public dynamic function _star(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._star(_f1, _nongreedy);
    @:keep
    @:tdfield
    public dynamic function _loop(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._loop(_f1, _nongreedy);
    @:keep
    @:tdfield
    public dynamic function _quest(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _nongreedy:Bool):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._quest(_f1, _nongreedy);
    @:keep
    @:tdfield
    public dynamic function _alt(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _f2:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._alt(_f1, _f2);
    @:keep
    @:tdfield
    public dynamic function _cat(_f1:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag, _f2:stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._cat(_f1, _f2);
    @:keep
    @:tdfield
    public dynamic function _cap(_arg:stdgo.GoUInt32):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._cap(_arg);
    @:keep
    @:tdfield
    public dynamic function _fail():stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._fail();
    @:keep
    @:tdfield
    public dynamic function _nop():stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._nop();
    @:keep
    @:tdfield
    public dynamic function _inst(_op:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._inst(_op);
    @:keep
    @:tdfield
    public dynamic function _compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag return @:_0 __self__.value._compile(_re);
    @:keep
    @:tdfield
    public dynamic function _init():Void @:_0 __self__.value._init();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_T_compilerPointer.T_compilerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
