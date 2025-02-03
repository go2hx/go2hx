package stdgo.encoding.xml;
@:structInit @:using(stdgo.encoding.xml.Xml.Encoder_static_extension) abstract Encoder(stdgo._internal.encoding.xml.Xml_Encoder.Encoder) from stdgo._internal.encoding.xml.Xml_Encoder.Encoder to stdgo._internal.encoding.xml.Xml_Encoder.Encoder {
    public var _p(get, set) : T_printer;
    function get__p():T_printer return this._p;
    function set__p(v:T_printer):T_printer {
        this._p = v;
        return v;
    }
    public function new(?_p:T_printer) this = new stdgo._internal.encoding.xml.Xml_Encoder.Encoder(_p);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
