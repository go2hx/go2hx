package stdgo._internal.encoding.gob;
@:structInit class T_testOverflow___localname___outi32_17183 {
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
