package stdgo._internal.encoding.json;
function testMarshalRawMessageValue(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var __0 = (new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), __1 = ((new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), __2 = (((("\"foo\"" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage);
var _rawText = __2, _rawEmpty = __1, _rawNil = __0;
        var _tests = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29>(54, 54, ...[
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)), _want : ("null" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))), _want : ("null" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : ("[null]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : ("[null]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : ("[null]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : ("[null]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : _rawNil } : stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : _rawNil } : stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30>))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : (stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31>))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawNil)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawNil) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519))), _want : ("{}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawNil) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519>))), _want : ("{}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawNil) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573>))), _want : ("{\"M\":null}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : _rawEmpty } : stdgo._internal.encoding.json.Json_t__struct_32.T__struct_32))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : _rawEmpty } : stdgo._internal.encoding.json.Json_t__struct_32.T__struct_32)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_32.T__struct_32>))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ x : (stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_33.T__struct_33))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ x : (stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_33.T__struct_33)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_33.T__struct_33>))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawEmpty)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawEmpty) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519))), _want : ("{}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawEmpty) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519>))), _want : ("{}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawEmpty) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573>))), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)), _want : ("\"foo\"" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))), _want : ("\"foo\"" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef((new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)))]) : stdgo.Slice<stdgo.AnyInterface>)) : stdgo.Ref<stdgo.Slice<stdgo.AnyInterface>>)), _want : ("[\"foo\"]" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : _rawText } : stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : _rawText } : stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_30.T__struct_30>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface(({ m : (stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ m : (stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>) } : stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_31.T__struct_31>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_rawText)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface((stdgo.Go.setRef(({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("M" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>))));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>)) : stdgo.Ref<stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>>)), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawText) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519(_rawText) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t1_23519.T_testMarshalRawMessageValue___localname___T1_23519>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29),
({ _in : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573((stdgo.Go.setRef(_rawText) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>)) : stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_testmarshalrawmessagevalue___localname___t2_23573.T_testMarshalRawMessageValue___localname___T2_23573>))), _want : ("{\"M\":\"foo\"}" : stdgo.GoString), _ok : true } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29)].concat([for (i in 54 ... (54 > 54 ? 54 : 54 : stdgo.GoInt).toBasic()) ({ _in : (null : stdgo.AnyInterface), _want : ("" : stdgo.GoString), _ok : false } : stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_29.T__struct_29>);
        for (_i => _tt in _tests) {
            var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._in), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            {
                var _ok = (_err == null : Bool);
                if (_ok != (_tt._ok)) {
                    if (_err != null) {
                        @:check2r _t.errorf(("test %d, unexpected failure: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    } else {
                        @:check2r _t.errorf(("test %d, unexpected success" : stdgo.GoString), stdgo.Go.toInterface(_i));
                    };
                };
            };
            {
                var _got = ((_b : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_got != (_tt._want)) {
                    @:check2r _t.errorf(("test %d, Marshal(%#v) = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._in, stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
