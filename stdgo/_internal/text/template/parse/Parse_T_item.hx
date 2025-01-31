package stdgo._internal.text.template.parse;
import stdgo._internal.strings.Strings;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.text.template.parse.Parse_T_item_static_extension.T_item_static_extension) class T_item {
    public var _typ : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType);
    public var _pos : stdgo._internal.text.template.parse.Parse_Pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.text.template.parse.Parse_Pos.Pos);
    public var _val : stdgo.GoString = "";
    public var _line : stdgo.GoInt = 0;
    public function new(?_typ:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType, ?_pos:stdgo._internal.text.template.parse.Parse_Pos.Pos, ?_val:stdgo.GoString, ?_line:stdgo.GoInt) {
        if (_typ != null) this._typ = _typ;
        if (_pos != null) this._pos = _pos;
        if (_val != null) this._val = _val;
        if (_line != null) this._line = _line;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_item(_typ, _pos, _val, _line);
    }
}
