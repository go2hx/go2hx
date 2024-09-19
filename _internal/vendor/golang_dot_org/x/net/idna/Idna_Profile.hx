package _internal.vendor.golang_dot_org.x.net.idna;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile_static_extension.Profile_static_extension) class Profile {
    @:embedded
    public var _options : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options = ({} : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options);
    public function new(?_options:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_options.T_options) {
        if (_options != null) this._options = _options;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Profile(_options);
    }
}
