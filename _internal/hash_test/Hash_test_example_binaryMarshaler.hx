package _internal.hash_test;
function example_binaryMarshaler():Void {
        {};
        var _first = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        _first.write((("The tunneling gopher digs downwards, " : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_first) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler)) : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding_BinaryMarshaler.BinaryMarshaler), _1 : false };
        }, _marshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("first does not implement encoding.BinaryMarshaler" : stdgo.GoString)));
        };
        var __tmp__ = _marshaler.marshalBinary(), _state:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("unable to marshal hash:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        var _second = (stdgo._internal.crypto.sha256.Sha256_new_.new_() : stdgo._internal.hash.Hash_Hash.Hash);
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_second) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler)) : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.encoding.Encoding_BinaryUnmarshaler.BinaryUnmarshaler), _1 : false };
        }, _unmarshaler = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("second does not implement encoding.BinaryUnmarshaler" : stdgo.GoString)));
        };
        {
            var _err = (_unmarshaler.unmarshalBinary(_state) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(("unable to unmarshal hash:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        _first.write((("unaware of what he will find." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _second.write((("unaware of what he will find." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt_printf.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface(_first.sum((null : stdgo.Slice<stdgo.GoUInt8>))));
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.bytes.Bytes_equal.equal(_first.sum((null : stdgo.Slice<stdgo.GoUInt8>)), _second.sum((null : stdgo.Slice<stdgo.GoUInt8>)))));
    }
