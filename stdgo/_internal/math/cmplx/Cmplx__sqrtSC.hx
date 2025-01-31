package stdgo._internal.math.cmplx;
import stdgo._internal.math.Math;
import stdgo._internal.math.bits.Bits;
var _sqrtSC : stdgo.Slice<stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0> = (new stdgo.Slice<stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0>(11, 11, ...[
({ _in : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__zero._zero, stdgo._internal.math.cmplx.Cmplx__zero._zero), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__zero._zero, stdgo._internal.math.cmplx.Cmplx__zero._zero) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(-stdgo._internal.math.cmplx.Cmplx__zero._zero, stdgo._internal.math.cmplx.Cmplx__zero._zero), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__zero._zero, stdgo._internal.math.cmplx.Cmplx__zero._zero) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128((1 : stdgo.GoFloat64), stdgo._internal.math.cmplx.Cmplx__inf._inf), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__inf._inf) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__nan._nan, stdgo._internal.math.cmplx.Cmplx__inf._inf), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__inf._inf) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128((1 : stdgo.GoFloat64), stdgo._internal.math.cmplx.Cmplx__nan._nan), _want : stdgo._internal.math.cmplx.Cmplx_naN.naN() } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(-stdgo._internal.math.cmplx.Cmplx__inf._inf, (1 : stdgo.GoFloat64)), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__zero._zero, stdgo._internal.math.cmplx.Cmplx__inf._inf) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, (1 : stdgo.GoFloat64)), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__zero._zero) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(-stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__nan._nan), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__nan._nan, stdgo._internal.math.cmplx.Cmplx__inf._inf) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__nan._nan), _want : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__inf._inf, stdgo._internal.math.cmplx.Cmplx__nan._nan) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : new stdgo.GoComplex128(stdgo._internal.math.cmplx.Cmplx__nan._nan, (1 : stdgo.GoFloat64)), _want : stdgo._internal.math.cmplx.Cmplx_naN.naN() } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0),
({ _in : stdgo._internal.math.cmplx.Cmplx_naN.naN(), _want : stdgo._internal.math.cmplx.Cmplx_naN.naN() } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({ _in : new stdgo.GoComplex128(0, 0), _want : new stdgo.GoComplex128(0, 0) } : stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.math.cmplx.Cmplx_T__struct_0.T__struct_0>);
