package stdgo._internal.encoding.xml;
function newTokenDecoder(_t:stdgo._internal.encoding.xml.Xml_tokenreader.TokenReader):stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder> {
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_t) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>), _1 : false };
            }, _d = __tmp__._0, _ok = __tmp__._1;
            if (_ok) {
                return _d;
            };
        };
        var _d = (stdgo.Go.setRef(({ _ns : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _t : _t, _nextByte : (-1 : stdgo.GoInt), _line : (1 : stdgo.GoInt), strict : true } : stdgo._internal.encoding.xml.Xml_decoder.Decoder)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_decoder.Decoder>);
        return _d;
    }
