package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.debug.dwarf.Dwarf.EnumType_asInterface) class EnumType_static_extension {
    @:keep
    @:tdfield
    static public function string( _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType>):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType> = _t;
        var _s = ("enum" : stdgo.GoString);
        if ((@:checkr _t ?? throw "null pointer dereference").enumName != (stdgo.Go.str())) {
            _s = (_s + (((" " : stdgo.GoString) + (@:checkr _t ?? throw "null pointer dereference").enumName?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + ((" {" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        for (_i => _v in (@:checkr _t ?? throw "null pointer dereference").val) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                _s = (_s + (("; " : stdgo.GoString))?.__copy__() : stdgo.GoString);
            };
            _s = (_s + ((((@:checkr _v ?? throw "null pointer dereference").name + ("=" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((@:checkr _v ?? throw "null pointer dereference").val, (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + (("}" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        return _s?.__copy__();
    }
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType):stdgo.GoInt64 return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function common( __self__:stdgo._internal.debug.dwarf.Dwarf_EnumType.EnumType):stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_CommonType.CommonType> return @:_5 __self__.common();
}
