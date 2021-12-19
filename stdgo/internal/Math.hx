package stdgo.internal;

import stdgo.StdGoTypes;
import stdgo.internal.injector.math.Math.HaxeMath.*;

function copysign(_x:GoFloat, _y:GoFloat):GoFloat {
	final _sign:GoUnTypedInt = ((1 : GoUnTypedInt)) << ((63 : GoUnTypedInt));
	return float64frombits((float64bits(_x) & (_sign ^ ((-1 : GoUnTypedInt)))) | (float64bits(_y) & _sign));
}
