package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_testoverflow___localname___outi32_17183_static_extension.T_testOverflow___localname___outi32_17183_static_extension) class T_testOverflow___localname___outi32_17183 {
    public var maxi : stdgo.GoInt32 = 0;
    public var mini : stdgo.GoInt32 = 0;
    public function new(?maxi:stdgo.GoInt32, ?mini:stdgo.GoInt32) {
        if (maxi != null) this.maxi = maxi;
        if (mini != null) this.mini = mini;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testOverflow___localname___outi32_17183(maxi, mini);
    }
}
