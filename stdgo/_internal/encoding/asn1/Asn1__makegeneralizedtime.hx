package stdgo._internal.encoding.asn1;
function _makeGeneralizedTime(_t:stdgo._internal.time.Time_time.Time):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (20 : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var __tmp__ = stdgo._internal.encoding.asn1.Asn1__appendgeneralizedtime._appendGeneralizedTime(_dst, _t?.__copy__());
            _dst = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L386"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L387"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : _err };
                _e = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L390"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_dst : stdgo._internal.encoding.asn1.Asn1_t_bytesencoder.T_bytesEncoder)), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
