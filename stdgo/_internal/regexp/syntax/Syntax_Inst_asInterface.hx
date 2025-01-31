package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
class Inst_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function matchEmptyWidth(_before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool return @:_0 __self__.value.matchEmptyWidth(_before, _after);
    @:keep
    @:tdfield
    public dynamic function matchRunePos(_r:stdgo.GoInt32):stdgo.GoInt return @:_0 __self__.value.matchRunePos(_r);
    @:keep
    @:tdfield
    public dynamic function matchRune(_r:stdgo.GoInt32):Bool return @:_0 __self__.value.matchRune(_r);
    @:keep
    @:tdfield
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return @:_0 __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_InstPointer.InstPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
