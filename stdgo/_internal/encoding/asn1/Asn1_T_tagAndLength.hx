package stdgo._internal.encoding.asn1;
import stdgo._internal.math.big.Big;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.time.Time;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf16.Utf16;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
@:structInit @:using(stdgo._internal.encoding.asn1.Asn1_T_tagAndLength_static_extension.T_tagAndLength_static_extension) class T_tagAndLength {
    public var _class : stdgo.GoInt = 0;
    public var _tag : stdgo.GoInt = 0;
    public var _length : stdgo.GoInt = 0;
    public var _isCompound : Bool = false;
    public function new(?_class:stdgo.GoInt, ?_tag:stdgo.GoInt, ?_length:stdgo.GoInt, ?_isCompound:Bool) {
        if (_class != null) this._class = _class;
        if (_tag != null) this._tag = _tag;
        if (_length != null) this._length = _length;
        if (_isCompound != null) this._isCompound = _isCompound;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_tagAndLength(_class, _tag, _length, _isCompound);
    }
}
