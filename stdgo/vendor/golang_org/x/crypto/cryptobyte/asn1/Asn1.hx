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
@:named @:using(vendor.golang_org.x.crypto.cryptobyte.asn1.Asn1.Tag_static_extension) typedef Tag = GoUInt8;
@:keep class Tag_static_extension {
    /**
        // ContextSpecific returns t with the context-specific class bit set.
    **/
    @:keep
    public static function contextSpecific( _t:Tag):Tag {
        return _t | ((128 : GoUInt8));
    }
    /**
        // Constructed returns t with the constructed class bit set.
    **/
    @:keep
    public static function constructed( _t:Tag):Tag {
        return _t | ((32 : GoUInt8));
    }
}
class Tag_wrapper {
    /**
        // ContextSpecific returns t with the context-specific class bit set.
    **/
    @:keep
    public var contextSpecific : () -> Tag = null;
    /**
        // Constructed returns t with the constructed class bit set.
    **/
    @:keep
    public var constructed : () -> Tag = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Tag;
}
