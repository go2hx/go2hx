package stdgo._internal.encoding.asn1;
function _makeNumericString(_s:stdgo.GoString):{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } {
        var _e = (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L340"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L341"
                if (!stdgo._internal.encoding.asn1.Asn1__isnumeric._isNumeric(_s[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L342"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : (null : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder), _1 : stdgo.Go.asInterface((new stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError(("NumericString contains invalid character" : stdgo.GoString)) : stdgo._internal.encoding.asn1.Asn1_structuralerror.StructuralError)) };
                        _e = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/asn1/marshal.go#L346"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.encoding.asn1.Asn1_t_encoder.T_encoder; var _1 : stdgo.Error; } = { _0 : stdgo.Go.asInterface((_s : stdgo._internal.encoding.asn1.Asn1_t_stringencoder.T_stringEncoder)), _1 : (null : stdgo.Error) };
            _e = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
