package stdgo.encoding.xml;
class T_parentStack_static_extension {
    static public function _push(_s:T_parentStack, _parents:Array<String>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>);
        final _parents = ([for (i in _parents) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.xml.Xml_T_parentStack_static_extension.T_parentStack_static_extension._push(_s, _parents);
    }
    static public function _trim(_s:T_parentStack, _parents:Array<String>):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>);
        final _parents = ([for (i in _parents) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.encoding.xml.Xml_T_parentStack_static_extension.T_parentStack_static_extension._trim(_s, _parents);
    }
}
