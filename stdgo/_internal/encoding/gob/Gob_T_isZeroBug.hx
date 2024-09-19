package stdgo._internal.encoding.gob;
@:structInit class T_isZeroBug {
    public var t : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var s : stdgo.GoString = "";
    public var i : stdgo.GoInt = 0;
    public var a : stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray = new stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray(2, 2, ...[for (i in 0 ... 2) (0 : stdgo.GoUInt8)]);
    public var f : stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface = ({} : stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface);
    public function new(?t:stdgo._internal.time.Time_Time.Time, ?s:stdgo.GoString, ?i:stdgo.GoInt, ?a:stdgo._internal.encoding.gob.Gob_T_isZeroBugArray.T_isZeroBugArray, ?f:stdgo._internal.encoding.gob.Gob_T_isZeroBugInterface.T_isZeroBugInterface) {
        if (t != null) this.t = t;
        if (s != null) this.s = s;
        if (i != null) this.i = i;
        if (a != null) this.a = a;
        if (f != null) this.f = f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_isZeroBug(t, s, i, a, f);
    }
}
