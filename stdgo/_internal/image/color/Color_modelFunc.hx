package stdgo._internal.image.color;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.fmt.Fmt;
function modelFunc(_f:stdgo._internal.image.color.Color_Color.Color -> stdgo._internal.image.color.Color_Color.Color):stdgo._internal.image.color.Color_Model.Model {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc(_f) : stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc)) : stdgo.Ref<stdgo._internal.image.color.Color_T_modelFunc.T_modelFunc>));
    }
