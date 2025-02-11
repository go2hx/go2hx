package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_encryptedExtensionsMsg_asInterface) class T_encryptedExtensionsMsg_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg);
            x._raw = __tmp__?._raw;
            x._alpnProtocol = __tmp__?._alpnProtocol;
            x._quicTransportParameters = __tmp__?._quicTransportParameters;
            x._earlyData = __tmp__?._earlyData;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.empty() : Bool)) {
            return false;
        };
        while (!_extensions.empty()) {
            var _extension:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
            var _extension__pointer__ = stdgo.Go.pointer(_extension);
            var _extData:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
            if ((!@:check2 _extensions.readUint16(_extension__pointer__) || !@:check2 _extensions.readUint16LengthPrefixed((stdgo.Go.setRef(_extData) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool)) {
                return false;
            };
            {
                final __value__ = _extension;
                if (__value__ == ((16 : stdgo.GoUInt16))) {
                    var _protoList:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if ((!@:check2 _extData.readUint16LengthPrefixed((stdgo.Go.setRef(_protoList) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _protoList.empty() : Bool)) {
                        return false;
                    };
                    var _proto:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                    if (((!@:check2 _protoList.readUint8LengthPrefixed((stdgo.Go.setRef(_proto) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) || _proto.empty() : Bool) || !_protoList.empty() : Bool)) {
                        return false;
                    };
                    (@:checkr _m ?? throw "null pointer dereference")._alpnProtocol = (_proto : stdgo.GoString)?.__copy__();
                } else if (__value__ == ((57 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters = (new stdgo.Slice<stdgo.GoUInt8>((_extData.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (!@:check2 _extData.copyBytes((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters)) {
                        return false;
                    };
                } else if (__value__ == ((42 : stdgo.GoUInt16))) {
                    (@:checkr _m ?? throw "null pointer dereference")._earlyData = true;
                } else {
                    continue;
                };
            };
            if (!_extData.empty()) {
                return false;
            };
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg.T_encryptedExtensionsMsg> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((8 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                if ((((@:checkr _m ?? throw "null pointer dereference")._alpnProtocol.length) > (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _b.addUint16((16 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                            @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                                @:check2r _b.addBytes(((@:checkr _m ?? throw "null pointer dereference")._alpnProtocol : stdgo.Slice<stdgo.GoUInt8>));
                            });
                        });
                    });
                };
                if ((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters != null) {
                    @:check2r _b.addUint16((57 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._quicTransportParameters);
                    });
                };
                if ((@:checkr _m ?? throw "null pointer dereference")._earlyData) {
                    @:check2r _b.addUint16((42 : stdgo.GoUInt16));
                    @:check2r _b.addUint16((0 : stdgo.GoUInt16));
                };
            });
        });
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = @:check2 _b.bytes();
            (@:checkr _m ?? throw "null pointer dereference")._raw = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : _err };
    }
}
