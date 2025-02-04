package stdgo._internal.encoding.xml;
@:structInit @:using(stdgo._internal.encoding.xml.Xml_encoder_static_extension.Encoder_static_extension) class Encoder {
    public var _p : stdgo._internal.encoding.xml.Xml_t_printer.T_printer = ({} : stdgo._internal.encoding.xml.Xml_t_printer.T_printer);
    public function new(?_p:stdgo._internal.encoding.xml.Xml_t_printer.T_printer) {
        if (_p != null) this._p = _p;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Encoder(_p);
    }
}
