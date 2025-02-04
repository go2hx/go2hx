package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _escapeHTML : Bool = false;
    public var _indentBuf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _indentPrefix : stdgo.GoString = "";
    public var _indentValue : stdgo.GoString = "";
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_err:stdgo.Error, ?_escapeHTML:Bool, ?_indentBuf:stdgo.Slice<stdgo.GoUInt8>, ?_indentPrefix:stdgo.GoString, ?_indentValue:stdgo.GoString) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_escapeHTML != null) this._escapeHTML = _escapeHTML;
        if (_indentBuf != null) this._indentBuf = _indentBuf;
        if (_indentPrefix != null) this._indentPrefix = _indentPrefix;
        if (_indentValue != null) this._indentValue = _indentValue;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_w, _err, _escapeHTML, _indentBuf, _indentPrefix, _indentValue);
    }
}
