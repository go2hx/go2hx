package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.T_newSessionTicketMsgTLS13_asInterface) class T_newSessionTicketMsgTLS13_static_extension {
    @:keep
    @:tdfield
    static public function _unmarshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>, _data:stdgo.Slice<stdgo.GoUInt8>):Bool {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13> = _m;
        {
            var __tmp__ = ({ _raw : _data } : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13);
            var x = (_m : stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13);
            x._raw = __tmp__?._raw;
            x._lifetime = __tmp__?._lifetime;
            x._ageAdd = __tmp__?._ageAdd;
            x._nonce = __tmp__?._nonce;
            x._label = __tmp__?._label;
            x._maxEarlyData = __tmp__?._maxEarlyData;
        };
        var _s = (_data : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var _extensions:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        if (((((((!@:check2 _s.skip((4 : stdgo.GoInt)) || !@:check2 _s.readUint32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._lifetime)) : Bool) || !@:check2 _s.readUint32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._ageAdd)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint8lengthprefixed._readUint8LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._nonce) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !stdgo._internal.crypto.tls.Tls__readuint16lengthprefixed._readUint16LengthPrefixed((stdgo.Go.setRef(_s) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._label) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : Bool) || !@:check2 _s.readUint16LengthPrefixed((stdgo.Go.setRef(_extensions) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>)) : Bool) || !_s.empty() : Bool)) {
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
                if (__value__ == ((42 : stdgo.GoUInt16))) {
                    if (!@:check2 _extData.readUint32(stdgo.Go.pointer((@:checkr _m ?? throw "null pointer dereference")._maxEarlyData))) {
                        return false;
                    };
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
    static public function _marshal( _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _m:stdgo.Ref<stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13.T_newSessionTicketMsgTLS13> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._raw != null) {
            return { _0 : (@:checkr _m ?? throw "null pointer dereference")._raw, _1 : (null : stdgo.Error) };
        };
        var _b:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder = ({} : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder);
        @:check2 _b.addUint8((4 : stdgo.GoUInt8));
        @:check2 _b.addUint24LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
            @:check2r _b.addUint32((@:checkr _m ?? throw "null pointer dereference")._lifetime);
            @:check2r _b.addUint32((@:checkr _m ?? throw "null pointer dereference")._ageAdd);
            @:check2r _b.addUint8LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._nonce);
            });
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                @:check2r _b.addBytes((@:checkr _m ?? throw "null pointer dereference")._label);
            });
            @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                if (((@:checkr _m ?? throw "null pointer dereference")._maxEarlyData > (0u32 : stdgo.GoUInt32) : Bool)) {
                    @:check2r _b.addUint16((42 : stdgo.GoUInt16));
                    @:check2r _b.addUint16LengthPrefixed(function(_b:stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_builder.Builder>):Void {
                        @:check2r _b.addUint32((@:checkr _m ?? throw "null pointer dereference")._maxEarlyData);
                    });
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
