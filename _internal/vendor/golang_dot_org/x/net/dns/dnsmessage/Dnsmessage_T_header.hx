package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header_static_extension.T_header_static_extension) class T_header {
    public var _id : stdgo.GoUInt16 = 0;
    public var _bits : stdgo.GoUInt16 = 0;
    public var _questions : stdgo.GoUInt16 = 0;
    public var _answers : stdgo.GoUInt16 = 0;
    public var _authorities : stdgo.GoUInt16 = 0;
    public var _additionals : stdgo.GoUInt16 = 0;
    public function new(?_id:stdgo.GoUInt16, ?_bits:stdgo.GoUInt16, ?_questions:stdgo.GoUInt16, ?_answers:stdgo.GoUInt16, ?_authorities:stdgo.GoUInt16, ?_additionals:stdgo.GoUInt16) {
        if (_id != null) this._id = _id;
        if (_bits != null) this._bits = _bits;
        if (_questions != null) this._questions = _questions;
        if (_answers != null) this._answers = _answers;
        if (_authorities != null) this._authorities = _authorities;
        if (_additionals != null) this._additionals = _additionals;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_header(_id, _bits, _questions, _answers, _authorities, _additionals);
    }
}
