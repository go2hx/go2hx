package stdgo.vendor.golang_org.x.crypto.cryptobyte.asn1;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class Tag {
    public function contextSpecific():Tag {
        var _t = this.__copy__();
        return new Tag(_t.__t__ | _classContextSpecific);
    }
    public function constructed():Tag {
        var _t = this.__copy__();
        return new Tag(_t.__t__ | _classConstructed);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Tag(__t__);
}
final object_IDENTIFIER : Tag = new Tag(((6 : GoUInt8)));
final integer : Tag = new Tag(((2 : GoUInt8)));
final t61string : Tag = new Tag(((20 : GoUInt8)));
final _classConstructed : GoInt64 = ((32 : GoUnTypedInt));
final sequence : Tag = new Tag(new Tag(((16 : GoUnTypedInt)) | _classConstructed).__t__);
final octet_STRING : Tag = new Tag(((4 : GoUInt8)));
final utf8string : Tag = new Tag(((12 : GoUInt8)));
final bit_STRING : Tag = new Tag(((3 : GoUInt8)));
final boolean : Tag = new Tag(((1 : GoUInt8)));
final _classContextSpecific : GoInt64 = ((128 : GoUnTypedInt));
final generalString : Tag = new Tag(((27 : GoUInt8)));
final generalizedTime : Tag = new Tag(((24 : GoUInt8)));
final set : Tag = new Tag(new Tag(((17 : GoUnTypedInt)) | _classConstructed).__t__);
final enum_ : Tag = new Tag(((10 : GoUInt8)));
final printableString : Tag = new Tag(((19 : GoUInt8)));
final null_ : Tag = new Tag(((5 : GoUInt8)));
final utctime : Tag = new Tag(((23 : GoUInt8)));
final ia5string : Tag = new Tag(((22 : GoUInt8)));
class Tag_extension_fields {
    public function constructed(__tmp__):Tag return __tmp__.constructed();
    public function contextSpecific(__tmp__):Tag return __tmp__.contextSpecific();
}
