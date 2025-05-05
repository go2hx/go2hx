package stdgo._internal.encoding.json;
function _stringEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L570"
        if ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) {
            var _numStr = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L574"
            if (_numStr == ((stdgo.Go.str() : stdgo.GoString))) {
                _numStr = ("0" : stdgo.GoString);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L577"
            if (!stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_numStr?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L578"
                _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal %q" : stdgo.GoString), stdgo.Go.toInterface(_numStr)));
            };
            var _b = _e.availableBuffer();
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(...(_numStr : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L584"
            _e.write(_b);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L585"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L587"
        if (_opts._quoted) {
            var _b = stdgo._internal.encoding.json.Json__appendstring._appendString((null : stdgo.Slice<stdgo.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L589"
            _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), _b, false));
        } else {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L591"
            _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(_e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML));
        };
    }
