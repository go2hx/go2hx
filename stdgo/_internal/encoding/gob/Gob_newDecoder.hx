package stdgo._internal.encoding.gob;
function newDecoder(_r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> {
        var _dec = (stdgo.Go.setRef(({} : stdgo._internal.encoding.gob.Gob_Decoder.Decoder)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r) : stdgo._internal.io.Io_ByteReader.ByteReader)) : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo._internal.io.Io_ByteReader.ByteReader), _1 : false };
            }, __8 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                _r = stdgo.Go.asInterface(stdgo._internal.bufio.Bufio_newReader.newReader(_r));
            };
        };
        _dec._r = _r;
        _dec._wireType = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_wireType.T_wireType>>);
        _dec._decoderCache = ({
            final x = new stdgo.GoMap.GoObjectMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>();
            x.t = new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.reflect.Reflect_Type_.Type_", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }));
            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>);
            {};
            cast x;
        } : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>>);
        _dec._ignorerCache = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>);
            {};
            x;
        } : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>>>);
        _dec._countBuf = (new stdgo.Slice<stdgo.GoUInt8>((9 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        return _dec;
    }
