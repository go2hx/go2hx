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
@:keep @:allow(stdgo._internal.encoding.asn1.Asn1.ObjectIdentifier_asInterface) class ObjectIdentifier_static_extension {
    @:keep
    @:tdfield
    static public function string( _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):stdgo.GoString {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = _oi;
        var _s:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        @:check2 _s.grow((32 : stdgo.GoInt));
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (19 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (_i => _v in _oi) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _s.writeByte((46 : stdgo.GoUInt8));
            };
            @:check2 _s.write(stdgo._internal.strconv.Strconv_appendInt.appendInt(_buf, (_v : stdgo.GoInt64), (10 : stdgo.GoInt)));
        };
        return (@:check2 _s.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function equal( _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier, _other:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier):Bool {
        @:recv var _oi:stdgo._internal.encoding.asn1.Asn1_ObjectIdentifier.ObjectIdentifier = _oi;
        if ((_oi.length) != ((_other.length))) {
            return false;
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_oi.length) : Bool)) {
                if (_oi[(_i : stdgo.GoInt)] != (_other[(_i : stdgo.GoInt)])) {
                    return false;
                };
                _i++;
            };
        };
        return true;
    }
}
