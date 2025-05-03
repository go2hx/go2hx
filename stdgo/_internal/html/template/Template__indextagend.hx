package stdgo._internal.html.template;
function _indexTagEnd(_s:stdgo.Slice<stdgo.GoUInt8>, _tag:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _res = (0 : stdgo.GoInt);
        var _plen = (stdgo._internal.html.template.Template__specialtagendprefix._specialTagEndPrefix.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L233"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var _i = (stdgo._internal.bytes.Bytes_index.index(_s, stdgo._internal.html.template.Template__specialtagendprefix._specialTagEndPrefix) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L236"
            if (_i == ((-1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L237"
                return _i;
            };
            _s = (_s.__slice__((_i + _plen : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L241"
            if ((((_tag.length) <= (_s.length) : Bool) && stdgo._internal.bytes.Bytes_equalfold.equalFold(_tag, (_s.__slice__(0, (_tag.length)) : stdgo.Slice<stdgo.GoUInt8>)) : Bool)) {
                _s = (_s.__slice__((_tag.length)) : stdgo.Slice<stdgo.GoUInt8>);
                //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L244"
                if ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (stdgo._internal.bytes.Bytes_indexbyte.indexByte(stdgo._internal.html.template.Template__tagendseparators._tagEndSeparators, _s[(0 : stdgo.GoInt)]) != (-1 : stdgo.GoInt)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L245"
                    return (_res + _i : stdgo.GoInt);
                };
                _res = (_res + ((_tag.length)) : stdgo.GoInt);
            };
            _res = (_res + ((_i + _plen : stdgo.GoInt)) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/transition.go#L251"
        return (-1 : stdgo.GoInt);
    }
