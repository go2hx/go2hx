package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_parentStack_asInterface) class T_parentStack_static_extension {
    @:keep
    static public function _push( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack> = _s;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_parents.length) : Bool), _i++, {
                {
                    var _err = (_s._p._writeStart((stdgo.Go.setRef(({ name : ({ local : _parents[(_i : stdgo.GoInt)]?.__copy__() } : stdgo._internal.encoding.xml.Xml_Name.Name) } : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            });
        };
        _s._stack = (_s._stack.__append__(...(_parents : Array<stdgo.GoString>)));
        return (null : stdgo.Error);
    }
    @:keep
    static public function _trim( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack> = _s;
        var _split = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_split < (_parents.length) : Bool) && (_split < (_s._stack.length) : Bool) : Bool), _split++, {
            if (_parents[(_split : stdgo.GoInt)] != (_s._stack[(_split : stdgo.GoInt)])) {
                break;
            };
        });
        {
            var _i = ((_s._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= _split : Bool), _i--, {
                {
                    var _err = (_s._p._writeEnd(({ local : _s._stack[(_i : stdgo.GoInt)]?.__copy__() } : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
            });
        };
        _s._stack = (_s._stack.__slice__(0, _split) : stdgo.Slice<stdgo.GoString>);
        return (null : stdgo.Error);
    }
}
