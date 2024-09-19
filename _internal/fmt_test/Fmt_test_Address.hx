package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
@:structInit class Address {
    public var city : stdgo.GoString = "";
    public var state : stdgo.GoString = "";
    public var country : stdgo.GoString = "";
    public function new(?city:stdgo.GoString, ?state:stdgo.GoString, ?country:stdgo.GoString) {
        if (city != null) this.city = city;
        if (state != null) this.state = state;
        if (country != null) this.country = country;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Address(city, state, country);
    }
}
