package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi16_16677_static_extension.T_testOverflow___localname___outi16_16677_static_extension) class T_testOverflow___localname___outi16_16677 {
    public var maxi : stdgo.GoInt16 = 0;
    public var mini : stdgo.GoInt16 = 0;
    public function new(?maxi:stdgo.GoInt16, ?mini:stdgo.GoInt16) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outi16_16677(maxi, mini);
    }
}
